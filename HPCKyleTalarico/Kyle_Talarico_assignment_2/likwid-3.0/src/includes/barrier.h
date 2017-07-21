/*
 * =======================================================================================
 *
 *      Filename:  barrier.h
 *
 *      Description:  Header File barrier Module
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

#ifndef BARRIER_H
#define BARRIER_H

#include <types.h>

/**
 * @brief  Initialize the barrier module
 * @param  numberOfThreads The total number of threads in the barrier
 */
extern void barrier_init(int numberOfGroups);

/**
 * @brief  Register a thread for a barrier
 * @param  threadId The id of the thread to register
 */
extern int barrier_registerGroup(int numThreads);
extern void barrier_registerThread(BarrierData* barr, int groupsId, int threadId);

/**
 * @brief  Synchronize threads
 * @param  threadId The id of the calling thread
 * @param  numberOfThreads Total number of threads in the barrier
 */
extern void  barrier_synchronize(BarrierData* barr);


#endif /*BARRIER_H*/
