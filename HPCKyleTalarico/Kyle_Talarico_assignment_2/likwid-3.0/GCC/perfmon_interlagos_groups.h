/* GENERATED FILE: DO NOTE EDIT */

#define NUM_GROUPS_INTERLAGOS 15

static PerfmonGroupMap interlagos_group_map[NUM_GROUPS_INTERLAGOS] = {

    {"BRANCH",BRANCH,"Branch prediction miss rate/ratio","RETIRED_INSTRUCTIONS:PMC0,RETIRED_BRANCH_INSTR:PMC1,RETIRED_MISPREDICTED_BRANCH_INSTR:PMC2,RETIRED_TAKEN_BRANCH_INSTR:PMC3"},

    {"CACHE",CACHE,"Data cache miss rate/ratio","RETIRED_INSTRUCTIONS:PMC0,DATA_CACHE_ACCESSES:PMC1,DATA_CACHE_REFILLS_VALID:PMC2,DATA_CACHE_MISSES_ALL:PMC3"},

    {"CPI",CPI,"Cycles per instruction","RETIRED_INSTRUCTIONS:PMC0,CPU_CLOCKS_UNHALTED:PMC1,RETIRED_UOPS:PMC2"},

    {"DATA",DATA,"Load to store ratio","LS_DISPATCH_LOADS:PMC0,LS_DISPATCH_STORES:PMC1"},

    {"FLOPS_DP",FLOPS_DP,"Double Precision MFlops/s","RETIRED_INSTRUCTIONS:PMC0,CPU_CLOCKS_UNHALTED:PMC1,RETIRED_UOPS:PMC2,RETIRED_FLOPS_DOUBLE_ALL:PMC3"},

    {"FLOPS_SP",FLOPS_SP,"Single Precision MFlops/s","RETIRED_INSTRUCTIONS:PMC0,CPU_CLOCKS_UNHALTED:PMC1,RETIRED_UOPS:PMC2,RETIRED_FLOPS_SINGLE_ALL:PMC3"},

    {"FPU_EXCEPTION",FPU_EXCEPTION,"Floating point exceptions","RETIRED_INSTRUCTIONS:PMC0,RETIRED_FP_INSTRUCTIONS_ALL:PMC1,FPU_EXCEPTION_ALL:PMC2"},

    {"ICACHE",ICACHE,"Instruction cache miss rate/ratio","INSTRUCTION_CACHE_FETCHES:PMC0,INSTRUCTION_CACHE_L2_REFILLS:PMC1,INSTRUCTION_CACHE_SYSTEM_REFILLS:PMC2,RETIRED_INSTRUCTIONS:PMC3"},

    {"L2",L2,"L2 cache bandwidth in MBytes/s","DATA_CACHE_REFILLS_ALL:PMC0,DATA_CACHE_REFILLS_SYSTEM:PMC1,CPU_CLOCKS_UNHALTED:PMC2"},

    {"L2CACHE",L2CACHE,"L2 cache miss rate/ratio","RETIRED_INSTRUCTIONS:PMC0,REQUESTS_TO_L2_DC_FILL:PMC1,L2_CACHE_MISS_DC_FILL:PMC2"},

    {"L3",L3,"L3 cache bandwidth in MBytes/s","L2_FILL_WB_FILL:PMC0,L2_FILL_WB_WB:PMC1,CPU_CLOCKS_UNHALTED:PMC2"},

    {"L3CACHE",L3CACHE,"L3 cache miss rate/ratio","RETIRED_INSTRUCTIONS:PMC0,UNC_READ_REQ_TO_L3_ALL:UPMC0,UNC_L3_CACHE_MISS_ALL:UPMC1,UNC_L3_LATENCY_CYCLE_COUNT:UPMC2,UNC_L3_LATENCY_REQUEST_COUNT:UPMC3"},

    {"LINKS",LINKS,"Bandwidth on the Hypertransport links","UNC_LINK_TRANSMIT_BW_L0_USE:UPMC0,UNC_LINK_TRANSMIT_BW_L1_USE:UPMC1,UNC_LINK_TRANSMIT_BW_L2_USE:UPMC2,UNC_LINK_TRANSMIT_BW_L3_USE:UPMC3"},

    {"MEM",MEM,"Main memory bandwidth in MBytes/s","UNC_DRAM_ACCESSES_DCT0_ALL:UPMC0,UNC_DRAM_ACCESSES_DCT1_ALL:UPMC1"},

    {"NUMA",NUMA,"Read/Write Events between the ccNUMA nodes","UNC_CPU_TO_DRAM_LOCAL_TO_0:UPMC0,UNC_CPU_TO_DRAM_LOCAL_TO_1:UPMC1,UNC_CPU_TO_DRAM_LOCAL_TO_2:UPMC2,UNC_CPU_TO_DRAM_LOCAL_TO_3:UPMC3"},

};

