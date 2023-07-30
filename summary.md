# 各个部件的接口信号、位宽、功能描述

## 段寄存器 IF_ID

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

|接口|位宽|功能描述|
|-|-|-|
|rst|1|复位信号|
|clk|1|时钟信号|
|pause|1|流水线暂停信号|
|nop_|1|插入空指令信号|
|pc_|32|输入PC|
|inst_|32|输入指令|
|pc_fresh|1|PC刷新信号（已弃用）|

## 段寄存器 ID_EX

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

|接口|位宽|功能描述|
|-|-|-|
|rst|1|复位信号|
|clk|1|时钟信号|
|pause|1|流水线暂停信号|
|nop_|1|插入空指令信号|
|pc_|32|输入PC|
|ext_|32|符号扩展后的立即数输入|
|rf_wsel_|3|寄存器写选择信号输入|
|rf_we_|1|寄存器写使能输入|
|wR_|5|寄存器写地址输入|
|rD1_|32|寄存器读端口1数据输入|
|rD2_|32|寄存器读端口2数据输入|
|alu_op_|4|ALU操作码输入|
|alub_sel_|1|ALU第二个操作数选择信号输入|
|pc_sel_|1|PC选择信号输入|
|npc_op_|2|NPC控制信号输入|
|br_sel_|1|分支选择信号输入|
|ram_mode_|3|RAM读写控制信号输入|


## 段寄存器 EX_MEM

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

|接口|位宽|功能描述|
|-|-|-|
|rst|1|复位信号|
|clk|1|时钟信号|
|pause|1|流水线暂停信号|
|nop_|1|插入空指令信号|
|pc_|32|输入PC|
|ext_|32|符号扩展后的立即数输入|
|rf_wsel_|3|寄存器写选择信号输入|
|rf_we_|1|寄存器写使能输入|
|wR_|5|寄存器写地址输入|
|rD2_|32|寄存器读端口2数据输入|
|ram_mode_|3|RAM读写控制信号输入|
|alu_c_|32|ALU计算结果输入|
|alu_f_|1|ALU标志位输入|

## 前递单元 Forward

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

|接口|位宽|功能描述|
|-|-|-|
|rR|5|读端口地址|
|rf_rD|32|寄存器读端口数据|
|ex_rf_we|1|EX段寄存器写使能|
|ex_wR|5|EX段寄存器写地址|
|ex_rf_wsel|3|EX段寄存器写选择信号|
|ex_alu_c|32|EX段ALU计算结果|
|ex_alu_f|1|EX段ALU标志位|
|ex_pc|32|EX段PC|
|ex_ext|32|EX段符号扩展后的立即数|
|mem_rf_we|1|MEM段寄存器写使能|
|mem_wR|5|MEM段寄存器写地址|
|mem_rf_wsel|3|MEM段寄存器写选择信号|
|mem_alu_c|32|MEM段ALU计算结果|
|mem_alu_f|1|MEM段ALU标志位|
|mem_pc|32|MEM段PC|
|mem_ext|32|MEM段符号扩展后的立即数|
|mem_dram_rdo|32|MEM段主存读数据|
|rD|32|前递逻辑输出|

## 程序计数器选择器 NPC

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

|接口|位宽|功能描述|
|-|-|-|
|pc|30|输入PC|
|jal|1|JAL指令信号|
|pcjal|30|JAL指令的目标地址|
|b|1|分支指令信号|
|pcb|30|分支指令的目标地址|
|npc|30|输出PC|


## 程序计数器 PC

```verilog
module PC(
    input wire rst,
    input wire clk,
    input wire pause,

    input wire [29: 0] npc,

    output reg [31: 0] pc
);
```

|接口|位宽|功能描述|
|-|-|-|
|rst|1|复位信号|
|clk|1|时钟信号|
|pause|1|流水线暂停信号|
|npc|30|输入PC|
|pc|32|输出PC|

## 算术逻辑单元 ALU

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

|接口|位宽|功能描述|
|-|-|-|
|A|32|输入端口A|
|B|32|输入端口B|
|op|4|操作码|
|C|32|输出端口C|
|zf|1|零标志位|
|sf|1|符号标志位|

## 控制器 Controller

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

|接口|位宽|功能描述|
|-|-|-|
|inst|11|必要的指令相关位|
|pc_sel|1|PC选择信号|
|npc_op|2|NPC控制信号|
|br_sel|1|分支选择信号|
|rf_we|1|寄存器写使能|
|rf_wsel|3|寄存器写选择信号|
|sext_op|3|符号扩展控制信号|
|alu_op|4|ALU操作码|
|alub_sel|1|ALU第二个操作数选择信号|
|ram_mode|3|RAM读写控制信号|

## 主存控制器 DM

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

|接口|位宽|功能描述|
|-|-|-|
|op|3|操作码|
|rdo|32|读数据（自DRAM）|
|a_i|32|地址输入（未对齐）|
|wdi|32|写数据（自CPU）|
|a_o|32|地址输出（对齐）|
|wen|4|写使能|
|wdo|32|写数据（至DRAM）|
|rdo_ext|32|读数据（符号扩展，至CPU）|

## 寄存器堆 Register File

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

|接口|位宽|功能描述|
|-|-|-|
|rst|1|复位信号|
|clk|1|时钟信号|
|rR1|5|读端口1地址|
|rR2|5|读端口2地址|
|wR|5|写端口地址|
|we|1|写使能|
|wD|32|写数据|
|rD1|32|读端口1数据|
|rD2|32|读端口2数据|


## 符号扩展器 SEXT

```verilog
module SEXT(
    input wire [2: 0] op,
    input wire [24: 0] din, // inst[31: 7]

    output reg [31: 0] ext
);
```

|接口|位宽|功能描述|
|-|-|-|
|op|3|操作码|
|din|25|输入数据|
|ext|32|输出数据|