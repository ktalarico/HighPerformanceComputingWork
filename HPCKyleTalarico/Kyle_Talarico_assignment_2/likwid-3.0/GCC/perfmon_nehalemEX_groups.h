/* GENERATED FILE: DO NOTE EDIT */

#define NUM_GROUPS_NEHALEMEX 11

static PerfmonGroupMap nehalemEX_group_map[NUM_GROUPS_NEHALEMEX] = {

    {"BRANCH",BRANCH,"Branch prediction miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,BR_INST_RETIRED_ALL_BRANCHES:PMC0,BR_MISP_RETIRED_ALL_BRANCHES:PMC1"},

    {"CACHE",CACHE,"Data cache miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,L1D_REPL:PMC0,L1D_ALL_REF_ANY:PMC1"},

    {"DATA",DATA,"Load to store ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,MEM_INST_RETIRED_LOADS:PMC0,MEM_INST_RETIRED_STORES:PMC1"},

    {"FLOPS_DP",FLOPS_DP,"Double Precision MFlops/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,FP_COMP_OPS_EXE_SSE_FP_PACKED:PMC0,FP_COMP_OPS_EXE_SSE_FP_SCALAR:PMC1,FP_COMP_OPS_EXE_SSE_SINGLE_PRECISION:PMC2,FP_COMP_OPS_EXE_SSE_DOUBLE_PRECISION:PMC3"},

    {"FLOPS_SP",FLOPS_SP,"Single Precision MFlops/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,FP_COMP_OPS_EXE_SSE_FP_PACKED:PMC0,FP_COMP_OPS_EXE_SSE_FP_SCALAR:PMC1,FP_COMP_OPS_EXE_SSE_SINGLE_PRECISION:PMC2,FP_COMP_OPS_EXE_SSE_DOUBLE_PRECISION:PMC3"},

    {"FLOPS_X87",FLOPS_X87,"X87 MFlops/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,INST_RETIRED_X87:PMC0"},

    {"L2",L2,"L2 cache bandwidth in MBytes/s","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,L1D_REPL:PMC0,L1D_M_EVICT:PMC1"},

    {"L2CACHE",L2CACHE,"L2 cache miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,L2_DATA_RQSTS_DEMAND_ANY:PMC0,L2_RQSTS_MISS:PMC1"},

    {"MEM",MEM,"Main memory bandwidth","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,UNCORE_CYCLES:WBOX4,FVC_EV0_BBOX_CMDS_READS:MBOX0C0,FVC_EV0_BBOX_RSP_ACK:MBOX0C1,FVC_EV0_BBOX_CMDS_READS:MBOX1C0,FVC_EV0_BBOX_RSP_ACK:MBOX1C1,IMT_INSERTS_WR:BBOX0C1,IMT_INSERTS_WR:BBOX1C1,NEW_PACKETS_RECV_PORT0_IPERF0_ANY_DRS:RBOX0C0,NEW_PACKETS_RECV_PORT1_IPERF0_ANY_DRS:RBOX0C1,NEW_PACKETS_RECV_PORT4_IPERF0_ANY_DRS:RBOX1C0,NEW_PACKETS_RECV_PORT5_IPERF0_ANY_DRS:RBOX1C1"},

    {"SCHEDULER",SCHEDULER,"Scheduler Ports","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,UOPS_EXECUTED_PORT0:PMC0,UOPS_EXECUTED_PORT1:PMC1,UOPS_EXECUTED_PORT5:PMC2"},

    {"TLB",TLB,"TLB miss rate/ratio","INSTR_RETIRED_ANY:FIXC0,CPU_CLK_UNHALTED_CORE:FIXC1,CPU_CLK_UNHALTED_REF:FIXC2,DTLB_MISSES_ANY:PMC0,L1D_ALL_REF_ANY:PMC1"},

};

