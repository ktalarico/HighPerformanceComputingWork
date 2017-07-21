/* GENERATED FILE: DO NOTE EDIT */

#define NUM_GROUPS_PHI 12

static PerfmonGroupMap phi_group_map[NUM_GROUPS_PHI] = {

    {"CACHE",CACHE,"Compute to Data Access Ratio","VPU_ELEMENTS_ACTIVE:PMC0,DATA_READ_OR_WRITE:PMC1"},

    {"CPI",CPI,"Cycles per instruction","INSTRUCTIONS_EXECUTED:PMC0,CPU_CLK_UNHALTED:PMC1"},

    {"L2CACHE",L2CACHE,"L2 Compute to Data Access Ratio","VPU_ELEMENTS_ACTIVE:PMC0,DATA_READ_MISS_OR_WRITE_MISS:PMC1"},

    {"PAIRING",PAIRING,"Pairing ratio","INSTRUCTIONS_EXECUTED:PMC0,INSTRUCTIONS_EXECUTED_V_PIPE:PMC1"},

    {"READ_MISS_RATIO",READ_MISS_RATIO,"Miss ratio for data read","DATA_READ:PMC0,DATA_READ_MISS:PMC1"},

    {"VECTOR",VECTOR,"Vector unit usage","VPU_INSTRUCTIONS_EXECUTED:PMC0,VPU_ELEMENTS_ACTIVE:PMC1"},

    {"VECTOR2",VECTOR2,"Vector unit usage","VPU_INSTRUCTIONS_EXECUTED:PMC0,VPU_STALL_REG:PMC1"},

    {"VPU_FILL_RATIO_DBL",VPU_FILL_RATIO_DBL,"VPU filling for Double","VPU_INSTRUCTIONS_EXECUTED:PMC0,VPU_ELEMENTS_ACTIVE:PMC1"},

    {"VPU_PAIRING",VPU_PAIRING,"VPU Pairing ratio","VPU_INSTRUCTIONS_EXECUTED:PMC0,VPU_INSTRUCTIONS_EXECUTED_V_PIPE:PMC1"},

    {"VPU_READ_MISS_RATIO",VPU_READ_MISS_RATIO,"Miss ratio for VPU data read","VPU_DATA_READ:PMC0,VPU_DATA_READ_MISS:PMC1"},

    {"VPU_WRITE_MISS_RATIO",VPU_WRITE_MISS_RATIO,"Miss ratio for VPU data write","VPU_DATA_WRITE:PMC0,VPU_DATA_WRITE_MISS:PMC1"},

    {"WRITE_MISS_RATIO",WRITE_MISS_RATIO,"Miss ratio for data write","DATA_WRITE:PMC0,DATA_WRITE_MISS:PMC1"},

};

