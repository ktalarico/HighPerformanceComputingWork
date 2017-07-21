/* GENERATED FILE: DO NOTE EDIT */

#define NUM_GROUPS_SANDYBRIDGE 11

static PerfmonGroupMap sandybridge_group_map[NUM_GROUPS_SANDYBRIDGE] = {

    {"BRANCH",BRANCH,"Branch prediction miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,BR_INST_RETIRED_ALL_BRANCHES:PMC0,BR_MISP_RETIRED_ALL_BRANCHES:PMC1"},

    {"DATA",DATA,"Load to store ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,MEM_UOP_RETIRED_LOADS:PMC0,MEM_UOP_RETIRED_STORES:PMC1"},

    {"ENERGY",ENERGY,"Power and Energy consumption","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,PWR_PKG_ENERGY:PWR0"},

    {"FLOPS_AVX",FLOPS_AVX,"Packed AVX MFlops/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,FP_256_PACKED_SINGLE:PMC0,FP_256_PACKED_DOUBLE:PMC1"},

    {"FLOPS_DP",FLOPS_DP,"Double Precision MFlops/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,FP_COMP_OPS_EXE_SSE_FP_PACKED_DOUBLE:PMC0,FP_COMP_OPS_EXE_SSE_FP_SCALAR_DOUBLE:PMC1"},

    {"FLOPS_SP",FLOPS_SP,"Single Precision MFlops/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,FP_COMP_OPS_EXE_SSE_FP_PACKED_SINGLE:PMC0,FP_COMP_OPS_EXE_SSE_FP_SCALAR_SINGLE:PMC1"},

    {"L2",L2,"L2 cache bandwidth in MBytes/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,L1D_REPLACEMENT:PMC0,L1D_M_EVICT:PMC1"},

    {"L2CACHE",L2CACHE,"L2 cache miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,L2_TRANS_ALL_REQUESTS:PMC0,L2_RQSTS_MISS:PMC1"},

    {"L3",L3,"L3 cache bandwidth in MBytes/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,L2_LINES_IN_ALL:PMC0,L2_LINES_OUT_DEMAND_DIRTY:PMC1"},

    {"MEM",MEM,"Main memory bandwidth in MBytes/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,CAS_COUNT_RD:MBOX0C0,CAS_COUNT_WR:MBOX1C0,CAS_COUNT_RD:MBOX0C1,CAS_COUNT_WR:MBOX1C1,CAS_COUNT_RD:MBOX0C2,CAS_COUNT_WR:MBOX1C2,CAS_COUNT_RD:MBOX0C3,CAS_COUNT_WR:MBOX1C3"},

    {"TLB",TLB,"TLB miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,DTLB_LOAD_MISSES_CAUSES_A_WALK:PMC0"},

};