void
perfmon_printDerivedMetricsNehalemEX(PerfmonGroup group)
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

        case CACHE:
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

            bstrListAdd(fc,5,Data cache misses);

            bstrListAdd(fc,6,Data cache request rate);

            bstrListAdd(fc,7,Data cache miss rate);

            bstrListAdd(fc,8,Data cache miss ratio);

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

                tmpValue = perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
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

        case FLOPS_DP:
            numRows = 9;
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

            bstrListAdd(fc,5,DP MFlops/s);

            bstrListAdd(fc,6,Packed MUOPS/s);

            bstrListAdd(fc,7,Scalar MUOPS/s);

            bstrListAdd(fc,8,SP MUOPS/s);

            bstrListAdd(fc,9,DP MUOPS/s);

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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC2")/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC3")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[8].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[8].value[threadId] = 0.0;
                }

                stat[8][0] += (double) tableData.rows[8].value[threadId];

                stat[8][1] =  MAX(stat[8][1],(double) tableData.rows[8].value[threadId]);
                stat[8][2] =  MIN(stat[8][2],(double) tableData.rows[8].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case FLOPS_SP:
            numRows = 9;
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

            bstrListAdd(fc,5,SP MFlops/s (SP assumed));

            bstrListAdd(fc,6,Packed MUOPS/s);

            bstrListAdd(fc,7,Scalar MUOPS/s);

            bstrListAdd(fc,8,SP MUOPS/s);

            bstrListAdd(fc,9,DP MUOPS/s);

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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC2")/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC3")/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[8].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[8].value[threadId] = 0.0;
                }

                stat[8][0] += (double) tableData.rows[8].value[threadId];

                stat[8][1] =  MAX(stat[8][1],(double) tableData.rows[8].value[threadId]);
                stat[8][2] =  MIN(stat[8][2],(double) tableData.rows[8].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case FLOPS_X87:
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

            bstrListAdd(fc,5,X87 MFlops/s);

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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")/time;
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

        case MEM:
            numRows = 13;
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

            bstrListAdd(fc,4,Uncore Clock [MHz]);

            bstrListAdd(fc,5,CPI);

            bstrListAdd(fc,6,Memory Read BW [MBytes/s]);

            bstrListAdd(fc,7,Memory Write BW [MBytes/s]);

            bstrListAdd(fc,8,Memory bandwidth [MBytes/s]);

            bstrListAdd(fc,9,Memory data volume [GBytes]);

            bstrListAdd(fc,10,Remote write data traffic Port 0 [MBytes/s]);

            bstrListAdd(fc,11,Remote write data traffic Port 1 [MBytes/s]);

            bstrListAdd(fc,12,Remote write data traffic Port 4 [MBytes/s]);

            bstrListAdd(fc,13,Remote write data traffic Port 5 [MBytes/s]);

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

                tmpValue = 1.E-06*(perfmon_getResult(threadId,"WBOX4"))/time;
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

                tmpValue = perfmon_getResult(threadId,"FIXC1")/perfmon_getResult(threadId,"FIXC0");
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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX1C0"))*64/time;
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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"BBOX0C1")+perfmon_getResult(threadId,"BBOX1C1"))*64/time;
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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"BBOX0C1")+perfmon_getResult(threadId,"BBOX1C1"))*64/time;
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

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"BBOX0C1")+perfmon_getResult(threadId,"BBOX1C1"))*64;
                if (!isnan(tmpValue))
                {
                    tableData.rows[8].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[8].value[threadId] = 0.0;
                }

                stat[8][0] += (double) tableData.rows[8].value[threadId];

                stat[8][1] =  MAX(stat[8][1],(double) tableData.rows[8].value[threadId]);
                stat[8][2] =  MIN(stat[8][2],(double) tableData.rows[8].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX0C0"))*64/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[9].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[9].value[threadId] = 0.0;
                }

                stat[9][0] += (double) tableData.rows[9].value[threadId];

                stat[9][1] =  MAX(stat[9][1],(double) tableData.rows[9].value[threadId]);
                stat[9][2] =  MIN(stat[9][2],(double) tableData.rows[9].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX0C1"))*64/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[10].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[10].value[threadId] = 0.0;
                }

                stat[10][0] += (double) tableData.rows[10].value[threadId];

                stat[10][1] =  MAX(stat[10][1],(double) tableData.rows[10].value[threadId]);
                stat[10][2] =  MIN(stat[10][2],(double) tableData.rows[10].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX1C0"))*64/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[11].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[11].value[threadId] = 0.0;
                }

                stat[11][0] += (double) tableData.rows[11].value[threadId];

                stat[11][1] =  MAX(stat[11][1],(double) tableData.rows[11].value[threadId]);
                stat[11][2] =  MIN(stat[11][2],(double) tableData.rows[11].value[threadId]);

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX1C1"))*64/time;
                if (!isnan(tmpValue))
                {
                    tableData.rows[12].value[threadId] = tmpValue;
                }
                else
                {
                    tableData.rows[12].value[threadId] = 0.0;
                }

                stat[12][0] += (double) tableData.rows[12].value[threadId];

                stat[12][1] =  MAX(stat[12][1],(double) tableData.rows[12].value[threadId]);
                stat[12][2] =  MIN(stat[12][2],(double) tableData.rows[12].value[threadId]);

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case SCHEDULER:
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

            bstrListAdd(fc,5,RATIO Port 1);

            bstrListAdd(fc,6,RATIO Port 5);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC0");
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

        case TLB:
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

            bstrListAdd(fc,5,L1 DTLB request rate);

            bstrListAdd(fc,6,L1 DTLB miss rate);

            bstrListAdd(fc,7,L1 DTLB miss ratio);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"FIXC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"FIXC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
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


        default:
            fprintf (stderr, "perfmon_printDerivedMetricsnehalemEX: Unknown group! Exiting!\n" );
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
perfmon_logDerivedMetricsNehalemEX(PerfmonGroup group, double time,double timeStamp)
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
            
        case CACHE:

                    
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
                    
                        printf("Data cache misses %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("Data cache request rate %e ",timeStamp);
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
                    
                        printf("Data cache miss rate %e ",timeStamp);
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
                    
                        printf("Data cache miss ratio %e ",timeStamp);
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
                    
                        printf("DP MFlops/s %e ",timeStamp);
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
                    
                        printf("SP MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC2")/time;
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
                    
                        printf("DP MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC3")/time;
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
                    
                        printf("SP MFlops/s (SP assumed) %e ",timeStamp);
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
                    
                        printf("SP MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC2")/time;
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
                    
                        printf("DP MUOPS/s %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC3")/time;
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
            
        case FLOPS_X87:

                    
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
                    
                        printf("X87 MFlops/s %e ",timeStamp);
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
                    
                        printf("Uncore Clock [MHz] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.E-06*(perfmon_getResult(threadId,"WBOX4"))/time;
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
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX1C0"))*64/time;
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
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"BBOX0C1")+perfmon_getResult(threadId,"BBOX1C1"))*64/time;
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
                    
                        printf("Memory bandwidth [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"BBOX0C1")+perfmon_getResult(threadId,"BBOX1C1"))*64/time;
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
                            tmpValue = 1.0E-09*(perfmon_getResult(threadId,"MBOX0C0")+perfmon_getResult(threadId,"MBOX1C0")+perfmon_getResult(threadId,"BBOX0C1")+perfmon_getResult(threadId,"BBOX1C1"))*64;
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
                    
                        printf("Remote write data traffic Port 0 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX0C0"))*64/time;
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
                    
                        printf("Remote write data traffic Port 1 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX0C1"))*64/time;
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
                    
                        printf("Remote write data traffic Port 4 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX1C0"))*64/time;
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
                    
                        printf("Remote write data traffic Port 5 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"RBOX1C1"))*64/time;
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
            
        case SCHEDULER:

                    
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
                    
                        printf("RATIO Port 1 %e ",timeStamp);
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
                    
                        printf("RATIO Port 5 %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("L1 DTLB request rate %e ",timeStamp);
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
                    
                        printf("L1 DTLB miss ratio %e ",timeStamp);
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
            

        default:
                fprintf (stderr, "perfmon_printDerivedMetricsnehalemEX: Unknown group! Exiting!\n" );
                exit (EXIT_FAILURE);
                break;
    }
}



