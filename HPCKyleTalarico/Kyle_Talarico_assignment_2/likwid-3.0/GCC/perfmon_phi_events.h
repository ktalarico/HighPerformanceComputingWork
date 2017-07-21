/* DONT TOUCH: GENERATED FILE! */

#define NUM_ARCH_EVENTS_PHI 59

static PerfmonEvent  phi_arch_events[NUM_ARCH_EVENTS_PHI] = {
 {"DATA_READ",
   "PMC", 
   0x00,0x00,0,0}
, {"DATA_WRITE",
   "PMC", 
   0x01,0x00,0,0}
, {"DATA_PAGE_WALK",
   "PMC", 
   0x02,0x00,0,0}
, {"DATA_READ_MISS",
   "PMC", 
   0x03,0x00,0,0}
, {"DATA_WRITE_MISS",
   "PMC", 
   0x04,0x00,0,0}
, {"DATA_CACHE_LINES_WRITTEN_BACK",
   "PMC", 
   0x06,0x00,0,0}
, {"MEMORY_ACCESS_BOTH_PIPES",
   "PMC", 
   0x09,0x00,0,0}
, {"BANK_CONFLICTS",
   "PMC", 
   0x0A,0x00,0,0}
, {"CODE_READ",
   "PMC", 
   0x0C,0x00,0,0}
, {"CODE_PAGE_WALK",
   "PMC", 
   0x0D,0x00,0,0}
, {"CODE_CACHE_MISS",
   "PMC", 
   0x0E,0x00,0,0}
, {"L1_DATA_PF1",
   "PMC", 
   0x11,0x00,0,0}
, {"BRANCHES",
   "PMC", 
   0x12,0x00,0,0}
, {"PIPELINE_FLUSHES",
   "PMC", 
   0x15,0x00,0,0}
, {"INSTRUCTIONS_EXECUTED",
   "PMC", 
   0x16,0x00,0,0}
, {"INSTRUCTIONS_EXECUTED_V_PIPE",
   "PMC", 
   0x17,0x00,0,0}
, {"L1_DATA_PF1_MISS",
   "PMC", 
   0x1C,0x00,0,0}
, {"L1_DATA_PF1_DROP",
   "PMC", 
   0x1E,0x00,0,0}
, {"PIPELINE_AGI_STALLS",
   "PMC", 
   0x1F,0x00,0,0}
, {"L1_DATA_HIT_INFLIGHT_PF1",
   "PMC", 
   0x20,0x00,0,0}
, {"PIPELINE_SG_AGI_STALLS",
   "PMC", 
   0x21,0x00,0,0}
, {"DATA_READ_OR_WRITE",
   "PMC", 
   0x28,0x00,0,0}
, {"DATA_READ_MISS_OR_WRITE_MISS",
   "PMC", 
   0x29,0x00,0,0}
, {"CPU_CLK_UNHALTED",
   "PMC", 
   0x2A,0x00,0,0}
, {"BRANCHES_MISPREDICTED",
   "PMC", 
   0x2B,0x00,0,0}
, {"MICROCODE_CYCLES",
   "PMC", 
   0x2C,0x00,0,0}
, {"FE_STALLED",
   "PMC", 
   0x2D,0x00,0,0}
, {"EXEC_STAGE_CYCLES",
   "PMC", 
   0x2E,0x00,0,0}
, {"L1_DATA_PF2",
   "PMC", 
   0x37,0x00,0,0}
, {"L2_DATA_PF1_MISS",
   "PMC", 
   0x38,0x00,0,0}
, {"LONG_DATA_PAGE_WALK",
   "PMC", 
   0x3A,0x00,0,0}
, {"LONG_CODE_PAGE_WALK",
   "PMC", 
   0x3B,0x00,0,0}
, {"L2_READ_HIT_E",
   "PMC", 
   0xC8,0x10,0,0}
, {"L2_READ_HIT_M",
   "PMC", 
   0xC9,0x10,0,0}
, {"L2_READ_HIT_S",
   "PMC", 
   0xCA,0x10,0,0}
, {"L2_READ_MISS",
   "PMC", 
   0xCB,0x10,0,0}
, {"L2_WRITE_HIT",
   "PMC", 
   0xCC,0x10,0,0}
, {"L2_VICTIM_REQ_WITH_DATA",
   "PMC", 
   0xD7,0x10,0,0}
, {"SNP_HITM_BUNIT",
   "PMC", 
   0xE3,0x10,0,0}
, {"SNP_HIT_L2",
   "PMC", 
   0xE6,0x10,0,0}
, {"SNP_HITM_L2",
   "PMC", 
   0xE7,0x10,0,0}
, {"L2_CODE_READ_MISS_CACHE_FILL",
   "PMC", 
   0xF0,0x10,0,0}
, {"L2_DATA_READ_MISS_CACHE_FILL",
   "PMC", 
   0xF1,0x10,0,0}
, {"L2_DATA_WRITE_MISS_CACHE_FILL",
   "PMC", 
   0xF2,0x10,0,0}
, {"L2_CODE_READ_MISS_MEM_FILL",
   "PMC", 
   0xF5,0x10,0,0}
, {"L2_DATA_READ_MISS_MEM_FILL",
   "PMC", 
   0xF6,0x10,0,0}
, {"L2_DATA_WRITE_MISS_MEM_FILL",
   "PMC", 
   0xF7,0x10,0,0}
, {"L2_DATA_PF2",
   "PMC", 
   0xFC,0x10,0,0}
, {"L2_DATA_PF2_DROP",
   "PMC", 
   0xFD,0x10,0,0}
, {"L2_DATA_PF2_MISS",
   "PMC", 
   0xFE,0x10,0,0}
, {"L2_DATA_HIT_INFLIGHT_PF2",
   "PMC", 
   0xFF,0x10,0,0}
, {"VPU_DATA_READ",
   "PMC", 
   0x00,0x20,0,0}
, {"VPU_DATA_WRITE",
   "PMC", 
   0x01,0x20,0,0}
, {"VPU_DATA_READ_MISS",
   "PMC", 
   0x03,0x20,0,0}
, {"VPU_DATA_WRITE_MISS",
   "PMC", 
   0x04,0x20,0,0}
, {"VPU_STALL_REG",
   "PMC", 
   0x05,0x20,0,0}
, {"VPU_INSTRUCTIONS_EXECUTED",
   "PMC", 
   0x16,0x20,0,0}
, {"VPU_INSTRUCTIONS_EXECUTED_V_PIPE",
   "PMC", 
   0x17,0x20,0,0}
, {"VPU_ELEMENTS_ACTIVE",
   "PMC", 
   0x18,0x20,0,0}
};
