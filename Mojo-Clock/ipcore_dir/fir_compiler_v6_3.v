////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: fir_compiler_v6_3.v
// /___/   /\     Timestamp: Mon May 13 21:13:46 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/fir_compiler_v6_3.ngc /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/fir_compiler_v6_3.v 
// Device	: 6slx9tqg144-2
// Input file	: /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/fir_compiler_v6_3.ngc
// Output file	: /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/fir_compiler_v6_3.v
// # of Modules	: 1
// Design Name	: fir_compiler_v6_3
// Xilinx        : /opt/Xilinx/14.4/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fir_compiler_v6_3 (
  aclk, s_axis_data_tvalid, s_axis_data_tready, m_axis_data_tvalid, s_axis_data_tdata, m_axis_data_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input s_axis_data_tvalid;
  output s_axis_data_tready;
  output m_axis_data_tvalid;
  input [7 : 0] s_axis_data_tdata;
  output [15 : 0] m_axis_data_tdata;
  
  // synthesis translate_off
  
  wire NlwRenamedSig_OI_s_axis_data_tready;
  wire \blk00000001/sig000000c0 ;
  wire \blk00000001/sig000000bf ;
  wire \blk00000001/sig000000be ;
  wire \blk00000001/sig000000bd ;
  wire \blk00000001/sig000000bc ;
  wire \blk00000001/sig000000bb ;
  wire \blk00000001/sig000000ba ;
  wire \blk00000001/sig000000b9 ;
  wire \blk00000001/sig000000b8 ;
  wire \blk00000001/sig000000b7 ;
  wire \blk00000001/sig000000b6 ;
  wire \blk00000001/sig000000b5 ;
  wire \blk00000001/sig000000b4 ;
  wire \blk00000001/sig000000b3 ;
  wire \blk00000001/sig000000b2 ;
  wire \blk00000001/sig000000b1 ;
  wire \blk00000001/sig000000b0 ;
  wire \blk00000001/sig000000af ;
  wire \blk00000001/sig000000ae ;
  wire \blk00000001/sig000000ad ;
  wire \blk00000001/sig000000ac ;
  wire \blk00000001/sig000000ab ;
  wire \blk00000001/sig000000aa ;
  wire \blk00000001/sig000000a9 ;
  wire \blk00000001/sig000000a8 ;
  wire \blk00000001/sig000000a7 ;
  wire \blk00000001/sig000000a6 ;
  wire \blk00000001/sig000000a5 ;
  wire \blk00000001/sig000000a4 ;
  wire \blk00000001/sig000000a3 ;
  wire \blk00000001/sig000000a2 ;
  wire \blk00000001/sig000000a1 ;
  wire \blk00000001/sig000000a0 ;
  wire \blk00000001/sig0000009f ;
  wire \blk00000001/sig0000009e ;
  wire \blk00000001/sig0000009d ;
  wire \blk00000001/sig0000009c ;
  wire \blk00000001/sig0000009b ;
  wire \blk00000001/sig0000009a ;
  wire \blk00000001/sig00000099 ;
  wire \blk00000001/sig00000098 ;
  wire \blk00000001/sig00000097 ;
  wire \blk00000001/sig00000096 ;
  wire \blk00000001/sig00000095 ;
  wire \blk00000001/sig00000094 ;
  wire \blk00000001/sig00000093 ;
  wire \blk00000001/sig00000092 ;
  wire \blk00000001/sig00000091 ;
  wire \blk00000001/sig00000090 ;
  wire \blk00000001/sig0000008f ;
  wire \blk00000001/sig0000008e ;
  wire \blk00000001/sig0000008d ;
  wire \blk00000001/sig0000008c ;
  wire \blk00000001/sig0000008b ;
  wire \blk00000001/sig0000008a ;
  wire \blk00000001/sig00000089 ;
  wire \blk00000001/sig00000088 ;
  wire \blk00000001/sig00000087 ;
  wire \blk00000001/sig00000086 ;
  wire \blk00000001/sig00000085 ;
  wire \blk00000001/sig00000084 ;
  wire \blk00000001/sig00000083 ;
  wire \blk00000001/sig00000082 ;
  wire \blk00000001/sig00000081 ;
  wire \blk00000001/sig00000080 ;
  wire \blk00000001/sig0000007f ;
  wire \blk00000001/sig0000007e ;
  wire \blk00000001/sig0000007d ;
  wire \blk00000001/sig0000007c ;
  wire \blk00000001/sig0000007b ;
  wire \blk00000001/sig0000007a ;
  wire \blk00000001/sig00000079 ;
  wire \blk00000001/sig00000078 ;
  wire \blk00000001/sig00000077 ;
  wire \blk00000001/sig00000076 ;
  wire \blk00000001/sig00000075 ;
  wire \blk00000001/sig00000074 ;
  wire \blk00000001/sig00000073 ;
  wire \blk00000001/sig00000072 ;
  wire \blk00000001/sig00000071 ;
  wire \blk00000001/sig00000070 ;
  wire \blk00000001/sig0000006f ;
  wire \blk00000001/sig0000006e ;
  wire \blk00000001/sig0000006d ;
  wire \blk00000001/sig0000006c ;
  wire \blk00000001/sig0000006b ;
  wire \blk00000001/sig0000006a ;
  wire \blk00000001/sig00000069 ;
  wire \blk00000001/sig00000068 ;
  wire \blk00000001/sig00000067 ;
  wire \blk00000001/sig00000066 ;
  wire \blk00000001/sig00000065 ;
  wire \blk00000001/sig00000064 ;
  wire \blk00000001/sig00000063 ;
  wire \blk00000001/sig00000062 ;
  wire \blk00000001/sig00000061 ;
  wire \blk00000001/sig00000060 ;
  wire \blk00000001/sig0000005f ;
  wire \blk00000001/sig0000005e ;
  wire \blk00000001/sig0000005d ;
  wire \blk00000001/sig0000005c ;
  wire \blk00000001/sig0000005b ;
  wire \blk00000001/sig0000005a ;
  wire \blk00000001/sig00000059 ;
  wire \blk00000001/sig00000058 ;
  wire \blk00000001/sig00000057 ;
  wire \blk00000001/sig00000056 ;
  wire \blk00000001/sig00000055 ;
  wire \blk00000001/sig00000054 ;
  wire \blk00000001/sig00000053 ;
  wire \blk00000001/sig00000052 ;
  wire \blk00000001/sig00000051 ;
  wire \blk00000001/sig00000050 ;
  wire \blk00000001/sig0000004f ;
  wire \blk00000001/sig0000004e ;
  wire \blk00000001/sig0000004d ;
  wire \blk00000001/sig0000004c ;
  wire \blk00000001/sig0000004b ;
  wire \blk00000001/sig0000004a ;
  wire \blk00000001/sig00000049 ;
  wire \blk00000001/sig00000048 ;
  wire \blk00000001/sig00000047 ;
  wire \blk00000001/sig00000046 ;
  wire \blk00000001/sig00000045 ;
  wire \blk00000001/sig00000044 ;
  wire \blk00000001/sig00000043 ;
  wire \blk00000001/sig00000042 ;
  wire \blk00000001/sig00000041 ;
  wire \blk00000001/sig00000040 ;
  wire \blk00000001/sig0000003f ;
  wire \blk00000001/sig0000003e ;
  wire \blk00000001/sig0000003d ;
  wire \blk00000001/sig0000003c ;
  wire \blk00000001/sig0000003b ;
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \blk00000001/sig00000038 ;
  wire \blk00000001/sig00000037 ;
  wire \blk00000001/sig00000036 ;
  wire \blk00000001/sig00000035 ;
  wire \blk00000001/sig00000034 ;
  wire \blk00000001/sig00000033 ;
  wire \blk00000001/sig00000032 ;
  wire \blk00000001/sig00000031 ;
  wire \blk00000001/sig00000030 ;
  wire \blk00000001/sig0000002f ;
  wire \blk00000001/sig0000002e ;
  wire \blk00000001/sig0000002d ;
  wire \blk00000001/sig0000002c ;
  wire \blk00000001/sig0000002b ;
  wire \blk00000001/sig0000002a ;
  wire \blk00000001/sig00000029 ;
  wire \blk00000001/sig00000028 ;
  wire \blk00000001/sig00000027 ;
  wire \blk00000001/sig00000026 ;
  wire \blk00000001/sig00000025 ;
  wire \blk00000001/sig00000024 ;
  wire \blk00000001/sig00000023 ;
  wire \blk00000001/sig00000022 ;
  wire \blk00000001/sig00000021 ;
  wire \blk00000001/sig00000020 ;
  wire \blk00000001/sig0000001f ;
  wire \blk00000001/sig0000001e ;
  wire \blk00000001/sig0000001d ;
  wire \blk00000001/sig0000001c ;
  wire \blk00000001/sig0000001b ;
  wire \blk00000001/sig0000001a ;
  wire \blk00000001/sig00000019 ;
  wire \blk00000001/sig00000018 ;
  wire \blk00000001/sig00000017 ;
  wire \blk00000001/blk0000001d/sig000000cc ;
  wire \blk00000001/blk0000001d/sig000000cb ;
  wire \blk00000001/blk0000001d/sig000000c7 ;
  wire \blk00000001/blk0000002e/sig000000e1 ;
  wire \blk00000001/blk0000002e/sig000000e0 ;
  wire \blk00000001/blk0000002e/sig000000df ;
  wire \blk00000001/blk0000002e/sig000000de ;
  wire \blk00000001/blk0000002e/sig000000dd ;
  wire \blk00000001/blk0000002e/sig000000dc ;
  wire \blk00000001/blk0000002e/sig000000db ;
  wire \blk00000001/blk0000002e/sig000000da ;
  wire \blk00000001/blk0000002e/sig000000d9 ;
  wire \blk00000001/blk0000002e/sig000000d8 ;
  wire \blk00000001/blk0000002e/sig000000d7 ;
  wire \blk00000001/blk0000002e/sig000000d6 ;
  wire \blk00000001/blk0000002e/sig000000d5 ;
  wire \blk00000001/blk0000004d/sig00000136 ;
  wire \blk00000001/blk0000004d/sig00000135 ;
  wire \blk00000001/blk0000004d/sig00000134 ;
  wire \blk00000001/blk0000004d/sig00000133 ;
  wire \blk00000001/blk0000004d/sig00000132 ;
  wire \blk00000001/blk0000004d/sig00000131 ;
  wire \blk00000001/blk0000004d/sig00000130 ;
  wire \blk00000001/blk0000004d/sig0000012f ;
  wire \blk00000001/blk0000004d/sig0000012e ;
  wire \blk00000001/blk0000004d/sig0000012d ;
  wire \blk00000001/blk0000004d/sig0000012c ;
  wire \blk00000001/blk0000004d/sig0000012b ;
  wire \blk00000001/blk0000004d/sig0000012a ;
  wire \blk00000001/blk0000004d/sig00000129 ;
  wire \blk00000001/blk0000004d/sig00000128 ;
  wire \blk00000001/blk0000004d/sig00000127 ;
  wire \blk00000001/blk0000004d/sig00000126 ;
  wire \blk00000001/blk0000004d/sig00000125 ;
  wire \blk00000001/blk0000004d/sig00000124 ;
  wire \blk00000001/blk0000004d/sig00000123 ;
  wire \blk00000001/blk0000004d/sig00000122 ;
  wire \blk00000001/blk0000004d/sig00000121 ;
  wire \blk00000001/blk0000004d/sig00000120 ;
  wire \blk00000001/blk0000004d/sig0000011f ;
  wire \blk00000001/blk0000004d/sig0000011e ;
  wire \blk00000001/blk0000004d/sig0000011d ;
  wire \blk00000001/blk0000004d/sig0000011c ;
  wire \blk00000001/blk0000004d/sig0000011b ;
  wire \blk00000001/blk0000004d/sig0000011a ;
  wire \blk00000001/blk0000004d/sig00000119 ;
  wire \blk00000001/blk0000004d/sig00000118 ;
  wire \blk00000001/blk0000004d/sig00000117 ;
  wire \blk00000001/blk0000004d/sig00000116 ;
  wire \blk00000001/blk0000004d/sig00000115 ;
  wire \blk00000001/blk0000004d/sig00000114 ;
  wire \blk00000001/blk0000004d/sig00000113 ;
  wire \blk00000001/blk0000004d/sig00000112 ;
  wire \blk00000001/blk0000004d/sig00000111 ;
  wire \blk00000001/blk0000004d/sig00000110 ;
  wire \blk00000001/blk0000004d/sig0000010f ;
  wire \blk00000001/blk0000004d/sig0000010e ;
  wire \blk00000001/blk0000004d/sig0000010d ;
  wire \blk00000001/blk0000004d/sig0000010c ;
  wire \blk00000001/blk0000004d/sig0000010b ;
  wire \blk00000001/blk0000004d/sig0000010a ;
  wire \blk00000001/blk0000004d/sig00000109 ;
  wire \blk00000001/blk0000004d/sig00000108 ;
  wire \blk00000001/blk0000004d/sig00000107 ;
  wire \blk00000001/blk0000004d/sig00000106 ;
  wire \blk00000001/blk0000004d/sig00000105 ;
  wire \blk00000001/blk0000004d/sig00000104 ;
  wire \blk00000001/blk0000004d/sig00000103 ;
  wire \blk00000001/blk0000004d/sig00000102 ;
  wire \blk00000001/blk0000004d/sig00000101 ;
  wire \blk00000001/blk0000004d/sig00000100 ;
  wire \blk00000001/blk0000004d/sig000000fd ;
  wire \blk00000001/blk0000004d/sig000000fc ;
  wire \blk00000001/blk0000004d/sig000000fb ;
  wire \blk00000001/blk0000004d/sig000000fa ;
  wire \blk00000001/blk0000004d/sig000000f9 ;
  wire \blk00000001/blk0000004d/blk00000064/sig0000014b ;
  wire \blk00000001/blk0000004d/blk00000064/sig0000014a ;
  wire \NLW_blk00000001/blk000000cd_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000cb_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000c9_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk000000c7_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_CARRYOUTF_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_CARRYOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_P<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000090_M<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_CARRYOUTF_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_CARRYOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_P<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000008f_M<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000001d/blk00000022_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000001d/blk00000021_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000004d/blk00000064/blk00000068_SPO_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000004d/blk00000064/blk00000067_SPO_UNCONNECTED ;
  wire [15 : 0] NlwRenamedSig_OI_m_axis_data_tdata;
  assign
    m_axis_data_tdata[15] = NlwRenamedSig_OI_m_axis_data_tdata[15],
    m_axis_data_tdata[14] = NlwRenamedSig_OI_m_axis_data_tdata[14],
    m_axis_data_tdata[13] = NlwRenamedSig_OI_m_axis_data_tdata[13],
    m_axis_data_tdata[12] = NlwRenamedSig_OI_m_axis_data_tdata[12],
    m_axis_data_tdata[11] = NlwRenamedSig_OI_m_axis_data_tdata[11],
    m_axis_data_tdata[10] = NlwRenamedSig_OI_m_axis_data_tdata[10],
    m_axis_data_tdata[9] = NlwRenamedSig_OI_m_axis_data_tdata[9],
    m_axis_data_tdata[8] = NlwRenamedSig_OI_m_axis_data_tdata[8],
    m_axis_data_tdata[7] = NlwRenamedSig_OI_m_axis_data_tdata[7],
    m_axis_data_tdata[6] = NlwRenamedSig_OI_m_axis_data_tdata[6],
    m_axis_data_tdata[5] = NlwRenamedSig_OI_m_axis_data_tdata[5],
    m_axis_data_tdata[4] = NlwRenamedSig_OI_m_axis_data_tdata[4],
    m_axis_data_tdata[3] = NlwRenamedSig_OI_m_axis_data_tdata[3],
    m_axis_data_tdata[2] = NlwRenamedSig_OI_m_axis_data_tdata[2],
    m_axis_data_tdata[1] = NlwRenamedSig_OI_m_axis_data_tdata[1],
    m_axis_data_tdata[0] = NlwRenamedSig_OI_m_axis_data_tdata[0],
    s_axis_data_tready = NlwRenamedSig_OI_s_axis_data_tready;
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ce  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig000000c0 ),
    .Q(\blk00000001/sig0000003f )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000cd  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000093 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000017 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000071 ),
    .Q(\blk00000001/sig000000c0 ),
    .Q15(\NLW_blk00000001/blk000000cd_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000cc  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig0000003e )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000cb  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000093 ),
    .A2(\blk00000001/sig00000017 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000017 ),
    .CLK(aclk),
    .D(\blk00000001/sig0000003c ),
    .Q(\blk00000001/sig000000bf ),
    .Q15(\NLW_blk00000001/blk000000cb_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ca  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig000000be ),
    .Q(\blk00000001/sig00000040 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c9  (
    .A0(\blk00000001/sig00000017 ),
    .A1(\blk00000001/sig00000093 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000017 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000074 ),
    .Q(\blk00000001/sig000000be ),
    .Q15(\NLW_blk00000001/blk000000c9_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000c8  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig00000071 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk000000c7  (
    .A0(\blk00000001/sig00000093 ),
    .A1(\blk00000001/sig00000093 ),
    .A2(\blk00000001/sig00000093 ),
    .A3(\blk00000001/sig00000093 ),
    .CE(\blk00000001/sig00000017 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000039 ),
    .Q(\blk00000001/sig000000bd ),
    .Q15(\NLW_blk00000001/blk000000c7_Q15_UNCONNECTED )
  );
  INV   \blk00000001/blk000000c6  (
    .I(\blk00000001/sig00000071 ),
    .O(\blk00000001/sig00000098 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \blk00000001/blk000000c5  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000bc )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \blk00000001/blk000000c4  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000089 ),
    .I2(\blk00000001/sig0000002b ),
    .I3(\blk00000001/sig0000002e ),
    .I4(\blk00000001/sig0000002d ),
    .I5(\blk00000001/sig0000002c ),
    .O(\blk00000001/sig000000bb )
  );
  MUXF7   \blk00000001/blk000000c3  (
    .I0(\blk00000001/sig000000bb ),
    .I1(\blk00000001/sig000000bc ),
    .S(\blk00000001/sig0000003d ),
    .O(\blk00000001/sig000000b6 )
  );
  LUT3 #(
    .INIT ( 8'h1A ))
  \blk00000001/blk000000c2  (
    .I0(\blk00000001/sig0000002e ),
    .I1(\blk00000001/sig0000003d ),
    .I2(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000ba )
  );
  LUT4 #(
    .INIT ( 16'h06AA ))
  \blk00000001/blk000000c1  (
    .I0(\blk00000001/sig0000002d ),
    .I1(\blk00000001/sig0000002e ),
    .I2(\blk00000001/sig0000003d ),
    .I3(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000b9 )
  );
  LUT5 #(
    .INIT ( 32'h1444CCCC ))
  \blk00000001/blk000000c0  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig0000002c ),
    .I2(\blk00000001/sig0000002d ),
    .I3(\blk00000001/sig0000002e ),
    .I4(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000b8 )
  );
  LUT6 #(
    .INIT ( 64'h14444444CCCCCCCC ))
  \blk00000001/blk000000bf  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig0000002b ),
    .I2(\blk00000001/sig0000002c ),
    .I3(\blk00000001/sig0000002e ),
    .I4(\blk00000001/sig0000002d ),
    .I5(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig000000b7 )
  );
  LUT4 #(
    .INIT ( 16'h3A0A ))
  \blk00000001/blk000000be  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig0000003d ),
    .I2(\blk00000001/sig00000089 ),
    .I3(\blk00000001/sig0000002f ),
    .O(\blk00000001/sig000000b5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bd  (
    .C(aclk),
    .D(\blk00000001/sig000000ba ),
    .Q(\blk00000001/sig0000002e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bc  (
    .C(aclk),
    .D(\blk00000001/sig000000b9 ),
    .Q(\blk00000001/sig0000002d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000bb  (
    .C(aclk),
    .D(\blk00000001/sig000000b8 ),
    .Q(\blk00000001/sig0000002c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ba  (
    .C(aclk),
    .D(\blk00000001/sig000000b7 ),
    .Q(\blk00000001/sig0000002b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b9  (
    .C(aclk),
    .D(\blk00000001/sig000000b6 ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b8  (
    .C(aclk),
    .D(\blk00000001/sig000000b5 ),
    .Q(\blk00000001/sig00000029 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \blk00000001/blk000000b7  (
    .I0(\blk00000001/sig00000040 ),
    .I1(\blk00000001/sig0000003f ),
    .O(\blk00000001/sig000000b3 )
  );
  LUT3 #(
    .INIT ( 8'hF9 ))
  \blk00000001/blk000000b6  (
    .I0(\blk00000001/sig00000034 ),
    .I1(\blk00000001/sig00000028 ),
    .I2(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig000000b2 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \blk00000001/blk000000b5  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000028 ),
    .O(\blk00000001/sig000000b1 )
  );
  LUT4 #(
    .INIT ( 16'hFFA9 ))
  \blk00000001/blk000000b4  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig00000028 ),
    .I2(\blk00000001/sig00000034 ),
    .I3(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig000000b0 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFAAA9 ))
  \blk00000001/blk000000b3  (
    .I0(\blk00000001/sig00000036 ),
    .I1(\blk00000001/sig00000035 ),
    .I2(\blk00000001/sig00000028 ),
    .I3(\blk00000001/sig00000034 ),
    .I4(\blk00000001/sig00000039 ),
    .O(\blk00000001/sig000000af )
  );
  LUT4 #(
    .INIT ( 16'h3A0A ))
  \blk00000001/blk000000b2  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig00000039 ),
    .I2(\blk00000001/sig00000089 ),
    .I3(\blk00000001/sig00000031 ),
    .O(\blk00000001/sig000000b4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b1  (
    .C(aclk),
    .D(\blk00000001/sig000000b4 ),
    .Q(\blk00000001/sig00000037 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \blk00000001/blk000000b0  (
    .C(aclk),
    .D(\blk00000001/sig000000b3 ),
    .Q(\blk00000001/sig0000003a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000af  (
    .C(aclk),
    .D(\blk00000001/sig00000040 ),
    .Q(\blk00000001/sig0000003b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ae  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/sig000000b2 ),
    .Q(\blk00000001/sig00000034 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ad  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/sig000000b1 ),
    .Q(\blk00000001/sig00000028 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ac  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/sig000000b0 ),
    .Q(\blk00000001/sig00000035 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ab  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/sig000000af ),
    .Q(\blk00000001/sig00000036 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \blk00000001/blk000000aa  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000030 ),
    .O(\blk00000001/sig000000ae )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000a9  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/sig000000ae ),
    .Q(\blk00000001/sig00000038 )
  );
  LUT6 #(
    .INIT ( 64'h0000FF008080FF00 ))
  \blk00000001/blk000000a8  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig0000002b ),
    .I2(\blk00000001/sig0000002c ),
    .I3(\blk00000001/sig0000003d ),
    .I4(\blk00000001/sig00000089 ),
    .I5(\blk00000001/sig000000ad ),
    .O(\blk00000001/sig00000032 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \blk00000001/blk000000a7  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig0000002d ),
    .I2(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig000000ad )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk000000a6  (
    .I0(NlwRenamedSig_OI_s_axis_data_tready),
    .I1(s_axis_data_tvalid),
    .O(\blk00000001/sig00000094 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \blk00000001/blk000000a5  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig00000089 ),
    .O(\blk00000001/sig00000033 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000a4  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[0]),
    .I2(\blk00000001/sig0000009e ),
    .O(\blk00000001/sig00000027 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000a3  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[1]),
    .I2(\blk00000001/sig0000009f ),
    .O(\blk00000001/sig00000026 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000a2  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[2]),
    .I2(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig00000025 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000a1  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[3]),
    .I2(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig00000024 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk000000a0  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[4]),
    .I2(\blk00000001/sig000000a2 ),
    .O(\blk00000001/sig00000023 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000009f  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[5]),
    .I2(\blk00000001/sig000000a3 ),
    .O(\blk00000001/sig00000022 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000009e  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[6]),
    .I2(\blk00000001/sig000000a4 ),
    .O(\blk00000001/sig00000021 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000009d  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[7]),
    .I2(\blk00000001/sig000000a5 ),
    .O(\blk00000001/sig00000020 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000009c  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[8]),
    .I2(\blk00000001/sig000000a6 ),
    .O(\blk00000001/sig0000001f )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000009b  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[9]),
    .I2(\blk00000001/sig000000a7 ),
    .O(\blk00000001/sig0000001e )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000009a  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[10]),
    .I2(\blk00000001/sig000000a8 ),
    .O(\blk00000001/sig0000001d )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000099  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[11]),
    .I2(\blk00000001/sig000000a9 ),
    .O(\blk00000001/sig0000001c )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000098  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[12]),
    .I2(\blk00000001/sig000000aa ),
    .O(\blk00000001/sig0000001b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000097  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[13]),
    .I2(\blk00000001/sig000000ab ),
    .O(\blk00000001/sig0000001a )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000096  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[14]),
    .I2(\blk00000001/sig000000ac ),
    .O(\blk00000001/sig00000019 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000095  (
    .I0(\blk00000001/sig0000003e ),
    .I1(NlwRenamedSig_OI_m_axis_data_tdata[15]),
    .I2(\blk00000001/sig0000009a ),
    .O(\blk00000001/sig00000018 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \blk00000001/blk00000094  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig0000002a ),
    .I2(\blk00000001/sig0000002b ),
    .I3(\blk00000001/sig0000002c ),
    .I4(\blk00000001/sig0000002d ),
    .I5(\blk00000001/sig0000002e ),
    .O(\blk00000001/sig0000002f )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAAAAAAAA9 ))
  \blk00000001/blk00000093  (
    .I0(\blk00000001/sig00000038 ),
    .I1(\blk00000001/sig00000036 ),
    .I2(\blk00000001/sig00000035 ),
    .I3(\blk00000001/sig00000028 ),
    .I4(\blk00000001/sig00000034 ),
    .I5(\blk00000001/sig00000037 ),
    .O(\blk00000001/sig00000030 )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA9 ))
  \blk00000001/blk00000092  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig00000036 ),
    .I2(\blk00000001/sig00000035 ),
    .I3(\blk00000001/sig00000028 ),
    .I4(\blk00000001/sig00000034 ),
    .O(\blk00000001/sig00000031 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000091  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig0000003b ),
    .Q(\blk00000001/sig00000099 )
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 0 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CARRYOUTREG ( 0 ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \blk00000001/blk00000090  (
    .CECARRYIN(\blk00000001/sig00000017 ),
    .RSTC(\blk00000001/sig00000093 ),
    .RSTCARRYIN(\blk00000001/sig00000093 ),
    .CED(\blk00000001/sig00000099 ),
    .RSTD(\blk00000001/sig00000093 ),
    .CEOPMODE(\blk00000001/sig00000017 ),
    .CEC(\blk00000001/sig00000017 ),
    .CARRYOUTF(\NLW_blk00000001/blk00000090_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(\blk00000001/sig00000093 ),
    .RSTM(\blk00000001/sig00000093 ),
    .CLK(aclk),
    .RSTB(\blk00000001/sig00000093 ),
    .CEM(\blk00000001/sig00000017 ),
    .CEB(\blk00000001/sig00000099 ),
    .CARRYIN(\blk00000001/sig00000093 ),
    .CEP(\blk00000001/sig00000017 ),
    .CEA(\blk00000001/sig00000099 ),
    .CARRYOUT(\NLW_blk00000001/blk00000090_CARRYOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig00000093 ),
    .RSTP(\blk00000001/sig00000093 ),
    .B({\blk00000001/sig000000ac , \blk00000001/sig000000ab , \blk00000001/sig000000aa , \blk00000001/sig000000a9 , \blk00000001/sig000000a8 , 
\blk00000001/sig000000a7 , \blk00000001/sig000000a6 , \blk00000001/sig000000a5 , \blk00000001/sig000000a4 , \blk00000001/sig000000a3 , 
\blk00000001/sig000000a2 , \blk00000001/sig000000a1 , \blk00000001/sig000000a0 , \blk00000001/sig0000009f , \blk00000001/sig0000009e , 
\blk00000001/sig0000009d , \blk00000001/sig0000009c , \blk00000001/sig0000009b }),
    .BCOUT({\NLW_blk00000001/blk00000090_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000090_BCOUT<0>_UNCONNECTED }),
    .PCIN({\blk00000001/sig00000070 , \blk00000001/sig0000006f , \blk00000001/sig0000006e , \blk00000001/sig0000006d , \blk00000001/sig0000006c , 
\blk00000001/sig0000006b , \blk00000001/sig0000006a , \blk00000001/sig00000069 , \blk00000001/sig00000068 , \blk00000001/sig00000067 , 
\blk00000001/sig00000066 , \blk00000001/sig00000065 , \blk00000001/sig00000064 , \blk00000001/sig00000063 , \blk00000001/sig00000062 , 
\blk00000001/sig00000061 , \blk00000001/sig00000060 , \blk00000001/sig0000005f , \blk00000001/sig0000005e , \blk00000001/sig0000005d , 
\blk00000001/sig0000005c , \blk00000001/sig0000005b , \blk00000001/sig0000005a , \blk00000001/sig00000059 , \blk00000001/sig00000058 , 
\blk00000001/sig00000057 , \blk00000001/sig00000056 , \blk00000001/sig00000055 , \blk00000001/sig00000054 , \blk00000001/sig00000053 , 
\blk00000001/sig00000052 , \blk00000001/sig00000051 , \blk00000001/sig00000050 , \blk00000001/sig0000004f , \blk00000001/sig0000004e , 
\blk00000001/sig0000004d , \blk00000001/sig0000004c , \blk00000001/sig0000004b , \blk00000001/sig0000004a , \blk00000001/sig00000049 , 
\blk00000001/sig00000048 , \blk00000001/sig00000047 , \blk00000001/sig00000046 , \blk00000001/sig00000045 , \blk00000001/sig00000044 , 
\blk00000001/sig00000043 , \blk00000001/sig00000042 , \blk00000001/sig00000041 }),
    .C({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .P({\NLW_blk00000001/blk00000090_P<47>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<45>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<44>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<43>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<42>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<41>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<40>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<39>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<38>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<37>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<36>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<35>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<33>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<32>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<31>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<30>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<29>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<27>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<26>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<25>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<24>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<23>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_P<21>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<20>_UNCONNECTED , \NLW_blk00000001/blk00000090_P<19>_UNCONNECTED , 
\blk00000001/sig0000009a , \blk00000001/sig000000ac , \blk00000001/sig000000ab , \blk00000001/sig000000aa , \blk00000001/sig000000a9 , 
\blk00000001/sig000000a8 , \blk00000001/sig000000a7 , \blk00000001/sig000000a6 , \blk00000001/sig000000a5 , \blk00000001/sig000000a4 , 
\blk00000001/sig000000a3 , \blk00000001/sig000000a2 , \blk00000001/sig000000a1 , \blk00000001/sig000000a0 , \blk00000001/sig0000009f , 
\blk00000001/sig0000009e , \blk00000001/sig0000009d , \blk00000001/sig0000009c , \blk00000001/sig0000009b }),
    .OPMODE({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig0000003b , \blk00000001/sig0000003a , \blk00000001/sig00000093 }),
    .D({\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , 
\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , 
\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , 
\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a }),
    .PCOUT({\NLW_blk00000001/blk00000090_PCOUT<47>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<45>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<43>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<41>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<39>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<37>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<35>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<33>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<31>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<29>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<27>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<25>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<23>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<21>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<19>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_PCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000090_PCOUT<0>_UNCONNECTED }),
    .A({\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , 
\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , 
\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a , 
\blk00000001/sig0000009a , \blk00000001/sig0000009a , \blk00000001/sig0000009a }),
    .M({\NLW_blk00000001/blk00000090_M<35>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<33>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<32>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<31>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<30>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<29>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<27>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<26>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<25>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<24>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<23>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<21>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<20>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<19>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<18>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<17>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<15>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<14>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<13>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<12>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<11>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<9>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<8>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<7>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<6>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<5>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<3>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<2>_UNCONNECTED , \NLW_blk00000001/blk00000090_M<1>_UNCONNECTED , 
\NLW_blk00000001/blk00000090_M<0>_UNCONNECTED })
  );
  DSP48A1 #(
    .A0REG ( 0 ),
    .A1REG ( 1 ),
    .B0REG ( 1 ),
    .B1REG ( 1 ),
    .CARRYINREG ( 0 ),
    .CARRYINSEL ( "OPMODE5" ),
    .CARRYOUTREG ( 0 ),
    .CREG ( 1 ),
    .DREG ( 1 ),
    .MREG ( 1 ),
    .OPMODEREG ( 1 ),
    .PREG ( 1 ),
    .RSTTYPE ( "SYNC" ))
  \blk00000001/blk0000008f  (
    .CECARRYIN(\blk00000001/sig00000017 ),
    .RSTC(\blk00000001/sig00000093 ),
    .RSTCARRYIN(\blk00000001/sig00000093 ),
    .CED(\blk00000001/sig00000017 ),
    .RSTD(\blk00000001/sig00000093 ),
    .CEOPMODE(\blk00000001/sig00000017 ),
    .CEC(\blk00000001/sig00000017 ),
    .CARRYOUTF(\NLW_blk00000001/blk0000008f_CARRYOUTF_UNCONNECTED ),
    .RSTOPMODE(\blk00000001/sig00000093 ),
    .RSTM(\blk00000001/sig00000093 ),
    .CLK(aclk),
    .RSTB(\blk00000001/sig00000093 ),
    .CEM(\blk00000001/sig00000017 ),
    .CEB(\blk00000001/sig00000017 ),
    .CARRYIN(\blk00000001/sig00000093 ),
    .CEP(\blk00000001/sig00000017 ),
    .CEA(\blk00000001/sig00000017 ),
    .CARRYOUT(\NLW_blk00000001/blk0000008f_CARRYOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig00000093 ),
    .RSTP(\blk00000001/sig00000093 ),
    .B({\blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , 
\blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , 
\blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000073 , 
\blk00000001/sig00000073 , \blk00000001/sig00000073 , \blk00000001/sig00000072 }),
    .BCOUT({\NLW_blk00000001/blk0000008f_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk0000008f_BCOUT<0>_UNCONNECTED }),
    .PCIN({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .C({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , 
\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 }),
    .P({\NLW_blk00000001/blk0000008f_P<47>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<46>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<45>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<44>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<43>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<42>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<41>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<40>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<39>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<38>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<37>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<36>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<35>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<33>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<32>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<31>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<30>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<29>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<28>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<27>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<26>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<25>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<24>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<23>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<22>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<21>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<20>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<19>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<18>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<17>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<16>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<15>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<14>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<13>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<12>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<11>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<10>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<9>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<8>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<7>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<6>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<5>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<4>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<3>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<2>_UNCONNECTED , \NLW_blk00000001/blk0000008f_P<1>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_P<0>_UNCONNECTED }),
    .OPMODE({\blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000093 , \blk00000001/sig00000098 , \blk00000001/sig00000017 , 
\blk00000001/sig00000017 , \blk00000001/sig00000093 , \blk00000001/sig00000017 }),
    .D({\blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , 
\blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , 
\blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000078 , 
\blk00000001/sig00000078 , \blk00000001/sig00000078 , \blk00000001/sig00000077 }),
    .PCOUT({\blk00000001/sig00000070 , \blk00000001/sig0000006f , \blk00000001/sig0000006e , \blk00000001/sig0000006d , \blk00000001/sig0000006c , 
\blk00000001/sig0000006b , \blk00000001/sig0000006a , \blk00000001/sig00000069 , \blk00000001/sig00000068 , \blk00000001/sig00000067 , 
\blk00000001/sig00000066 , \blk00000001/sig00000065 , \blk00000001/sig00000064 , \blk00000001/sig00000063 , \blk00000001/sig00000062 , 
\blk00000001/sig00000061 , \blk00000001/sig00000060 , \blk00000001/sig0000005f , \blk00000001/sig0000005e , \blk00000001/sig0000005d , 
\blk00000001/sig0000005c , \blk00000001/sig0000005b , \blk00000001/sig0000005a , \blk00000001/sig00000059 , \blk00000001/sig00000058 , 
\blk00000001/sig00000057 , \blk00000001/sig00000056 , \blk00000001/sig00000055 , \blk00000001/sig00000054 , \blk00000001/sig00000053 , 
\blk00000001/sig00000052 , \blk00000001/sig00000051 , \blk00000001/sig00000050 , \blk00000001/sig0000004f , \blk00000001/sig0000004e , 
\blk00000001/sig0000004d , \blk00000001/sig0000004c , \blk00000001/sig0000004b , \blk00000001/sig0000004a , \blk00000001/sig00000049 , 
\blk00000001/sig00000048 , \blk00000001/sig00000047 , \blk00000001/sig00000046 , \blk00000001/sig00000045 , \blk00000001/sig00000044 , 
\blk00000001/sig00000043 , \blk00000001/sig00000042 , \blk00000001/sig00000041 }),
    .A({\blk00000001/sig00000088 , \blk00000001/sig00000088 , \blk00000001/sig00000088 , \blk00000001/sig00000087 , \blk00000001/sig00000086 , 
\blk00000001/sig00000085 , \blk00000001/sig00000084 , \blk00000001/sig00000083 , \blk00000001/sig00000082 , \blk00000001/sig00000081 , 
\blk00000001/sig00000080 , \blk00000001/sig0000007f , \blk00000001/sig0000007e , \blk00000001/sig0000007d , \blk00000001/sig0000007c , 
\blk00000001/sig0000007b , \blk00000001/sig0000007a , \blk00000001/sig00000079 }),
    .M({\NLW_blk00000001/blk0000008f_M<35>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<34>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<33>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<32>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<31>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<30>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<29>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<28>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<27>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<26>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<25>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<24>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<23>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<22>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<21>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<20>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<19>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<18>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<17>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<16>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<15>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<14>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<13>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<12>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<11>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<10>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<9>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<8>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<7>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<6>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<5>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<4>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<3>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<2>_UNCONNECTED , \NLW_blk00000001/blk0000008f_M<1>_UNCONNECTED , 
\NLW_blk00000001/blk0000008f_M<0>_UNCONNECTED })
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004c  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000089 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig00000074 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000028 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008a )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000034 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002b  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000035 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008c )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000036 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000037 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000038 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig0000008f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000091 ),
    .Q(\blk00000001/sig00000075 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000092 ),
    .Q(\blk00000001/sig00000076 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000025  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000075 ),
    .Q(\blk00000001/sig00000077 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000024  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000076 ),
    .Q(\blk00000001/sig00000078 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001c  (
    .C(aclk),
    .D(s_axis_data_tdata[0]),
    .Q(\blk00000001/sig00000096 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001b  (
    .C(aclk),
    .D(s_axis_data_tdata[1]),
    .Q(\blk00000001/sig00000097 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001a  (
    .C(aclk),
    .D(\blk00000001/sig00000094 ),
    .Q(\blk00000001/sig00000095 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000019  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000017 ),
    .R(\blk00000001/sig00000093 ),
    .Q(NlwRenamedSig_OI_s_axis_data_tready)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000018  (
    .C(aclk),
    .D(\blk00000001/sig00000033 ),
    .Q(\blk00000001/sig0000003c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000017  (
    .C(aclk),
    .D(\blk00000001/sig00000090 ),
    .Q(\blk00000001/sig00000089 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000016  (
    .C(aclk),
    .D(\blk00000001/sig00000032 ),
    .Q(\blk00000001/sig0000003d )
  );
  FDE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk00000015  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/sig0000003d ),
    .Q(\blk00000001/sig00000039 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000014  (
    .C(aclk),
    .D(\blk00000001/sig0000003e ),
    .Q(m_axis_data_tvalid)
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000013  (
    .C(aclk),
    .D(\blk00000001/sig00000027 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000012  (
    .C(aclk),
    .D(\blk00000001/sig00000026 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000011  (
    .C(aclk),
    .D(\blk00000001/sig00000025 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000010  (
    .C(aclk),
    .D(\blk00000001/sig00000024 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000f  (
    .C(aclk),
    .D(\blk00000001/sig00000023 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000e  (
    .C(aclk),
    .D(\blk00000001/sig00000022 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000d  (
    .C(aclk),
    .D(\blk00000001/sig00000021 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000c  (
    .C(aclk),
    .D(\blk00000001/sig00000020 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000b  (
    .C(aclk),
    .D(\blk00000001/sig0000001f ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(aclk),
    .D(\blk00000001/sig0000001e ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(aclk),
    .D(\blk00000001/sig0000001d ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(aclk),
    .D(\blk00000001/sig0000001c ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(aclk),
    .D(\blk00000001/sig0000001b ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(aclk),
    .D(\blk00000001/sig0000001a ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(aclk),
    .D(\blk00000001/sig00000019 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(aclk),
    .D(\blk00000001/sig00000018 ),
    .Q(NlwRenamedSig_OI_m_axis_data_tdata[15])
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig00000093 )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000017 )
  );
  INV   \blk00000001/blk0000001d/blk00000023  (
    .I(\blk00000001/sig00000090 ),
    .O(\blk00000001/blk0000001d/sig000000c7 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000001d/blk00000022  (
    .A0(\blk00000001/blk0000001d/sig000000c7 ),
    .A1(\blk00000001/blk0000001d/sig000000c7 ),
    .A2(\blk00000001/blk0000001d/sig000000c7 ),
    .A3(\blk00000001/blk0000001d/sig000000c7 ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000097 ),
    .Q(\blk00000001/blk0000001d/sig000000cb ),
    .Q15(\NLW_blk00000001/blk0000001d/blk00000022_Q15_UNCONNECTED )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000001d/blk00000021  (
    .A0(\blk00000001/blk0000001d/sig000000c7 ),
    .A1(\blk00000001/blk0000001d/sig000000c7 ),
    .A2(\blk00000001/blk0000001d/sig000000c7 ),
    .A3(\blk00000001/blk0000001d/sig000000c7 ),
    .CE(\blk00000001/sig00000095 ),
    .CLK(aclk),
    .D(\blk00000001/sig00000096 ),
    .Q(\blk00000001/blk0000001d/sig000000cc ),
    .Q15(\NLW_blk00000001/blk0000001d/blk00000021_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d/blk00000020  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000001d/sig000000cb ),
    .Q(\blk00000001/sig00000092 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d/blk0000001f  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000001d/sig000000cc ),
    .Q(\blk00000001/sig00000091 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000001d/blk0000001e  (
    .C(aclk),
    .D(\blk00000001/sig00000095 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/sig00000090 )
  );
  LUT6 #(
    .INIT ( 64'h5F5D014658421840 ))
  \blk00000001/blk0000002e/blk0000004b  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig0000008c ),
    .I2(\blk00000001/sig0000008e ),
    .I3(\blk00000001/sig0000008a ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008d ),
    .O(\blk00000001/blk0000002e/sig000000e1 )
  );
  LUT6 #(
    .INIT ( 64'h7524222652602466 ))
  \blk00000001/blk0000002e/blk0000004a  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig0000008e ),
    .I2(\blk00000001/sig0000008a ),
    .I3(\blk00000001/sig0000008d ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008c ),
    .O(\blk00000001/blk0000002e/sig000000e0 )
  );
  LUT6 #(
    .INIT ( 64'h1444736264042462 ))
  \blk00000001/blk0000002e/blk00000049  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig0000008e ),
    .I2(\blk00000001/sig0000008c ),
    .I3(\blk00000001/sig0000008d ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008a ),
    .O(\blk00000001/blk0000002e/sig000000df )
  );
  LUT6 #(
    .INIT ( 64'h2670645622046226 ))
  \blk00000001/blk0000002e/blk00000048  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig0000008a ),
    .I3(\blk00000001/sig0000008b ),
    .I4(\blk00000001/sig0000008c ),
    .I5(\blk00000001/sig0000008d ),
    .O(\blk00000001/blk0000002e/sig000000de )
  );
  LUT6 #(
    .INIT ( 64'h7356604346422646 ))
  \blk00000001/blk0000002e/blk00000047  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig0000008c ),
    .I3(\blk00000001/sig0000008a ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008d ),
    .O(\blk00000001/blk0000002e/sig000000dd )
  );
  LUT6 #(
    .INIT ( 64'h1251424663254420 ))
  \blk00000001/blk0000002e/blk00000046  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig0000008c ),
    .I3(\blk00000001/sig0000008b ),
    .I4(\blk00000001/sig0000008d ),
    .I5(\blk00000001/sig0000008a ),
    .O(\blk00000001/blk0000002e/sig000000dc )
  );
  LUT6 #(
    .INIT ( 64'h3465531544444006 ))
  \blk00000001/blk0000002e/blk00000045  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig0000008e ),
    .I2(\blk00000001/sig0000008a ),
    .I3(\blk00000001/sig0000008b ),
    .I4(\blk00000001/sig0000008c ),
    .I5(\blk00000001/sig0000008d ),
    .O(\blk00000001/blk0000002e/sig000000db )
  );
  LUT6 #(
    .INIT ( 64'h581C14045C0C5444 ))
  \blk00000001/blk0000002e/blk00000044  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig0000008d ),
    .I2(\blk00000001/sig0000008e ),
    .I3(\blk00000001/sig0000008c ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008a ),
    .O(\blk00000001/blk0000002e/sig000000da )
  );
  LUT6 #(
    .INIT ( 64'h22030321E6AAEEA2 ))
  \blk00000001/blk0000002e/blk00000043  (
    .I0(\blk00000001/sig0000008d ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig0000008c ),
    .I3(\blk00000001/sig0000008a ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008e ),
    .O(\blk00000001/blk0000002e/sig000000d9 )
  );
  LUT6 #(
    .INIT ( 64'h1126372613267726 ))
  \blk00000001/blk0000002e/blk00000042  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig0000008b ),
    .I3(\blk00000001/sig0000008d ),
    .I4(\blk00000001/sig0000008c ),
    .I5(\blk00000001/sig0000008a ),
    .O(\blk00000001/blk0000002e/sig000000d8 )
  );
  LUT6 #(
    .INIT ( 64'h45455010666EEEEE ))
  \blk00000001/blk0000002e/blk00000041  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000008d ),
    .I2(\blk00000001/sig0000008b ),
    .I3(\blk00000001/sig0000008a ),
    .I4(\blk00000001/sig0000008c ),
    .I5(\blk00000001/sig0000008f ),
    .O(\blk00000001/blk0000002e/sig000000d7 )
  );
  LUT6 #(
    .INIT ( 64'h5672527256727272 ))
  \blk00000001/blk0000002e/blk00000040  (
    .I0(\blk00000001/sig0000008e ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig0000008d ),
    .I3(\blk00000001/sig0000008c ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008a ),
    .O(\blk00000001/blk0000002e/sig000000d6 )
  );
  LUT6 #(
    .INIT ( 64'h1515155544444444 ))
  \blk00000001/blk0000002e/blk0000003f  (
    .I0(\blk00000001/sig0000008f ),
    .I1(\blk00000001/sig0000008d ),
    .I2(\blk00000001/sig0000008c ),
    .I3(\blk00000001/sig0000008a ),
    .I4(\blk00000001/sig0000008b ),
    .I5(\blk00000001/sig0000008e ),
    .O(\blk00000001/blk0000002e/sig000000d5 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk0000003e  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d5 ),
    .Q(\blk00000001/sig00000088 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk0000003d  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d5 ),
    .Q(\blk00000001/sig00000087 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk0000003c  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d5 ),
    .Q(\blk00000001/sig00000086 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk0000003b  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d5 ),
    .Q(\blk00000001/sig00000085 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk0000003a  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d6 ),
    .Q(\blk00000001/sig00000084 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000039  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d7 ),
    .Q(\blk00000001/sig00000083 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000038  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d8 ),
    .Q(\blk00000001/sig00000082 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000037  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000d9 ),
    .Q(\blk00000001/sig00000081 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000036  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000da ),
    .Q(\blk00000001/sig00000080 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000035  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000db ),
    .Q(\blk00000001/sig0000007f )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000034  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000dc ),
    .Q(\blk00000001/sig0000007e )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000033  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000dd ),
    .Q(\blk00000001/sig0000007d )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000032  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000de ),
    .Q(\blk00000001/sig0000007c )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000031  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000df ),
    .Q(\blk00000001/sig0000007b )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk00000030  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000e0 ),
    .Q(\blk00000001/sig0000007a )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e/blk0000002f  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000002e/sig000000e1 ),
    .Q(\blk00000001/sig00000079 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000004d/blk0000008e  (
    .I0(\blk00000001/sig00000089 ),
    .I1(\blk00000001/blk0000004d/sig00000116 ),
    .I2(\blk00000001/blk0000004d/sig00000136 ),
    .O(\blk00000001/blk0000004d/sig00000134 )
  );
  INV   \blk00000001/blk0000004d/blk0000008d  (
    .I(\blk00000001/blk0000004d/sig00000113 ),
    .O(\blk00000001/blk0000004d/sig00000128 )
  );
  INV   \blk00000001/blk0000004d/blk0000008c  (
    .I(\blk00000001/blk0000004d/sig0000010c ),
    .O(\blk00000001/blk0000004d/sig00000121 )
  );
  LUT6 #(
    .INIT ( 64'h1444444444444444 ))
  \blk00000001/blk0000004d/blk0000008b  (
    .I0(\blk00000001/blk0000004d/sig00000102 ),
    .I1(\blk00000001/blk0000004d/sig00000116 ),
    .I2(\blk00000001/blk0000004d/sig0000011a ),
    .I3(\blk00000001/blk0000004d/sig00000119 ),
    .I4(\blk00000001/blk0000004d/sig00000118 ),
    .I5(\blk00000001/blk0000004d/sig00000117 ),
    .O(\blk00000001/blk0000004d/sig00000136 )
  );
  LUT3 #(
    .INIT ( 8'h1A ))
  \blk00000001/blk0000004d/blk0000008a  (
    .I0(\blk00000001/blk0000004d/sig0000011a ),
    .I1(\blk00000001/blk0000004d/sig00000102 ),
    .I2(\blk00000001/sig00000089 ),
    .O(\blk00000001/blk0000004d/sig00000130 )
  );
  LUT4 #(
    .INIT ( 16'h06AA ))
  \blk00000001/blk0000004d/blk00000089  (
    .I0(\blk00000001/blk0000004d/sig00000119 ),
    .I1(\blk00000001/blk0000004d/sig0000011a ),
    .I2(\blk00000001/blk0000004d/sig00000102 ),
    .I3(\blk00000001/sig00000089 ),
    .O(\blk00000001/blk0000004d/sig00000131 )
  );
  LUT5 #(
    .INIT ( 32'h1444CCCC ))
  \blk00000001/blk0000004d/blk00000088  (
    .I0(\blk00000001/blk0000004d/sig00000102 ),
    .I1(\blk00000001/blk0000004d/sig00000118 ),
    .I2(\blk00000001/blk0000004d/sig00000119 ),
    .I3(\blk00000001/blk0000004d/sig0000011a ),
    .I4(\blk00000001/sig00000089 ),
    .O(\blk00000001/blk0000004d/sig00000132 )
  );
  LUT6 #(
    .INIT ( 64'h14444444CCCCCCCC ))
  \blk00000001/blk0000004d/blk00000087  (
    .I0(\blk00000001/blk0000004d/sig00000102 ),
    .I1(\blk00000001/blk0000004d/sig00000117 ),
    .I2(\blk00000001/blk0000004d/sig00000118 ),
    .I3(\blk00000001/blk0000004d/sig0000011a ),
    .I4(\blk00000001/blk0000004d/sig00000119 ),
    .I5(\blk00000001/sig00000089 ),
    .O(\blk00000001/blk0000004d/sig00000133 )
  );
  LUT4 #(
    .INIT ( 16'h3A0A ))
  \blk00000001/blk0000004d/blk00000086  (
    .I0(\blk00000001/blk0000004d/sig00000115 ),
    .I1(\blk00000001/blk0000004d/sig00000102 ),
    .I2(\blk00000001/sig00000089 ),
    .I3(\blk00000001/blk0000004d/sig00000129 ),
    .O(\blk00000001/blk0000004d/sig00000135 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000085  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig00000135 ),
    .Q(\blk00000001/blk0000004d/sig00000115 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000084  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig00000134 ),
    .Q(\blk00000001/blk0000004d/sig00000116 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000083  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig00000133 ),
    .Q(\blk00000001/blk0000004d/sig00000117 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000082  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig00000132 ),
    .Q(\blk00000001/blk0000004d/sig00000118 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000081  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig00000131 ),
    .Q(\blk00000001/blk0000004d/sig00000119 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000080  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig00000130 ),
    .Q(\blk00000001/blk0000004d/sig0000011a )
  );
  LUT4 #(
    .INIT ( 16'h5444 ))
  \blk00000001/blk0000004d/blk0000007f  (
    .I0(\blk00000001/sig00000093 ),
    .I1(\blk00000001/blk0000004d/sig00000103 ),
    .I2(\blk00000001/sig00000089 ),
    .I3(\blk00000001/blk0000004d/sig00000102 ),
    .O(\blk00000001/blk0000004d/sig0000012f )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \blk00000001/blk0000004d/blk0000007e  (
    .I0(\blk00000001/blk0000004d/sig0000010e ),
    .I1(\blk00000001/blk0000004d/sig00000102 ),
    .I2(\blk00000001/blk0000004d/sig0000012d ),
    .O(\blk00000001/blk0000004d/sig00000123 )
  );
  LUT4 #(
    .INIT ( 16'h9A59 ))
  \blk00000001/blk0000004d/blk0000007d  (
    .I0(\blk00000001/blk0000004d/sig0000010d ),
    .I1(\blk00000001/blk0000004d/sig0000010e ),
    .I2(\blk00000001/blk0000004d/sig00000102 ),
    .I3(\blk00000001/blk0000004d/sig0000012d ),
    .O(\blk00000001/blk0000004d/sig00000122 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \blk00000001/blk0000004d/blk0000007c  (
    .I0(\blk00000001/blk0000004d/sig00000107 ),
    .I1(\blk00000001/blk0000004d/sig0000010a ),
    .I2(\blk00000001/blk0000004d/sig0000010c ),
    .I3(\blk00000001/blk0000004d/sig0000010b ),
    .I4(\blk00000001/blk0000004d/sig00000109 ),
    .I5(\blk00000001/blk0000004d/sig00000108 ),
    .O(\blk00000001/blk0000004d/sig0000011c )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \blk00000001/blk0000004d/blk0000007b  (
    .I0(\blk00000001/blk0000004d/sig00000108 ),
    .I1(\blk00000001/blk0000004d/sig0000010a ),
    .I2(\blk00000001/blk0000004d/sig0000010c ),
    .I3(\blk00000001/blk0000004d/sig0000010b ),
    .I4(\blk00000001/blk0000004d/sig00000109 ),
    .O(\blk00000001/blk0000004d/sig0000011d )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \blk00000001/blk0000004d/blk0000007a  (
    .I0(\blk00000001/blk0000004d/sig00000109 ),
    .I1(\blk00000001/blk0000004d/sig0000010a ),
    .I2(\blk00000001/blk0000004d/sig0000010c ),
    .I3(\blk00000001/blk0000004d/sig0000010b ),
    .O(\blk00000001/blk0000004d/sig0000011e )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAA9 ))
  \blk00000001/blk0000004d/blk00000079  (
    .I0(\blk00000001/blk0000004d/sig0000010f ),
    .I1(\blk00000001/blk0000004d/sig00000110 ),
    .I2(\blk00000001/blk0000004d/sig00000113 ),
    .I3(\blk00000001/blk0000004d/sig00000112 ),
    .I4(\blk00000001/blk0000004d/sig00000111 ),
    .O(\blk00000001/blk0000004d/sig00000124 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000078  (
    .C(aclk),
    .D(\blk00000001/blk0000004d/sig0000012f ),
    .Q(\blk00000001/blk0000004d/sig00000103 )
  );
  LUT6 #(
    .INIT ( 64'h0000FF008080FF00 ))
  \blk00000001/blk0000004d/blk00000077  (
    .I0(\blk00000001/blk0000004d/sig00000115 ),
    .I1(\blk00000001/blk0000004d/sig00000117 ),
    .I2(\blk00000001/blk0000004d/sig00000118 ),
    .I3(\blk00000001/blk0000004d/sig00000102 ),
    .I4(\blk00000001/sig00000089 ),
    .I5(\blk00000001/blk0000004d/sig0000012e ),
    .O(\blk00000001/blk0000004d/sig0000012a )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \blk00000001/blk0000004d/blk00000076  (
    .I0(\blk00000001/blk0000004d/sig00000116 ),
    .I1(\blk00000001/blk0000004d/sig0000011a ),
    .I2(\blk00000001/blk0000004d/sig00000119 ),
    .O(\blk00000001/blk0000004d/sig0000012e )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \blk00000001/blk0000004d/blk00000075  (
    .I0(\blk00000001/blk0000004d/sig00000115 ),
    .I1(\blk00000001/blk0000004d/sig00000116 ),
    .I2(\blk00000001/blk0000004d/sig00000117 ),
    .I3(\blk00000001/blk0000004d/sig00000118 ),
    .I4(\blk00000001/blk0000004d/sig00000119 ),
    .I5(\blk00000001/blk0000004d/sig0000011a ),
    .O(\blk00000001/blk0000004d/sig00000129 )
  );
  LUT5 #(
    .INIT ( 32'hAAAA6AAA ))
  \blk00000001/blk0000004d/blk00000074  (
    .I0(\blk00000001/blk0000004d/sig00000106 ),
    .I1(\blk00000001/blk0000004d/sig00000107 ),
    .I2(\blk00000001/blk0000004d/sig00000108 ),
    .I3(\blk00000001/blk0000004d/sig00000109 ),
    .I4(\blk00000001/blk0000004d/sig0000012c ),
    .O(\blk00000001/blk0000004d/sig0000011b )
  );
  LUT4 #(
    .INIT ( 16'hAAA9 ))
  \blk00000001/blk0000004d/blk00000073  (
    .I0(\blk00000001/blk0000004d/sig00000110 ),
    .I1(\blk00000001/blk0000004d/sig00000113 ),
    .I2(\blk00000001/blk0000004d/sig00000112 ),
    .I3(\blk00000001/blk0000004d/sig00000111 ),
    .O(\blk00000001/blk0000004d/sig00000125 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \blk00000001/blk0000004d/blk00000072  (
    .I0(\blk00000001/blk0000004d/sig0000010f ),
    .I1(\blk00000001/blk0000004d/sig00000113 ),
    .I2(\blk00000001/blk0000004d/sig00000112 ),
    .I3(\blk00000001/blk0000004d/sig00000111 ),
    .I4(\blk00000001/blk0000004d/sig00000110 ),
    .O(\blk00000001/blk0000004d/sig0000012d )
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \blk00000001/blk0000004d/blk00000071  (
    .I0(\blk00000001/blk0000004d/sig00000111 ),
    .I1(\blk00000001/blk0000004d/sig00000113 ),
    .I2(\blk00000001/blk0000004d/sig00000112 ),
    .O(\blk00000001/blk0000004d/sig00000126 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \blk00000001/blk0000004d/blk00000070  (
    .I0(\blk00000001/blk0000004d/sig0000010a ),
    .I1(\blk00000001/blk0000004d/sig0000010c ),
    .I2(\blk00000001/blk0000004d/sig0000010b ),
    .O(\blk00000001/blk0000004d/sig0000011f )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \blk00000001/blk0000004d/blk0000006f  (
    .I0(\blk00000001/blk0000004d/sig0000010a ),
    .I1(\blk00000001/blk0000004d/sig0000010c ),
    .I2(\blk00000001/blk0000004d/sig0000010b ),
    .O(\blk00000001/blk0000004d/sig0000012c )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \blk00000001/blk0000004d/blk0000006e  (
    .I0(\blk00000001/blk0000004d/sig00000100 ),
    .I1(\blk00000001/blk0000004d/sig000000fd ),
    .I2(\blk00000001/blk0000004d/sig00000101 ),
    .O(\blk00000001/blk0000004d/sig0000012b )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \blk00000001/blk0000004d/blk0000006d  (
    .I0(\blk00000001/blk0000004d/sig00000112 ),
    .I1(\blk00000001/blk0000004d/sig00000113 ),
    .O(\blk00000001/blk0000004d/sig00000127 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000004d/blk0000006c  (
    .I0(\blk00000001/blk0000004d/sig00000101 ),
    .I1(\blk00000001/blk0000004d/sig000000fa ),
    .I2(\blk00000001/sig00000075 ),
    .O(\blk00000001/blk0000004d/sig000000fc )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk0000004d/blk0000006b  (
    .I0(\blk00000001/blk0000004d/sig00000101 ),
    .I1(\blk00000001/blk0000004d/sig000000f9 ),
    .I2(\blk00000001/sig00000076 ),
    .O(\blk00000001/blk0000004d/sig000000fb )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000004d/blk0000006a  (
    .I0(\blk00000001/blk0000004d/sig0000010b ),
    .I1(\blk00000001/blk0000004d/sig0000010c ),
    .O(\blk00000001/blk0000004d/sig00000120 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000069  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/sig00000089 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig000000fd )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000063  (
    .C(aclk),
    .CE(\blk00000001/blk0000004d/sig00000105 ),
    .D(\blk00000001/blk0000004d/sig00000103 ),
    .R(\blk00000001/blk0000004d/sig00000104 ),
    .Q(\blk00000001/blk0000004d/sig00000100 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000062  (
    .C(aclk),
    .CE(\blk00000001/blk0000004d/sig00000105 ),
    .D(\blk00000001/blk0000004d/sig00000114 ),
    .R(\blk00000001/blk0000004d/sig00000104 ),
    .Q(\blk00000001/blk0000004d/sig00000101 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000061  (
    .C(aclk),
    .CE(\blk00000001/blk0000004d/sig000000fd ),
    .D(\blk00000001/blk0000004d/sig000000fb ),
    .R(\blk00000001/blk0000004d/sig0000012b ),
    .Q(\blk00000001/sig00000073 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000060  (
    .C(aclk),
    .CE(\blk00000001/blk0000004d/sig000000fd ),
    .D(\blk00000001/blk0000004d/sig000000fc ),
    .R(\blk00000001/blk0000004d/sig0000012b ),
    .Q(\blk00000001/sig00000072 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk0000005f  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000122 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig0000010d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk0000005e  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000123 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig0000010e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk0000005d  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000124 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig0000010f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk0000005c  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000125 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000110 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk0000005b  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000126 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000111 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk0000005a  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000127 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000112 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000059  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000128 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000113 )
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \blk00000001/blk0000004d/blk00000058  (
    .C(aclk),
    .CE(\blk00000001/sig00000089 ),
    .D(\blk00000001/blk0000004d/sig00000102 ),
    .S(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000114 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000057  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000004d/sig0000012a ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000102 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000056  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig0000011b ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000106 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000055  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig0000011c ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000107 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000054  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig0000011d ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000108 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000053  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig0000011e ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig00000109 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000052  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig0000011f ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig0000010a )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000051  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig00000120 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig0000010b )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000050  (
    .C(aclk),
    .CE(\blk00000001/sig00000074 ),
    .D(\blk00000001/blk0000004d/sig00000121 ),
    .R(\blk00000001/sig00000093 ),
    .Q(\blk00000001/blk0000004d/sig0000010c )
  );
  VCC   \blk00000001/blk0000004d/blk0000004f  (
    .P(\blk00000001/blk0000004d/sig00000105 )
  );
  GND   \blk00000001/blk0000004d/blk0000004e  (
    .G(\blk00000001/blk0000004d/sig00000104 )
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000001/blk0000004d/blk00000064/blk00000068  (
    .WCLK(aclk),
    .D(\blk00000001/sig00000076 ),
    .WE(\blk00000001/sig00000074 ),
    .SPO(\NLW_blk00000001/blk0000004d/blk00000064/blk00000068_SPO_UNCONNECTED ),
    .DPO(\blk00000001/blk0000004d/blk00000064/sig0000014a ),
    .A({\blk00000001/blk0000004d/sig00000106 , \blk00000001/blk0000004d/sig00000107 , \blk00000001/blk0000004d/sig00000108 , 
\blk00000001/blk0000004d/sig00000109 , \blk00000001/blk0000004d/sig0000010a , \blk00000001/blk0000004d/sig0000010b , 
\blk00000001/blk0000004d/sig0000010c }),
    .DPRA({\blk00000001/blk0000004d/sig0000010d , \blk00000001/blk0000004d/sig0000010e , \blk00000001/blk0000004d/sig0000010f , 
\blk00000001/blk0000004d/sig00000110 , \blk00000001/blk0000004d/sig00000111 , \blk00000001/blk0000004d/sig00000112 , 
\blk00000001/blk0000004d/sig00000113 })
  );
  RAM128X1D #(
    .INIT ( 128'h00000000000000000000000000000000 ))
  \blk00000001/blk0000004d/blk00000064/blk00000067  (
    .WCLK(aclk),
    .D(\blk00000001/sig00000075 ),
    .WE(\blk00000001/sig00000074 ),
    .SPO(\NLW_blk00000001/blk0000004d/blk00000064/blk00000067_SPO_UNCONNECTED ),
    .DPO(\blk00000001/blk0000004d/blk00000064/sig0000014b ),
    .A({\blk00000001/blk0000004d/sig00000106 , \blk00000001/blk0000004d/sig00000107 , \blk00000001/blk0000004d/sig00000108 , 
\blk00000001/blk0000004d/sig00000109 , \blk00000001/blk0000004d/sig0000010a , \blk00000001/blk0000004d/sig0000010b , 
\blk00000001/blk0000004d/sig0000010c }),
    .DPRA({\blk00000001/blk0000004d/sig0000010d , \blk00000001/blk0000004d/sig0000010e , \blk00000001/blk0000004d/sig0000010f , 
\blk00000001/blk0000004d/sig00000110 , \blk00000001/blk0000004d/sig00000111 , \blk00000001/blk0000004d/sig00000112 , 
\blk00000001/blk0000004d/sig00000113 })
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000064/blk00000066  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000004d/blk00000064/sig0000014a ),
    .Q(\blk00000001/blk0000004d/sig000000f9 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004d/blk00000064/blk00000065  (
    .C(aclk),
    .CE(\blk00000001/sig00000017 ),
    .D(\blk00000001/blk0000004d/blk00000064/sig0000014b ),
    .Q(\blk00000001/blk0000004d/sig000000fa )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