void
perfmon_printDerivedMetricsSandybridge(PerfmonGroup group)
{
    int threadId;
    double time = rdtscTime;
    double inverseClock = 1.0 /(double) timer_getCpuClock();
    PerfmonResultTable tableData;
    int numRows;
    int numColumns = perfmon_numThreads;
    bstring label;
    bstrList* fc;
    double** stat;
    double tmpValue;
    uint64_t cpi_instr = 0;
    uint64_t cpi_cyc  = 0;
    int cpi_index = 0;

    switch ( group ) 
    {

        case BRANCH:
            numRows = 8;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,Branch rate);

            bstrListAdd(fc,6,Branch misprediction rate);

            bstrListAdd(fc,7,Branch misprediction ratio);

            bstrListAdd(fc,8,Instructions per branch);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC0")/perfmon_getResult(threadId,"PMC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[7].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[7].value[threadId] = 0.0;
                }

                stat[7][0] += (double) tableData.rows[7].value[threadId];

                stat[7][1] =  MAX(stat[7][1],(double) tableData.rows[7].value[threadId]);
                stat[7][2] =  MIN(stat[7][2],(double) tableData.rows[7].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case DATA:
            numRows = 5;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,Load to Store ratio);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case ENERGY:
            numRows = 6;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,Energy [J]);

            bstrListAdd(fc,6,Power [W]);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time ;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PWR0") ;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PWR0")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case FLOPS_AVX:
            numRows = 6;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,SP MFlops/s);

            bstrListAdd(fc,6,DP MFlops/s);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")*8.0)/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC1")*4.0)/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case FLOPS_DP:
            numRows = 7;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,MFlops/s);

            bstrListAdd(fc,6,Packed MUOPS/s);

            bstrListAdd(fc,7,Scalar MUOPS/s);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")*2.0+perfmon_getResult(threadId,"PMC1"))/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case FLOPS_SP:
            numRows = 7;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,MFlops/s);

            bstrListAdd(fc,6,Packed MUOPS/s);

            bstrListAdd(fc,7,Scalar MUOPS/s);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")*4.0+perfmon_getResult(threadId,"PMC1"))/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case L2:
            numRows = 8;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,L2 Load [MBytes/s]);

            bstrListAdd(fc,6,L2 Evict [MBytes/s]);

            bstrListAdd(fc,7,L2 bandwidth [MBytes/s]);

            bstrListAdd(fc,8,L2 data volume [GBytes]);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0;
                if (!isnan(tmpValue))
                {
                    tableData.rows[7].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[7].value[threadId] = 0.0;
                }

                stat[7][0] += (double) tableData.rows[7].value[threadId];

                stat[7][1] =  MAX(stat[7][1],(double) tableData.rows[7].value[threadId]);
                stat[7][2] =  MIN(stat[7][2],(double) tableData.rows[7].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case L2CACHE:
            numRows = 7;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,L2 request rate);

            bstrListAdd(fc,6,L2 miss rate);

            bstrListAdd(fc,7,L2 miss ratio);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case L3:
            numRows = 8;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,L3 Load [MBytes/s]);

            bstrListAdd(fc,6,L3 Evict [MBytes/s]);

            bstrListAdd(fc,7,L3 bandwidth [MBytes/s]);

            bstrListAdd(fc,8,L3 data volume [GBytes]);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0;
                if (!isnan(tmpValue))
                {
                    tableData.rows[7].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[7].value[threadId] = 0.0;
                }

                stat[7][0] += (double) tableData.rows[7].value[threadId];

                stat[7][1] =  MAX(stat[7][1],(double) tableData.rows[7].value[threadId]);
                stat[7][2] =  MIN(stat[7][2],(double) tableData.rows[7].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case MEM:
            numRows = 8;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,Memory Read BW [MBytes/s]);

            bstrListAdd(fc,6,Memory Write BW [MBytes/s]);

            bstrListAdd(fc,7,Memory BW [MBytes/s]);

            bstrListAdd(fc,8,Memory data volume [GBytes]);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX0C1")+perfmon_getResult(threadId,"MBOX0C2")+perfmon_getResult(threadId,"MBOX0C3"))*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"MBOX1C1")+perfmon_getResult(threadId,"MBOX1C2")+perfmon_getResult(threadId,"MBOX1C3"))*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[5].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[5].value[threadId] = 0.0;
                }

                stat[5][0] += (double) tableData.rows[5].value[threadId];

                stat[5][1] =  MAX(stat[5][1],(double) tableData.rows[5].value[threadId]);
                stat[5][2] =  MIN(stat[5][2],(double) tableData.rows[5].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX0C1")+perfmon_getResult(threadId,"MBOX0C2")+perfmon_getResult(threadId,"MBOX0C3")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"MBOX1C1")+perfmon_getResult(threadId,"MBOX1C2")+perfmon_getResult(threadId,"MBOX1C3"))*64.0/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[6].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[6].value[threadId] = 0.0;
                }

                stat[6][0] += (double) tableData.rows[6].value[threadId];

                stat[6][1] =  MAX(stat[6][1],(double) tableData.rows[6].value[threadId]);
                stat[6][2] =  MIN(stat[6][2],(double) tableData.rows[6].value[threadId]);

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX0C1")+perfmon_getResult(threadId,"MBOX0C2")+perfmon_getResult(threadId,"MBOX0C3")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"MBOX1C1")+perfmon_getResult(threadId,"MBOX1C2")+perfmon_getResult(threadId,"MBOX1C3"))*64.0;
                if (!isnan(tmpValue))
                {
                    tableData.rows[7].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[7].value[threadId] = 0.0;
                }

                stat[7][0] += (double) tableData.rows[7].value[threadId];

                stat[7][1] =  MAX(stat[7][1],(double) tableData.rows[7].value[threadId]);
                stat[7][2] =  MIN(stat[7][2],(double) tableData.rows[7].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case TLB:
            numRows = 5;
            stat = (double**) malloc(numRows * sizeof(double*));
            for (int i=0; i<numRows; i++)
            {
                stat[i] = (double*) malloc(4 * sizeof(double));
                stat[i][0] = 0;
                stat[i][1] = 0;
                stat[i][2] = DBL_MAX;
            }
            INIT_BASIC;

            bstrListAdd(fc,1,Runtime (RDTSC) [s]);

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,Clock [MHz]);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,L1 DTLB miss rate);

            initResultTable(&tableData, fc, numRows, numColumns);

            for(threadId=0; threadId < perfmon_numThreads; threadId++)
            {

                tmpValue = time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[0].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[0].value[threadId] = 0.0;
                }

                stat[0][0] += (double) tableData.rows[0].value[threadId];

                stat[0][1] =  MAX(stat[0][1],(double) tableData.rows[0].value[threadId]);
                stat[0][2] =  MIN(stat[0][2],(double) tableData.rows[0].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[1].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[1].value[threadId] = 0.0;
                }

                stat[1][0] += (double) tableData.rows[1].value[threadId];

                stat[1][1] =  MAX(stat[1][1],(double) tableData.rows[1].value[threadId]);
                stat[1][2] =  MIN(stat[1][2],(double) tableData.rows[1].value[threadId]);

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                if (!isnan(tmpValue))
                {
                    tableData.rows[2].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[2].value[threadId] = 0.0;
                }

                stat[2][0] += (double) tableData.rows[2].value[threadId];

                stat[2][1] =  MAX(stat[2][1],(double) tableData.rows[2].value[threadId]);
                stat[2][2] =  MIN(stat[2][2],(double) tableData.rows[2].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[3].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[3].value[threadId] = 0.0;
                }

                stat[3][0] += (double) tableData.rows[3].value[threadId];

                stat[3][1] =  MAX(stat[3][1],(double) tableData.rows[3].value[threadId]);
                stat[3][2] =  MIN(stat[3][2],(double) tableData.rows[3].value[threadId]);

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
                if (!isnan(tmpValue))
                {
                    tableData.rows[4].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[4].value[threadId] = 0.0;
                }

                stat[4][0] += (double) tableData.rows[4].value[threadId];

                stat[4][1] =  MAX(stat[4][1],(double) tableData.rows[4].value[threadId]);
                stat[4][2] =  MIN(stat[4][2],(double) tableData.rows[4].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;


        default:
            fprintf (stderr, "perfmon_printDerivedMetricssandybridge: Unknown group! Exiting!\n" );
            exit (EXIT_FAILURE);
            break;
    }

    printResultTable(&tableData);
    freeResultTable(&tableData);

    /* for threaded results print sum, max, min and avg */
    if (perfmon_numThreads > 1)
    {
        initStatisticTable(&tableData, fc, numRows);
        for (int i=0; i<numRows; i++)
        {
            stat[i][3] =  stat[i][0]/perfmon_numThreads;
            for (int j=0; j<4; j++)
            {
                tableData.rows[i].value[j] = stat[i][j];
            }
        }
        printResultTable(&tableData);
        freeResultTable(&tableData);
    }

    for (int i=0; i<numRows; i++)
    {
        free(stat[i]);
    }
    free(stat);
    bstrListDestroy(fc);
}

