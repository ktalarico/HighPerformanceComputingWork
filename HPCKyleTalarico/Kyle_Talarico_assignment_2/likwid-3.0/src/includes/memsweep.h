/*
 * =======================================================================================
 *
 *      Filename:  memsweep.h
 *
 *      Description:  Header File memsweep Module. 
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

#ifndef MEMSWEEP_H
#define MEMSWEEP_H

#include <types.h>

extern void memsweep_setMemoryFraction(uint64_t fraction);
extern void memsweep_node(void);
extern void memsweep_domain(int domainId);
extern void memsweep_threadGroup(int* processorList, int numberOfProcessors);

#endif /* MEMSWEEP_H */

