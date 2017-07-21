/*
 * =======================================================================================
 *
 *      Filename:  memsweep.c
 *
 *      Description:  Implementation of sweeper module.
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
#include <sys/mman.h>

#include <error.h>
#include <types.h>
#include <memsweep.h>
#include <numa.h>
#include <affinity.h>

/* #####   EXPORTED VARIABLES   ########################################### */


/* #####   MACROS  -  LOCAL TO THIS SOURCE FILE   ######################### */


/* #####   VARIABLES  -  LOCAL TO THIS SOURCE FILE   ###################### */

static uint64_t  memoryFraction = 80ULL;


/* #####   FUNCTION DEFINITIONS  -  LOCAL TO THIS SOURCE FILE   ########### */

static void* 
allocateOnNode(size_t size, int domainId)
{
	char *ptr; 

	ptr = mmap(0, size, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, 0, 0);  

	if (ptr == (char *)-1)
    {
        ERROR;
    }

    numa_membind(ptr, size, domainId);

    return ptr;
}

static void 
initMemory(size_t size, char* ptr, int domainId)
{
    affinity_pinProcess(numa_info.nodes[domainId].processors[0]);

    for (size_t i=0; i < size; i += PAGE_ALIGNMENT)
    {
        ptr[i] = (char) 0xEF;
    }
}

static int
findProcessor(uint32_t nodeId, uint32_t coreId)
{
    int i;

    for (i=0; i<numa_info.nodes[nodeId].numberOfProcessors; i++)
    {
        if (numa_info.nodes[nodeId].processors[i] == coreId)
        {
            return 1;
        }
    }
    return 0;
}




/* #####   FUNCTION DEFINITIONS  -  EXPORTED FUNCTIONS   ################## */

void
memsweep_setMemoryFraction(uint64_t fraction)
{
    memoryFraction = fraction;
}


void
memsweep_node(void)
{
    for ( int i=0; i < numa_info.numberOfNodes; i++)
    {
        memsweep_domain(i);
    }
}


void
memsweep_domain(int domainId)
{
    char* ptr = NULL;
    size_t size = numa_info.nodes[domainId].totalMemory * 1024ULL * memoryFraction / 100ULL;
    printf("Sweeping domain %d: Using %g MB of %g MB\n",
            domainId,
            size / (1024.0 * 1024.0),
            numa_info.nodes[domainId].totalMemory/ 1024.0);
    ptr = (char*) allocateOnNode(size, domainId);
    initMemory(size, ptr, domainId);
    munmap(ptr, size);
}

void
memsweep_threadGroup(int* processorList, int numberOfProcessors)
{
    uint32_t i;
    int j;
    int ret=0;
    int numberOfNodes = 0;
    unsigned long mask = 0UL;

    for (i=0; i<numa_info.numberOfNodes; i++)
    {
        for (j=0; j<numberOfProcessors; j++)
        {
            if (findProcessor(i,processorList[j]))
            {
                memsweep_domain(i);
                break;
            }
        }
    }
}




