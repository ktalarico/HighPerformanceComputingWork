#ifndef PERFMON_GROUP_TYPES_H
#define PERFMON_GROUP_TYPES_H


typedef enum {
    _NOGROUP = 0,

    BRANCH,

    CACHE,

    CPI,

    DATA,

    ENERGY,

    FLOPS_AVX,

    FLOPS_DP,

    FLOPS_SP,

    FLOPS_X87,

    FPU_EXCEPTION,

    ICACHE,

    L2,

    L2CACHE,

    L3,

    L3CACHE,

    LINKS,

    MEM,

    NUMA,

    NUMA2,

    PAIRING,

    READ_MISS_RATIO,

    SCHEDULER,

    TLB,

    VECTOR,

    VECTOR2,

    VIEW,

    VPU_FILL_RATIO_DBL,

    VPU_PAIRING,

    VPU_READ_MISS_RATIO,

    VPU_WRITE_MISS_RATIO,

    WRITE_MISS_RATIO,

    MAXNUMGROUPS
    } PerfmonGroup;

#endif