void
perfmon_printDerivedMetricsPhi(PerfmonGroup group)
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

        case CACHE:
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

            bstrListAdd(fc,2,L1 compute intensity);

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

        case CPI:
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

            bstrListAdd(fc,2,Runtime unhalted [s]);

            bstrListAdd(fc,3,CPI);

            bstrListAdd(fc,4,IPC);

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

                tmpValue = perfmon_getResult(threadId,"PMC0")/perfmon_getResult(threadId,"PMC1");
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

        case L2CACHE:
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

            bstrListAdd(fc,2,L2 compute intensity);

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

        case PAIRING:
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

            bstrListAdd(fc,2,VPipeRatio);

            bstrListAdd(fc,3,PairingRatio);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")/(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"));
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

        case READ_MISS_RATIO:
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

            bstrListAdd(fc,2,Miss ratio);

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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case VECTOR:
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

            bstrListAdd(fc,2,Vectorization Intensity);

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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case VECTOR2:
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

            bstrListAdd(fc,2,Runtime unhalted [s]);

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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case VPU_FILL_RATIO_DBL:
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

            bstrListAdd(fc,2,VPUFillRatio);

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

                tmpValue = perfmon_getResult(threadId,"PMC0")*8/perfmon_getResult(threadId,"PMC1");
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

        case VPU_PAIRING:
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

            bstrListAdd(fc,2,VPipeRatio);

            bstrListAdd(fc,3,PairingRatio);

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

                tmpValue = perfmon_getResult(threadId,"PMC1")/(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"));
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

        case VPU_READ_MISS_RATIO:
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

            bstrListAdd(fc,2,Miss ratio);

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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case VPU_WRITE_MISS_RATIO:
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

            bstrListAdd(fc,2,Miss ratio);

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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;

        case WRITE_MISS_RATIO:
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

            bstrListAdd(fc,2,Miss ratio);

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

            }

            if (cpi_instr)
            {
                stat[cpi_index][0] = (double) cpi_cyc / (double) cpi_instr;
            }
                
            break;


        default:
            fprintf (stderr, "perfmon_printDerivedMetricsphi: Unknown group! Exiting!\n" );
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
perfmon_logDerivedMetricsPhi(PerfmonGroup group, double time,double timeStamp)
{
    int threadId;
    double tmpValue;
    double inverseClock = 1.0 /(double) timer_getCpuClock();

    switch ( group ) 
    {
        
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
                    
                        printf("L1 compute intensity %e ",timeStamp);
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
                    
                        printf("L2 compute intensity %e ",timeStamp);
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
            
        case PAIRING:

                    
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
                    
                        printf("VPipeRatio %e ",timeStamp);
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
                    
                        printf("PairingRatio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"));
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
            
        case READ_MISS_RATIO:

                    
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
                    
                        printf("Miss ratio %e ",timeStamp);
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
            
        case VECTOR:

                    
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
                    
                        printf("Vectorization Intensity %e ",timeStamp);
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
            
        case VECTOR2:

                    
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
                    
            break;
            
        case VPU_FILL_RATIO_DBL:

                    
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
                    
                        printf("VPUFillRatio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC0")*8/perfmon_getResult(threadId,"PMC1");
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
            
        case VPU_PAIRING:

                    
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
                    
                        printf("VPipeRatio %e ",timeStamp);
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
                    
                        printf("PairingRatio %e ",timeStamp);
                        for(threadId=0; threadId < perfmon_numThreads; threadId++)
                        {
                            tmpValue = perfmon_getResult(threadId,"PMC1")/(perfmon_getResult(threadId,"PMC0")-perfmon_getResult(threadId,"PMC1"));
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
            
        case VPU_READ_MISS_RATIO:

                    
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
                    
                        printf("Miss ratio %e ",timeStamp);
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
            
        case VPU_WRITE_MISS_RATIO:

                    
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
                    
                        printf("Miss ratio %e ",timeStamp);
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
            
        case WRITE_MISS_RATIO:

                    
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
                    
                        printf("Miss ratio %e ",timeStamp);
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
            

        default:
                fprintf (stderr, "perfmon_printDerivedMetricsphi: Unknown group! Exiting!\n" );
                exit (EXIT_FAILURE);
                break;
    }
}



static PerfmonGroupHelp phi_group_help[NUM_GROUPS_PHI] = {

    {"CACHE","These metric is a way to measure the computational density of an\n\
application, or how many computations it is performing on average for each\n\
piece of data loaded.  L1 Compute to Data Access Ratio, should be\n\
used to judge suitability of an application for running on the Intel MIC\n\
Architecture. Applications that will perform well on the Intel® MIC\n\
Architecture should be vectorized, and ideally be able to perform multiple\n\
operations on the same pieces of data (or same cachelines).\n\
\n\
"},

    {"CPI","This group measures how efficient the processor works with\n\
regard to instruction throughput. Also important as a standalone\n\
metric is INSTRUCTIONS_RETIRED as it tells you how many instruction\n\
you need to execute for a task. An optimization might show very\n\
low CPI values but execute many more instruction for it.\n\
\n\
"},

    {"L2CACHE","These metric is a way to measure the computational density of an\n\
application, or how many computations it is performing on average for each\n\
piece of data loaded.  L2 Compute to Data Access Ratio, should be\n\
used to judge suitability of an application for running on the Intel MIC\n\
Architecture. Applications that will perform well on the Intel® MIC\n\
Architecture should be vectorized, and ideally be able to perform multiple\n\
operations on the same pieces of data (or same cachelines).\n\
\n\
"},

    {"PAIRING","Pairing ratio\n\
"},

    {"READ_MISS_RATIO","Miss ratio for data read\n\
"},

    {"VECTOR","Vector instructions include instructions that perform floating-point\n\
operations, instructions that load vector registers from memory and store them\n\
to memory, instructions to manipulate vector mask registers, and other special\n\
purpose instructions such as vector shuffle.\n\
"},

    {"VECTOR2","This group measures how efficient the processor works with\n\
regard to instruction throughput. Also important as a standalone\n\
metric is INSTRUCTIONS_RETIRED as it tells you how many instruction\n\
you need to execute for a task. An optimization might show very\n\
low CPI values but execute many more instruction for it.\n\
\n\
"},

    {"VPU_FILL_RATIO_DBL","VPU filling for Double\n\
"},

    {"VPU_PAIRING","VPU Pairing ratio\n\
"},

    {"VPU_READ_MISS_RATIO","Miss ratio for VPU data read\n\
"},

    {"VPU_WRITE_MISS_RATIO","Miss ratio for VPU data write\n\
"},

    {"WRITE_MISS_RATIO","Miss ratio for data write\n\
"},

};