void
perfmon_logDerivedMetricsSandybridge(PerfmonGroup group, double time,double timeStamp)
{
    int threadId;
    double tmpValue;
    double inverseClock = 1.0 /(double) timer_getCpuClock();

    switch ( group ) 
    {
        
        case BRANCH:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Branch rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Branch misprediction rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Branch misprediction ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Instructions per branch %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC0")/perfmon_getResult(threadId,"PMC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case DATA:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Load to Store ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case ENERGY:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time ;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Energy [J] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PWR0") ;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Power [W] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PWR0")/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case FLOPS_AVX:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("SP MFlops/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")*8.0)/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("DP MFlops/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC1")*4.0)/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case FLOPS_DP:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("MFlops/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")*2.0+perfmon_getResult(threadId,"PMC1"))/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Packed MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Scalar MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case FLOPS_SP:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("MFlops/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")*4.0+perfmon_getResult(threadId,"PMC1"))/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Packed MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Scalar MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case L2:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 Load [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 Evict [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 bandwidth [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 data volume [GBytes] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case L2CACHE:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 request rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 miss rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L2 miss ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case L3:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L3 Load [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L3 Evict [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L3 bandwidth [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L3 data volume [GBytes] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case MEM:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Memory Read BW [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX0C1")+perfmon_getResult(threadId,"MBOX0C2")+perfmon_getResult(threadId,"MBOX0C3"))*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Memory Write BW [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"MBOX1C1")+perfmon_getResult(threadId,"MBOX1C2")+perfmon_getResult(threadId,"MBOX1C3"))*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Memory BW [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX0C1")+perfmon_getResult(threadId,"MBOX0C2")+perfmon_getResult(threadId,"MBOX0C3")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"MBOX1C1")+perfmon_getResult(threadId,"MBOX1C2")+perfmon_getResult(threadId,"MBOX1C3"))*64.0/time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Memory data volume [GBytes] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-09*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX0C1")+perfmon_getResult(threadId,"MBOX0C2")+perfmon_getResult(threadId,"MBOX0C3")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"MBOX1C1")+perfmon_getResult(threadId,"MBOX1C2")+perfmon_getResult(threadId,"MBOX1C3"))*64.0;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            
        case TLB:

                    
                        printf("Runtime (RDTSC) [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = time;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Runtime unhalted [s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")*inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC2"))/inverseClock;
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("CPI %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
                        printf("L1 DTLB miss rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
                            if (!isnan(tmpValue))
                            {
                                printf(" %e  ", tmpValue);
                            }
                            else
                            {
                                printf(" 0.0  ");
                            }
                        }
                        printf("\n");
                    
            break;
            

        default:
                fprintf (stderr, "perfmon_printDerivedMetricssandybridge: Unknown group! Exiting!\n" );
                exit (EXIT_FAILURE);
                break;
    }
}



static PerfmonGroupHelp sandybridge_group_help[NUM_GROUPS_SANDYBRIDGE] = {

    {"BRANCH","Formulas:\n\
Branch rate = BR_INST_RETIRED_ALL_BRANCHES / INSTR_RETIRED_ANY\n\
Branch misprediction rate =  BR_MISP_RETIRED_ALL_BRANCHES / INSTR_RETIRED_ANY\n\
Branch misprediction ratio = BR_MISP_RETIRED_ALL_BRANCHES / BR_INST_RETIRED_ALL_BRANCHES\n\
Instructions per branch = INSTR_RETIRED_ANY / BR_INST_RETIRED_ALL_BRANCHES\n\
-\n\
The rates state how often in average a branch or a mispredicted branch occured\n\
per instruction retired in total. The Branch misprediction ratio sets directly\n\
into relation what ratio of all branch instruction where mispredicted.\n\
Instructions per branch is 1/Branch rate.\n\
\n\
"},

    {"DATA","Formulas:\n\
Load to Store ratio = MEM_UOP_RETIRED_LOADS / MEM_UOP_RETIRED_STORES\n\
-\n\
This is a metric to determine your load to store ratio.\n\
\n\
"},

    {"ENERGY","Formula:\n\
Power =  PWR_PKG_ENERGY / time\n\
-\n\
SandyBridge implements the new RAPL interface. This interface enables to\n\
monitor the consumed energy on the package (socket) level.\n\
\n\
"},

    {"FLOPS_AVX","Formula:\n\
SP MFlops/s =  (SIMD_FP_256_PACKED_SINGLE*8)/ runtime\n\
DP MFlops/s =  (SIMD_FP_256_PACKED_DOUBLE*4)/ runtime\n\
-\n\
AVX flops rates. Please note that the current flop measurements on SandyBridge are\n\
potentially wrong. So you cannot trust these counters at the moment!\n\
\n\
"},

    {"FLOPS_DP","Formula:\n\
MFlops/s =  (FP_COMP_OPS_EXE_SSE_FP_PACKED*2 +  FP_COMP_OPS_EXE_SSE_FP_SCALAR)/ runtime\n\
-\n\
SSE scalar and packed double precision flop rates. Please note that the current flop measurements on SandyBridge are\n\
potentially wrong. So you cannot trust these counters at the moment!\n\
\n\
"},

    {"FLOPS_SP","Formula:\n\
MFlops/s =  (FP_COMP_OPS_EXE_SSE_FP_PACKED*4 +  FP_COMP_OPS_EXE_SSE_FP_SCALAR)/ runtime\n\
-\n\
SSE scalar and packed single precision flop rates. Please note that the current flop measurements on SandyBridge are\n\
potentially wrong. So you cannot trust these counters at the moment!\n\
\n\
"},

    {"L2","Formulas:\n\
L2 Load [MBytes/s] = 1.0E-06*L1D_REPLACEMENT*64/time\n\
L2 Evict [MBytes/s] = 1.0E-06*L1D_M_EVICT*64/time\n\
L2 bandwidth [MBytes/s] = 1.0E-06*(L1D_REPLACEMENT+L1D_M_EVICT)*64/time\n\
L2 data volume [GBytes] = 1.0E-09*(L1D_REPLACEMENT+L1D_M_EVICT)*64\n\
-\n\
Profiling group to measure L2 cache bandwidth. The bandwidth is computed by the\n\
number of cacheline allocated in the L1 and the number of modified cachelines\n\
evicted from the L1. The group also output total data volume transfered between\n\
L2 and L1. Note that this bandwidth also includes data transfers due to a write\n\
allocate load on a store miss in L1.\n\
\n\
"},

    {"L2CACHE","Formulas:\n\
L2 request rate = L2_TRANS_ALL_REQUESTS / INSTR_RETIRED_ANY\n\
L2 miss rate  = L2_RQSTS_MISS / INSTR_RETIRED_ANY\n\
L2 miss ratio = L2_RQSTS_MISS / L2_TRANS_ALL_REQUESTS\n\
-\n\
This group measures the locality of your data accesses with regard to the\n\
L2 Cache. L2 request rate tells you how data intensive your code is\n\
or how many Data accesses you have in average per instruction.\n\
The L2 miss rate gives a measure how often it was necessary to get\n\
cachelines from memory. And finally L2 miss ratio tells you how many of your\n\
memory references required a cacheline to be loaded from a higher level.\n\
While the Data cache miss rate might be given by your algorithm you should\n\
try to get Data cache miss ratio as low as possible by increasing your cache reuse.\n\
Note: This group might need to be revised!\n\
\n\
\n\
"},

    {"L3","Formulas:\n\
L3 Load [MBytes/s]  1.0E-06*L2_LINES_IN_ALL*64/time\n\
L3 Evict [MBytes/s]  1.0E-06*L2_LINES_OUT_DEMAND_DIRTY*64/time\n\
L3 bandwidth [MBytes/s] 1.0E-06*(L2_LINES_IN_ALL+L2_LINES_OUT_DEMAND_DIRTY)*64/time\n\
L3 data volume [GBytes] 1.0E-09*(L2_LINES_IN_ALL+L2_LINES_OUT_DEMAND_DIRTY)*64\n\
-\n\
Profiling group to measure L3 cache bandwidth. The bandwidth is computed by the\n\
number of cacheline allocated in the L2 and the number of modified cachelines\n\
evicted from the L2. This group also outputs data volume transfered between the\n\
L3 and  measured cores L2 caches. Note that this bandwidth also includes data\n\
transfers due to a write allocate load on a store miss in L2.\n\
\n\
"},

    {"MEM","Profiling group to measure memory bandwidth drawn by all cores of a socket.\n\
Since this group is based on uncore events it is only possible to measure on a\n\
per socket base. Also outputs total data volume transfered from main memory.\n\
\n\
"},

    {"TLB","Formulas:\n\
DTLB miss rate  LOAD_MISSES_CAUSES_A_WALK / INSTR_RETIRED_ANY\n\
-\n\
The DTLB miss  rate gives a measure how often a TLB miss occured\n\
per instruction. \n\
\n\
"},

};