void
perfmon_printDerivedMetricsInterlagos(PerfmonGroup group)
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

            bstrListAdd(fc,2,Branch rate);

            bstrListAdd(fc,3,Branch misprediction rate);

            bstrListAdd(fc,4,Branch misprediction ratio);

            bstrListAdd(fc,5,Branch taken rate);

            bstrListAdd(fc,6,Branch taken ratio);

            bstrListAdd(fc,7,Instructions per branch);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC1");
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

                tmpValue = perfmon_getResult(threadId,"PMC3")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC3")/perfmon_getResult(threadId,"PMC1");
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

        case CACHE:
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

            bstrListAdd(fc,2,Data cache misses);

            bstrListAdd(fc,3,Data cache request rate);

            bstrListAdd(fc,4,Data cache miss rate);

            bstrListAdd(fc,5,Data cache miss ratio);

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

                tmpValue = perfmon_getResult(threadId,"PMC3");
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = (perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = (perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC1");
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

        case CPI:
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

            bstrListAdd(fc,3,CPI);

            bstrListAdd(fc,4,CPI (based on uops));

            bstrListAdd(fc,5,IPC);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")*inverseClock;
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC2");
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

        case DATA:
            numRows = 2;
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

            bstrListAdd(fc,2,Load to Store ratio);

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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case FLOPS_DP:
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

            bstrListAdd(fc,3,MFlops/s);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,CPI (based on uops));

            bstrListAdd(fc,6,IPC);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")*inverseClock;
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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC3"))/time;
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC2");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
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

        case FLOPS_SP:
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

            bstrListAdd(fc,3,MFlops/s);

            bstrListAdd(fc,4,CPI);

            bstrListAdd(fc,5,CPI (based on uops));

            bstrListAdd(fc,6,IPC);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")*inverseClock;
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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC3"))/time;
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC2");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
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

        case FPU_EXCEPTION:
            numRows = 3;
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

            bstrListAdd(fc,2,Overall FP exception rate);

            bstrListAdd(fc,3,FP exception rate);

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

                tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC1");
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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case ICACHE:
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

            bstrListAdd(fc,2,Instruction cache misses);

            bstrListAdd(fc,3,Instruction cache request rate);

            bstrListAdd(fc,4,Instruction cache miss rate);

            bstrListAdd(fc,5,Instruction cache miss ratio);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")+perfmon_getResult(threadId,"PMC2");
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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC3");
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

                tmpValue = (perfmon_getResult(threadId,"PMC1")+perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC3");
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

                tmpValue = (perfmon_getResult(threadId,"PMC1")+perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC0");
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

            bstrListAdd(fc,2,L2 bandwidth [MBytes/s]);

            bstrListAdd(fc,3,L2 data volume [GBytes]);

            bstrListAdd(fc,4,Cache refill bandwidth System/L2 [MBytes/s]);

            bstrListAdd(fc,5,Cache refill bandwidth System  [MBytes/s]);

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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"))*64.0/time;
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

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"))*64.0;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")*64.0/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")*64.0/time;
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

        case L2CACHE:
            numRows = 4;
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

            bstrListAdd(fc,2,L2 request rate);

            bstrListAdd(fc,3,L2 miss rate);

            bstrListAdd(fc,4,L2 miss ratio);

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

                tmpValue = (perfmon_getResult(threadId,"PMC1"))/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"PMC2")/(perfmon_getResult(threadId,"PMC1"));
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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case L3:
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

            bstrListAdd(fc,2,L3 bandwidth [MBytes/s]);

            bstrListAdd(fc,3,L3 data volume [GBytes]);

            bstrListAdd(fc,4,L3 refill bandwidth [MBytes/s]);

            bstrListAdd(fc,5,L3 evict [MBytes/s]);

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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0/time;
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

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")+perfmon_getResult(threadId,"PMC1"))*64.0;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC0")*64.0/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"PMC1")*64.0/time;
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

        case L3CACHE:
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

            bstrListAdd(fc,2,L3 request rate);

            bstrListAdd(fc,3,L3 miss rate);

            bstrListAdd(fc,4,L3 miss ratio);

            bstrListAdd(fc,5,L3 average access latency [cycles]);

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

                tmpValue = perfmon_getResult(threadId,"UPMC0")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"UPMC1")/perfmon_getResult(threadId,"PMC0");
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

                tmpValue = perfmon_getResult(threadId,"UPMC1")/perfmon_getResult(threadId,"UPMC0");
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

                tmpValue = perfmon_getResult(threadId,"UPMC2")/perfmon_getResult(threadId,"UPMC3");
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

        case LINKS:
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

            bstrListAdd(fc,2,Link bandwidth L0 [MBytes/s]);

            bstrListAdd(fc,3,Link bandwidth L1 [MBytes/s]);

            bstrListAdd(fc,4,Link bandwidth L2 [MBytes/s]);

            bstrListAdd(fc,5,Link bandwidth L3 [MBytes/s]);

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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC0")*4.0/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC1")*4.0/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC2")*4.0/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC3")*4.0/time;
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

        case MEM:
            numRows = 3;
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

            bstrListAdd(fc,2,Memory bandwidth [MBytes/s]);

            bstrListAdd(fc,3,Memory data volume [GBytes]);

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

                tmpValue = 1.0E-06*(perfmon_getResult(threadId,"UPMC0")+perfmon_getResult(threadId,"UPMC1"))*64.0/time;
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

                tmpValue = 1.0E-09*(perfmon_getResult(threadId,"UPMC0")+perfmon_getResult(threadId,"UPMC1"))*64.0;
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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case NUMA:
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

            bstrListAdd(fc,2,DRAM read/write local to 0 [MegaEvents/s]);

            bstrListAdd(fc,3,DRAM read/write local to 1 [MegaEvents/s]);

            bstrListAdd(fc,4,DRAM read/write local to 2 [MegaEvents/s]);

            bstrListAdd(fc,5,DRAM read/write local to 3 [MegaEvents/s]);

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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC0")/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC1")/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC2")/time;
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

                tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC3")/time;
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
            fprintf (stderr, "perfmon_printDerivedMetricsinterlagos: Unknown group! Exiting!\n" );
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
perfmon_logDerivedMetricsInterlagos(PerfmonGroup group, double time,double timeStamp)
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
                    
                        printf("Branch rate %e ",timeStamp);
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
                    
                        printf("Branch misprediction rate %e ",timeStamp);
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
                    
                        printf("Branch misprediction ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC1");
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
                    
                        printf("Branch taken rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC3")/perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("Branch taken ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC3")/perfmon_getResult(threadId,"PMC1");
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
                    
                        printf("Data cache misses %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC3");
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
                    
                        printf("Data cache miss rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = (perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC0");
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
                            tmpValue = (perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC1");
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
            
        case CPI:

                    
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
                            tmpValue = perfmon_getResult(threadId,"PMC1")*inverseClock;
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
                    
                        printf("CPI (based on uops) %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC2");
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
                    
                        printf("IPC %e ",timeStamp);
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
                            tmpValue = perfmon_getResult(threadId,"PMC1")*inverseClock;
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
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC3"))/time;
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
                    
                        printf("CPI (based on uops) %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC2");
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
                    
                        printf("IPC %e ",timeStamp);
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
                            tmpValue = perfmon_getResult(threadId,"PMC1")*inverseClock;
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
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC3"))/time;
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
                    
                        printf("CPI (based on uops) %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/perfmon_getResult(threadId,"PMC2");
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
                    
                        printf("IPC %e ",timeStamp);
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
            
        case FPU_EXCEPTION:

                    
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
                    
                        printf("Overall FP exception rate %e ",timeStamp);
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
                    
                        printf("FP exception rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC2")/perfmon_getResult(threadId,"PMC1");
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
            
        case ICACHE:

                    
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
                    
                        printf("Instruction cache misses %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")+perfmon_getResult(threadId,"PMC2");
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
                    
                        printf("Instruction cache request rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC3");
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
                    
                        printf("Instruction cache miss rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = (perfmon_getResult(threadId,"PMC1")+perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC3");
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
                    
                        printf("Instruction cache miss ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = (perfmon_getResult(threadId,"PMC1")+perfmon_getResult(threadId,"PMC2"))/perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("L2 bandwidth [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"))*64.0/time;
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
                            tmpValue = 1.0E-09*(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"))*64.0;
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
                    
                        printf("Cache refill bandwidth System/L2 [MBytes/s] %e ",timeStamp);
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
                    
                        printf("Cache refill bandwidth System  [MBytes/s] %e ",timeStamp);
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
                    
                        printf("L2 request rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = (perfmon_getResult(threadId,"PMC1"))/perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("L2 miss ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC2")/(perfmon_getResult(threadId,"PMC1"));
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
                    
                        printf("L3 refill bandwidth [MBytes/s] %e ",timeStamp);
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
                    
                        printf("L3 evict [MBytes/s] %e ",timeStamp);
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
                    
            break;
            
        case L3CACHE:

                    
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
                    
                        printf("L3 request rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"UPMC0")/perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("L3 miss rate %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"UPMC1")/perfmon_getResult(threadId,"PMC0");
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
                    
                        printf("L3 miss ratio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"UPMC1")/perfmon_getResult(threadId,"UPMC0");
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
                    
                        printf("L3 average access latency [cycles] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"UPMC2")/perfmon_getResult(threadId,"UPMC3");
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
            
        case LINKS:

                    
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
                    
                        printf("Link bandwidth L0 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC0")*4.0/time;
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
                    
                        printf("Link bandwidth L1 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC1")*4.0/time;
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
                    
                        printf("Link bandwidth L2 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC2")*4.0/time;
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
                    
                        printf("Link bandwidth L3 [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC3")*4.0/time;
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
                    
                        printf("Memory bandwidth [MBytes/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*(perfmon_getResult(threadId,"UPMC0")+perfmon_getResult(threadId,"UPMC1"))*64.0/time;
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
                            tmpValue = 1.0E-09*(perfmon_getResult(threadId,"UPMC0")+perfmon_getResult(threadId,"UPMC1"))*64.0;
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
            
        case NUMA:

                    
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
                    
                        printf("DRAM read/write local to 0 [MegaEvents/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC0")/time;
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
                    
                        printf("DRAM read/write local to 1 [MegaEvents/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC1")/time;
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
                    
                        printf("DRAM read/write local to 2 [MegaEvents/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC2")/time;
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
                    
                        printf("DRAM read/write local to 3 [MegaEvents/s] %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = 1.0E-06*perfmon_getResult(threadId,"UPMC3")/time;
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
                fprintf (stderr, "perfmon_printDerivedMetricsinterlagos: Unknown group! Exiting!\n" );
                exit (EXIT_FAILURE);
                break;
    }
}



static PerfmonGroupHelp interlagos_group_help[NUM_GROUPS_INTERLAGOS] = {

    {"BRANCH","Formulas:\n\
Branch rate = RETIRED_BRANCH_INSTR / RETIRED_INSTRUCTIONS\n\
Branch misprediction rate = RETIRED_MISPREDICTED_BRANCH_INSTR / RETIRED_INSTRUCTIONS\n\
Branch misprediction ratio = RETIRED_MISPREDICTED_BRANCH_INSTR / RETIRED_BRANCH_INSTR\n\
Branch taken rate = RETIRED_TAKEN_BRANCH_INSTR / RETIRED_INSTRUCTIONS\n\
Branch taken ratio = RETIRED_TAKEN_BRANCH_INSTR / RETIRED_BRANCH_INSTR\n\
Instructions per branch = RETIRED_INSTRUCTIONS / RETIRED_BRANCH_INSTR\n\
-\n\
The rates state how often in average a branch or a mispredicted branch occured\n\
per instruction retired in total. The branch misprediction ratio sets directly\n\
into relation what ratio of all branch instruction where mispredicted.\n\
Instructions per branch is 1/Branch rate. The same applies for the branches\n\
taken metrics.\n\
\n\
"},

    {"CACHE","Formulas:\n\
Data cache misses = DATA_CACHE_MISSES_ALL\n\
Data cache request rate = DATA_CACHE_ACCESSES / RETIRED_INSTRUCTIONS\n\
Data cache miss rate = (DATA_CACHE_REFILLS_VALID) / RETIRED_INSTRUCTIONS\n\
Data cache miss ratio = (DATA_CACHE_REFILLS_VALID)/DATA_CACHE_ACCESSES\n\
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

    {"CPI","This group measures how efficient the processor works with\n\
regard to instruction throughput. Also important as a standalone\n\
metric is RETIRED_INSTRUCTIONS as it tells you how many instruction\n\
you need to execute for a task. An optimization might show very\n\
low CPI values but execute many more instruction for it.\n\
\n\
"},

    {"DATA","Formulas:\n\
Load to Store ratio = LS_DISPATCH_LOADS / LS_DISPATCH_STORES\n\
-\n\
This is a simple metric to determine your load to store ratio.\n\
\n\
"},

    {"FLOPS_DP","Formulas:\n\
DP MFlops/s = 1.0E-06*(RETIRED_FLOPS_DOUBLE_ALL)/time\n\
-\n\
Profiling group to measure double precisision flop rate.\n\
\n\
\n\
"},

    {"FLOPS_SP","Formulas:\n\
SP MFlops/s = 1.0E-06*(RETIRED_FLOPS_SINGLE_ALL)/time\n\
-\n\
Profiling group to measure single precision flop rate.\n\
\n\
\n\
"},

    {"FPU_EXCEPTION","Formulas:\n\
Overall FP exception rate = FPU_EXCEPTIONS_ALL / INSTRUCTIONS_RETIRED\n\
FP exception rate = FPU_EXCEPTIONS_ALL / FP_INSTRUCTIONS_RETIRED_ALL\n\
-\n\
Floating point exceptions occur e.g. on the treatment of Denormals.\n\
There might be a large penalty if there are too many floating point\n\
exceptions.\n\
\n\
"},

    {"ICACHE","Formulas:\n\
Instruction cache misses INSTRUCTION_CACHE_L2_REFILLS + INSTRUCTION_CACHE_SYSTEM_REFILLS\n\
Instruction cache request rate INSTRUCTION_CACHE_FETCHES / RETIRED_INSTRUCTIONS\n\
Instruction cache miss rate  (INSTRUCTION_CACHE_L2_REFILLS + INSTRUCTION_CACHE_SYSTEM_REFILLS)/RETIRED_INSTRUCTIONS\n\
Instruction cache miss ratio (INSTRUCTION_CACHE_L2_REFILLS + INSTRUCTION_CACHE_SYSTEM_REFILLS)/INSTRUCTION_CACHE_FETCHES\n\
-\n\
This group measures the locality of your instruction code with regard to the\n\
L1 I-Cache. \n\
\n\
"},

    {"L2","Formulas:\n\
L2 bandwidth [MBytes/s]   1.0E-06*(DATA_CACHE_REFILLS_ALL-DATA_CACHE_REFILLS_SYSTEM)*64/time\n\
L2 data volume [GBytes]   1.0E-09*(DATA_CACHE_REFILLS_ALL-DATA_CACHE_REFILLS_SYSTEM)*64\n\
Cache refill bandwidth System/L2 [MBytes/s]   1.0E-06*DATA_CACHE_REFILLS_ALL*64/time\n\
Cache refill bandwidth System [MBytes/s]   1.0E-06*DATA_CACHE_REFILLS_SYSTEM*64/time\n\
-\n\
Profiling group to measure L2 cache bandwidth. The bandwidth is\n\
computed by the number of cacheline loaded from L2 to L1 and the\n\
number of modified cachelines evicted from the L1. \n\
Note that this bandwidth also includes data transfers due to a\n\
write allocate load on a store miss in L1 and copy back transfers if\n\
originated from L2. L2-L1 data volume is the total data volume transfered \n\
between L2 and L1.\n\
\n\
"},

    {"L2CACHE","Formulas:\n\
L2 request rate = (L2_REQUESTS_ALL)/INSTRUCTIONS_RETIRED\n\
L2 miss rate  = L2_MISSES_ALL/INSTRUCTIONS_RETIRED\n\
L2 miss ratio = L2_MISSES_ALL/(L2_REQUESTS_ALL)\n\
-\n\
This group measures the locality of your data accesses with regard to the L2\n\
Cache. L2 request rate tells you how data intensive your code is or how many\n\
Data accesses you have in average per instruction.  The L2 miss rate gives a\n\
measure how often it was necessary to get cachelines from memory. And finally\n\
L2 miss ratio tells you how many of your memory references required a cacheline\n\
to be loaded from a higher level.  While the Data cache miss rate might be\n\
given by your algorithm you should try to get Data cache miss ratio as low as\n\
possible by increasing your cache reuse.  This group is inspired from the\n\
whitepaper -Basic Performance Measurements for AMD Athlon 64, AMD Opteron and\n\
AMD Phenom Processors- from Paul J. Drongowski.\n\
\n\
\n\
"},

    {"L3","Formulas:\n\
L3 bandwidth [MBytes/s]   1.0E-06*(L2_FILL_WB_FILL+L2_FILL_WB_WB)*64/time\n\
L3 data volume [GBytes]   1.0E-09*(L2_FILL_WB_FILL+L2_FILL_WB_WB)*64\n\
L3 refill bandwidth [MBytes/s]   1.0E-06*L2_FILL_WB_FILL*64/time\n\
-\n\
Profiling group to measure L3 cache bandwidth. The bandwidth is\n\
computed by the number of cacheline loaded from L3 to L2 and the\n\
number of modified cachelines evicted from the L2. \n\
\n\
"},

    {"L3CACHE","Formulas:\n\
L2 request rate = (L2_REQUESTS_ALL)/INSTRUCTIONS_RETIRED\n\
L2 miss rate  = L2_MISSES_ALL/INSTRUCTIONS_RETIRED\n\
L2 miss ratio = L2_MISSES_ALL/(L2_REQUESTS_ALL)\n\
-\n\
This group measures the locality of your data accesses with regard to the L3\n\
Cache. L3 request rate tells you how data intensive your code is or how many\n\
Data accesses you have in average per instruction.  The L3 miss rate gives a\n\
measure how often it was necessary to get cachelines from memory. And finally\n\
L3 miss ratio tells you how many of your memory references required a cacheline\n\
to be loaded from a higher level.  While the Data cache miss rate might be\n\
given by your algorithm you should try to get Data cache miss ratio as low as\n\
possible by increasing your cache reuse.  This group was inspired from the\n\
whitepaper -Basic Performance Measurements for AMD Athlon 64, AMD Opteron and\n\
AMD Phenom Processors- from Paul J. Drongowski.\n\
\n\
\n\
"},

    {"LINKS","Formulas:\n\
Link bandwidth L0 [MBytes/s]  1.0E-06*UNC_LINK_TRANSMIT_BW_L0_USE*4.0/time\n\
Link bandwidth L1 [MBytes/s]  1.0E-06*UNC_LINK_TRANSMIT_BW_L1_USE*4.0/time\n\
Link bandwidth L2 [MBytes/s]  1.0E-06*UNC_LINK_TRANSMIT_BW_L2_USE*4.0/time\n\
Link bandwidth L3 [MBytes/s]  1.0E-06*UNC_LINK_TRANSMIT_BW_L3_USE*4.0/time\n\
-\n\
Profiling group to measure the Hypertransport link bandwidth for the four links\n\
of a local node. This indicates the data flow between different ccNUMA nodes.\n\
\n\
\n\
"},

    {"MEM","Formulas:\n\
Memory bandwidth [MBytes/s] = 1.0E-06*(DRAM_ACCESSES_DCTO_ALL+DRAM_ACCESSES_DCT1_ALL)*64/time\n\
Memory data volume [GBytes] = 1.0E-09*(DRAM_ACCESSES_DCTO_ALL+DRAM_ACCESSES_DCT1_ALL)*64\n\
-\n\
Profiling group to measure memory bandwidth drawn by all cores of a socket.\n\
Note: As this group measures the accesses from all cores it only makes sense\n\
to measure with one core per socket, similiar as with the Intel Nehalem Uncore events.\n\
\n\
"},

    {"NUMA","Formulas:\n\
DRAM read/write local to 0 [MegaEvents/s]  1.0E-06*UNC_CPU_TO_DRAM_LOCAL_TO_0/time\n\
DRAM read/write local to 1 [MegaEvents/s]  1.0E-06*UNC_CPU_TO_DRAM_LOCAL_TO_1/time\n\
DRAM read/write local to 2 [MegaEvents/s]  1.0E-06*UNC_CPU_TO_DRAM_LOCAL_TO_2/time\n\
DRAM read/write local to 3 [MegaEvents/s]  1.0E-06*UNC_CPU_TO_DRAM_LOCAL_TO_3/time\n\
-\n\
Profiling group to measure the traffic from local CPU to the different \n\
DRAM NUMA nodes. This group allows to detect NUMA problems in a threaded \n\
code. You must first determine on which memory domains your code is running.\n\
A code should only have significant traffic to its own memory domain.\n\
\n\
\n\
"},

};