static PerfmonGroupHelp nehalemEX_group_help[NUM_GROUPS_NEHALEMEX] = {

    {"BRANCH","Formulas:\n\
Branch rate = BR_INST_RETIRED_ALL_BRANCHES / INSTR_RETIRED_ANY\n\
Branch misprediction rate =  BR_MISP_RETIRED_ALL_BRANCHES / INSTR_RETIRED_ANY\n\
Branch misprediction ratio = BR_MISP_RETIRED_ALL_BRANCHES / BR_INST_RETIRED_ALL_BRANCHES\n\
Instructions per branch = INSTR_RETIRED_ANY / BR_INST_RETIRED_ALL_BRANCHES\n\
-\n\
The rates state how often in average a branch or a mispredicted branch occured\n\
per instruction retired in total. The Branch misprediction ratio sets directly\n\
into relation what ration of all branch instruction where mispredicted.\n\
Instructions per branch is 1/Branch rate.\n\
\n\
"},

    {"CACHE","Formulas:\n\
Data cache request rate =  L1D_ALL_REF_ANY / INSTR_RETIRED_ANY\n\
Data cache miss rate = L1D_REPL / INSTR_RETIRED_ANY\n\
Data cache miss ratio =  L1D_REPL / L1D_ALL_REF_ANY\n\
-\n\
This group measures the locality of your data accesses with regard to the\n\
L1 Cache. Data cache request rate tells you how data intensive your code is\n\
or how many Data accesses you have in average per instruction.\n\
The Data cache miss rate gives a measure how often it was necessary to get\n\
cachelines from higher levels of the memory hierarchy. And finally \n\
Data cache miss ratio tells you how many of your memory references required\n\
a cacheline to be loaded from a higher level. While the Data cache miss rate \n\
might be given by your algorithm you should try to get Data cache miss ratio\n\
as low as possible by increasing your cache reuse.\n\
\n\
"},

    {"DATA","Formulas:\n\
Load to Store ratio = MEM_INST_RETIRED_LOADS / MEM_INST_RETIRED_STORES\n\
-\n\
This is a simple metric to determine your Load to store ratio.\n\
\n\
"},

    {"FLOPS_DP","Formula:\n\
DP MFlops/s =  (FP_COMP_OPS_EXE_SSE_FP_PACKED*2 +  FP_COMP_OPS_EXE_SSE_FP_SCALAR)/ runtime\n\
-\n\
The Nehalem has not possibility to measure MFlops if mixed precision calculations are done.\n\
Therefore both Single as well as Double precision are measured to ensure the correctness\n\
of the measurements. You can check if your code was vectorized on the number of\n\
FP_COMP_OPS_EXE_SSE_FP_PACKED versus the  FP_COMP_OPS_EXE_SSE_FP_SCALAR.\n\
\n\
"},

    {"FLOPS_SP","Formula:\n\
SP MFlops/s =  (FP_COMP_OPS_EXE_SSE_FP_PACKED*4 +  FP_COMP_OPS_EXE_SSE_FP_SCALAR)/ runtime\n\
-\n\
The Nehalem has not possibility to measure MFlops if mixed precision calculations are done.\n\
Therefore both Single as well as Double precision are measured to ensure the correctness\n\
of the measurements. You can check if your code was vectorized on the number of\n\
FP_COMP_OPS_EXE_SSE_FP_PACKED versus the  FP_COMP_OPS_EXE_SSE_FP_SCALAR.\n\
\n\
"},

    {"FLOPS_X87","Profiling group to measure X87 flop rate.\n\
\n\
"},

    {"L2","Formulas:\n\
L2 Load [MBytes/s] = 1.0E-06*L1D_REPL*64/time\n\
L2 Evict [MBytes/s] = 1.0E-06*L1D_M_EVICT*64/time\n\
L2 bandwidth [MBytes/s] = 1.0E-06*(L1D_REPL+L1D_M_EVICT)*64/time\n\
L2 data volume [GBytes] = 1.0E-09*(L1D_REPL+L1D_M_EVICT)*64\n\
-\n\
Profiling group to measure L2 cache bandwidth. The bandwidth is\n\
computed by the number of cacheline allocated in the L1 and the \n\
number of modified cachelines evicted from the L1.  Also reports on\n\
total data volume transfered between L2 and L1 cache.\n\
Note that this bandwidth also includes data transfers due to a\n\
write allocate load on a store miss in L1.\n\
\n\
"},

    {"L2CACHE","Formulas:\n\
L2 request rate = L2_DATA_RQSTS_DEMAND_ANY / INSTR_RETIRED_ANY\n\
L2 miss rate  = L2_RQSTS_MISS / INSTR_RETIRED_ANY\n\
L2 miss ratio = L2_RQSTS_MISS / L2_DATA_RQSTS_DEMAND_ANY\n\
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

    {"MEM","Profiling group to measure memory bandwidth drawn by all cores of a socket.\n\
Addional to the bandwidth it also outputs the data volume and the remote\n\
traffic over QPI links to other sockets.\n\
\n\
"},

    {"SCHEDULER","Measures how many instructions were scheduled on which issue port.\n\
\n\
"},

    {"TLB","Formulas:\n\
L1 DTLB request rate =  L1D_ALL_REF_ANY / INSTR_RETIRED_ANY\n\
DTLB miss rate  = DTLB_MISSES_ANY / INSTR_RETIRED_ANY\n\
L1 DTLB miss ratio  =   DTLB_MISSES_ANY / L1D_ALL_REF_ANY\n\
-\n\
L1 DTLB request  rate tells you how data intensive your code is\n\
or how many Data accesses you have in average per instruction.\n\
The DTLB miss  rate gives a measure how often a TLB miss occured\n\
per instruction. And finally L1 DTLB  miss ratio tells you how many\n\
of your memory references required caused a TLB miss in average.\n\
\n\
"},

};

