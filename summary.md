# ���������Ľӿ��źš�λ����������

## �μĴ��� IF_ID

```verilog
module IF_ID(
    input wire rst,
    input wire clk,
    input wire pause,
    input wire nop_,

    input wire [31: 0] pc_,
    input wire [31: 0] inst_,

    input wire pc_fresh
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|rst|1|��λ�ź�|
|clk|1|ʱ���ź�|
|pause|1|��ˮ����ͣ�ź�|
|nop_|1|�����ָ���ź�|
|pc_|32|����PC|
|inst_|32|����ָ��|
|pc_fresh|1|PCˢ���źţ������ã�|

## �μĴ��� ID_EX

```verilog
module ID_EX(
    input wire rst,
    input wire clk,
    input wire pause,
    input wire nop_,

    input wire [31: 0] pc_,

    input wire [31: 0] ext_,
    input wire [2: 0] rf_wsel_,
    input wire rf_we_,
    input wire [4: 0] wR_,
    input wire [31: 0] rD1_,
    input wire [31: 0] rD2_,

    input wire [3: 0] alu_op_,
    input wire alub_sel_,
    input wire pc_sel_,
    input wire [1: 0] npc_op_,
    input wire br_sel_,
    input wire [2: 0] ram_mode_
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|rst|1|��λ�ź�|
|clk|1|ʱ���ź�|
|pause|1|��ˮ����ͣ�ź�|
|nop_|1|�����ָ���ź�|
|pc_|32|����PC|
|ext_|32|������չ�������������|
|rf_wsel_|3|�Ĵ���дѡ���ź�����|
|rf_we_|1|�Ĵ���дʹ������|
|wR_|5|�Ĵ���д��ַ����|
|rD1_|32|�Ĵ������˿�1��������|
|rD2_|32|�Ĵ������˿�2��������|
|alu_op_|4|ALU����������|
|alub_sel_|1|ALU�ڶ���������ѡ���ź�����|
|pc_sel_|1|PCѡ���ź�����|
|npc_op_|2|NPC�����ź�����|
|br_sel_|1|��֧ѡ���ź�����|
|ram_mode_|3|RAM��д�����ź�����|


## �μĴ��� EX_MEM

```verilog
module EX_MEM(
    input wire rst,
    input wire clk,
    input wire pause,
    input wire nop_,

    input wire [31: 0] pc_,

    input wire [31: 0] ext_,
    input wire [2: 0] rf_wsel_,
    input wire rf_we_,
    input wire [4: 0] wR_,
    input wire [31: 0] rD2_,
    input wire [2: 0] ram_mode_,

    input wire [31: 0] alu_c_,
    input wire alu_f_
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|rst|1|��λ�ź�|
|clk|1|ʱ���ź�|
|pause|1|��ˮ����ͣ�ź�|
|nop_|1|�����ָ���ź�|
|pc_|32|����PC|
|ext_|32|������չ�������������|
|rf_wsel_|3|�Ĵ���дѡ���ź�����|
|rf_we_|1|�Ĵ���дʹ������|
|wR_|5|�Ĵ���д��ַ����|
|rD2_|32|�Ĵ������˿�2��������|
|ram_mode_|3|RAM��д�����ź�����|
|alu_c_|32|ALU����������|
|alu_f_|1|ALU��־λ����|

## ǰ�ݵ�Ԫ Forward

```verilog
module Forward(
    input wire [4: 0] rR,
    input wire [31: 0] rf_rD,

    input wire ex_rf_we,
    input wire [4: 0] ex_wR,
    input wire [2: 0] ex_rf_wsel,
    input wire [31: 0] ex_alu_c,
    input wire ex_alu_f,
    input wire [31: 0] ex_pc,
    input wire [31: 0] ex_ext,

    input wire mem_rf_we,
    input wire [4: 0] mem_wR,
    input wire [2: 0] mem_rf_wsel,
    input wire [31: 0] mem_alu_c,
    input wire mem_alu_f,
    input wire [31: 0] mem_pc,
    input wire [31: 0] mem_ext,
    input wire [31: 0] mem_dram_rdo,

    output reg [31: 0] rD
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|rR|5|���˿ڵ�ַ|
|rf_rD|32|�Ĵ������˿�����|
|ex_rf_we|1|EX�μĴ���дʹ��|
|ex_wR|5|EX�μĴ���д��ַ|
|ex_rf_wsel|3|EX�μĴ���дѡ���ź�|
|ex_alu_c|32|EX��ALU������|
|ex_alu_f|1|EX��ALU��־λ|
|ex_pc|32|EX��PC|
|ex_ext|32|EX�η�����չ���������|
|mem_rf_we|1|MEM�μĴ���дʹ��|
|mem_wR|5|MEM�μĴ���д��ַ|
|mem_rf_wsel|3|MEM�μĴ���дѡ���ź�|
|mem_alu_c|32|MEM��ALU������|
|mem_alu_f|1|MEM��ALU��־λ|
|mem_pc|32|MEM��PC|
|mem_ext|32|MEM�η�����չ���������|
|mem_dram_rdo|32|MEM�����������|
|rD|32|ǰ���߼����|

## ���������ѡ���� NPC

```verilog
module NPC(
    input wire [29: 0] pc,
    input wire jal,
    input wire [29: 0] pcjal,
    input wire b,
    input wire [29: 0] pcb, // Branch & jalr

    output reg [29: 0] npc
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|pc|30|����PC|
|jal|1|JALָ���ź�|
|pcjal|30|JALָ���Ŀ���ַ|
|b|1|��ָ֧���ź�|
|pcb|30|��ָ֧���Ŀ���ַ|
|npc|30|���PC|


## ��������� PC

```verilog
module PC(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [29: 0] npc,

    output reg [31: 0] pc
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|rst|1|��λ�ź�|
|clk|1|ʱ���ź�|
|pause|1|��ˮ����ͣ�ź�|
|npc|30|����PC|
|pc|32|���PC|

## �����߼���Ԫ ALU

```verilog
module ALU(
    input wire [31: 0] A,
    input wire [31: 0] B,
    input wire [3: 0] op,

    output reg [31: 0] C,
    output reg zf,
    output reg sf
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|A|32|����˿�A|
|B|32|����˿�B|
|op|4|������|
|C|32|����˿�C|
|zf|1|���־λ|
|sf|1|���ű�־λ|

## ������ Controller

```verilog
module Controller(
    input wire [10: 0] inst,
    
    output wire pc_sel,
    output wire [1: 0] npc_op,
    output wire br_sel,
    output wire rf_we,
    output wire [2: 0] rf_wsel,
    output wire [2: 0] sext_op,
    output wire [3: 0] alu_op,
    output wire alub_sel,
    output wire [2: 0] ram_mode
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|inst|11|��Ҫ��ָ�����λ|
|pc_sel|1|PCѡ���ź�|
|npc_op|2|NPC�����ź�|
|br_sel|1|��֧ѡ���ź�|
|rf_we|1|�Ĵ���дʹ��|
|rf_wsel|3|�Ĵ���дѡ���ź�|
|sext_op|3|������չ�����ź�|
|alu_op|4|ALU������|
|alub_sel|1|ALU�ڶ���������ѡ���ź�|
|ram_mode|3|RAM��д�����ź�|

## ��������� DM

```verilog
module DM(
    input wire [2: 0] op,
    input wire [31: 0] rdo,
    input wire [31: 0] a_i,
    input wire [31: 0] wdi,

    output wire [31: 0] a_o,
    output reg [3: 0] wen,
    output reg [31: 0] wdo,
    output reg [31: 0] rdo_ext
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|op|3|������|
|rdo|32|�����ݣ���DRAM��|
|a_i|32|��ַ���루δ���룩|
|wdi|32|д���ݣ���CPU��|
|a_o|32|��ַ��������룩|
|wen|4|дʹ��|
|wdo|32|д���ݣ���DRAM��|
|rdo_ext|32|�����ݣ�������չ����CPU��|

## �Ĵ����� Register File

```verilog
module RF(
    input wire rst,
    input wire clk,
    input wire [4: 0] rR1,
    input wire [4: 0] rR2,

    input wire [4: 0] wR,
    input wire we,
    input wire [31: 0] wD,

    output reg [31: 0] rD1,
    output reg [31: 0] rD2
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|rst|1|��λ�ź�|
|clk|1|ʱ���ź�|
|rR1|5|���˿�1��ַ|
|rR2|5|���˿�2��ַ|
|wR|5|д�˿ڵ�ַ|
|we|1|дʹ��|
|wD|32|д����|
|rD1|32|���˿�1����|
|rD2|32|���˿�2����|


## ������չ�� SEXT

```verilog
module SEXT(
    input wire [2: 0] op,
    input wire [24: 0] din, // inst[31: 7]

    output reg [31: 0] ext
);
```

|�ӿ�|λ��|��������|
|-|-|-|
|op|3|������|
|din|25|��������|
|ext|32|�������|