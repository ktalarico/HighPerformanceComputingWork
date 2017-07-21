/*
 * =======================================================================================
 *
 *      Filename:  allocator.c
 *
 *      Description:  Implementation of allocator module.
 *
 *      Version:   3.0
 *      Released:  29.11.2012
 *
 *      Author:  Jan Treibig (jt), jan.treibig@gmail.com
 *      Project:  likwid
 *
 *      Copyright (C) 2012 Jan Treibig 
 *
 *      This program is free software: you can redistribute it and/or modify it under
 *      the terms of the GNU General Public License as published by the Free Software
 *      Foundation, either version 3 of the License, or (at your option) any later
 *      version.
 *
 *      This program is distributed in the hope that it will be useful, but WITHOUT ANY
 *      WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
 *      PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 *      You should have received a copy of the GNU General Public License along with
 *      this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * =======================================================================================
 */

/* #####   HEADER FILE INCLUDES   ######################################### */
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include <error.h>
#include <types.h>
#include <allocator.h>
#include <affinity.h>

/* #####   EXPORTED VARIABLES   ########################################### */


/* #####   MACROS  -  LOCAL TO THIS SOURCE FILE   ######################### */



/* #####   VARIABLES  -  LOCAL TO THIS SOURCE FILE   ###################### */

static int numberOfAllocatedVectors = 0;
static void** allocations;


/* #####   FUNCTION DEFINITIONS  -  LOCAL TO THIS SOURCE FILE   ########### */


/* #####   FUNCTION DEFINITIONS  -  EXPORTED FUNCTIONS   ################## */

void
allocator_init(int numVectors)
{
    allocations = (void**) malloc(numVectors * sizeof(void*));
}


void
allocator_finalize()
{
    int i;

    for (i=0; i<numberOfAllocatedVectors; i++)
    {
        free(allocations[i]);
    }
}

void
allocator_allocateVector(
        void** ptr,
        int alignment,
        uint64_t size,
        int offset,
        DataType type,
        bstring domainString)
{
    size_t bytesize = 0;
    const AffinityDomain* domain;
    int errorCode;

    switch ( type )
    {
        case SINGLE:
            bytesize = (size+offset) * sizeof(float);
            break;

        case DOUBLE:
            bytesize = (size+offset) * sizeof(double);
            break;
    }

    errorCode =  posix_memalign(ptr, alignment, bytesize);

    if (errorCode)
    {
        if (errorCode == EINVAL) 
        {
            fprintf(stderr,
                    "Alignment parameter is not a power of two\n");
            exit(EXIT_FAILURE);
        }
        if (errorCode == ENOMEM) 
        {
            fprintf(stderr,
                    "Insufficient memory to fulfill the request\n");
            exit(EXIT_FAILURE);
        }
    }

    if ((*ptr) == NULL)
    {
            fprintf(stderr, "posix_memalign failed!\n");
            exit(EXIT_FAILURE);

    }

    allocations[numberOfAllocatedVectors] = *ptr;
    numberOfAllocatedVectors++;
    domain = affinity_getDomain(domainString);
    affinity_pinProcess(domain->processorList[0]);

    printf("Allocate: Process running on core %d - Vector length %llu Offset %d\n",
            affinity_processGetProcessorId(),
            size,
            offset);

    switch ( type )
    {
        case SINGLE:
            {
                float* sptr = (float*) (*ptr);
                sptr += offset;

                for ( uint64_t i=0; i < size; i++ )
                {
                    sptr[i] = 0.0;
                }
                *ptr = (void*) sptr;

            }
            break;

        case DOUBLE:
            {
                double* dptr = (double*) (*ptr);
                dptr += offset;

                for ( uint64_t i=0; i < size; i++ )
                {
                    dptr[i] = 0.0;
                }
                *ptr = (void*) dptr;
            }
            break;
    }
}

