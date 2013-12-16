////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.49d
//  \   \         Application: netgen
//  /   /         Filename: cordic_v5_0.v
// /___/   /\     Timestamp: Mon May 13 15:06:29 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/cordic_v5_0.ngc /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/cordic_v5_0.v 
// Device	: 6slx9tqg144-2
// Input file	: /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/cordic_v5_0.ngc
// Output file	: /home/justin/workspace/Mojo-Clock/ipcore_dir/tmp/_cg/cordic_v5_0.v
// # of Modules	: 1
// Design Name	: cordic_v5_0
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

module cordic_v5_0 (
  aclk, s_axis_cartesian_tvalid, m_axis_dout_tvalid, s_axis_cartesian_tdata, m_axis_dout_tdata
)/* synthesis syn_black_box syn_noprune=1 */;
  input aclk;
  input s_axis_cartesian_tvalid;
  output m_axis_dout_tvalid;
  input [23 : 0] s_axis_cartesian_tdata;
  output [15 : 0] m_axis_dout_tdata;
  
  // synthesis translate_off
  
  wire \blk00000001/sig000000c5 ;
  wire \blk00000001/sig000000c4 ;
  wire \blk00000001/sig000000c3 ;
  wire \blk00000001/sig000000c2 ;
  wire \blk00000001/sig000000c1 ;
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
  wire \blk00000001/sig00000016 ;
  wire \blk00000001/sig00000015 ;
  wire \blk00000001/sig00000014 ;
  wire \blk00000001/sig00000013 ;
  wire \blk00000001/sig00000012 ;
  wire \blk00000001/sig00000011 ;
  wire \blk00000001/sig00000010 ;
  wire \blk00000001/sig0000000f ;
  wire \blk00000001/sig0000000e ;
  wire \blk00000001/sig0000000d ;
  wire \blk00000001/blk0000000b/sig000000eb ;
  wire \blk00000001/blk0000000b/sig000000ea ;
  wire \blk00000001/blk0000000b/sig000000e9 ;
  wire \blk00000001/blk0000000b/sig000000e8 ;
  wire \blk00000001/blk0000000b/sig000000e7 ;
  wire \blk00000001/blk0000000b/sig000000e6 ;
  wire \blk00000001/blk0000000b/sig000000e5 ;
  wire \blk00000001/blk0000000b/sig000000e4 ;
  wire \blk00000001/blk0000000b/sig000000e3 ;
  wire \blk00000001/blk0000000b/sig000000e2 ;
  wire \blk00000001/blk0000000b/sig000000e1 ;
  wire \blk00000001/blk0000000b/sig000000e0 ;
  wire \blk00000001/blk0000000b/sig000000df ;
  wire \blk00000001/blk0000000b/sig000000de ;
  wire \blk00000001/blk0000000b/sig000000dd ;
  wire \blk00000001/blk0000000b/sig000000dc ;
  wire \blk00000001/blk0000000b/sig000000db ;
  wire \blk00000001/blk0000000b/sig000000d4 ;
  wire \blk00000001/blk0000000b/sig000000d2 ;
  wire \blk00000001/blk00000031/sig00000116 ;
  wire \blk00000001/blk00000031/sig00000115 ;
  wire \blk00000001/blk00000031/sig00000114 ;
  wire \blk00000001/blk00000031/sig00000113 ;
  wire \blk00000001/blk00000031/sig00000112 ;
  wire \blk00000001/blk00000031/sig00000111 ;
  wire \blk00000001/blk00000031/sig00000110 ;
  wire \blk00000001/blk00000031/sig0000010f ;
  wire \blk00000001/blk00000031/sig0000010e ;
  wire \blk00000001/blk00000031/sig0000010d ;
  wire \blk00000001/blk00000031/sig0000010c ;
  wire \blk00000001/blk00000031/sig0000010b ;
  wire \blk00000001/blk00000031/sig0000010a ;
  wire \blk00000001/blk00000031/sig00000109 ;
  wire \blk00000001/blk00000031/sig00000108 ;
  wire \blk00000001/blk00000031/sig00000107 ;
  wire \blk00000001/blk00000031/sig00000106 ;
  wire \blk00000001/blk00000031/sig00000105 ;
  wire \blk00000001/blk00000031/sig00000104 ;
  wire \blk00000001/blk00000031/sig000000fc ;
  wire \blk00000001/blk00000031/sig000000fa ;
  wire \blk00000001/blk00000051/sig00000137 ;
  wire \blk00000001/blk00000051/sig00000136 ;
  wire \blk00000001/blk00000051/sig00000135 ;
  wire \blk00000001/blk00000051/sig00000134 ;
  wire \blk00000001/blk00000051/sig00000133 ;
  wire \blk00000001/blk00000051/sig00000132 ;
  wire \blk00000001/blk00000051/sig00000131 ;
  wire \blk00000001/blk00000051/sig00000130 ;
  wire \blk00000001/blk00000051/sig0000012f ;
  wire \blk00000001/blk00000051/sig0000012e ;
  wire \blk00000001/blk00000051/sig0000012d ;
  wire \blk00000001/blk00000051/sig0000012c ;
  wire \blk00000001/blk00000051/sig0000012b ;
  wire \blk00000001/blk00000051/sig0000012a ;
  wire \blk00000001/blk00000051/sig00000129 ;
  wire \blk00000001/blk00000051/sig00000123 ;
  wire \blk00000001/blk00000051/sig00000121 ;
  wire \blk00000001/blk00000069/sig00000167 ;
  wire \blk00000001/blk00000069/sig00000166 ;
  wire \blk00000001/blk00000069/sig00000165 ;
  wire \blk00000001/blk00000069/sig00000164 ;
  wire \blk00000001/blk00000069/sig00000163 ;
  wire \blk00000001/blk00000069/sig00000162 ;
  wire \blk00000001/blk00000069/sig00000161 ;
  wire \blk00000001/blk00000069/sig00000160 ;
  wire \blk00000001/blk00000069/sig0000015f ;
  wire \blk00000001/blk00000069/sig0000015e ;
  wire \blk00000001/blk00000069/sig0000015d ;
  wire \blk00000001/blk00000069/sig0000015c ;
  wire \blk00000001/blk00000069/sig0000015b ;
  wire \blk00000001/blk00000069/sig0000015a ;
  wire \blk00000001/blk00000069/sig00000159 ;
  wire \blk00000001/blk00000069/sig00000158 ;
  wire \blk00000001/blk00000069/sig00000157 ;
  wire \blk00000001/blk00000069/sig00000156 ;
  wire \blk00000001/blk00000069/sig00000155 ;
  wire \blk00000001/blk00000069/sig00000154 ;
  wire \blk00000001/blk00000069/sig00000153 ;
  wire \blk00000001/blk00000069/sig0000014a ;
  wire \blk00000001/blk00000069/sig00000148 ;
  wire \blk00000001/blk00000099/sig00000182 ;
  wire \blk00000001/blk00000099/sig00000181 ;
  wire \blk00000001/blk00000099/sig00000180 ;
  wire \blk00000001/blk00000099/sig0000017f ;
  wire \blk00000001/blk00000099/sig0000017e ;
  wire \blk00000001/blk00000099/sig0000017d ;
  wire \blk00000001/blk00000099/sig0000017c ;
  wire \blk00000001/blk00000099/sig0000017b ;
  wire \blk00000001/blk00000099/sig0000017a ;
  wire \blk00000001/blk00000099/sig00000179 ;
  wire \blk00000001/blk00000099/sig00000178 ;
  wire \blk00000001/blk00000099/sig00000177 ;
  wire \blk00000001/blk00000099/sig00000172 ;
  wire \blk00000001/blk00000099/sig00000170 ;
  wire \blk00000001/blk000000b4/sig000001b7 ;
  wire \blk00000001/blk000000b4/sig000001b6 ;
  wire \blk00000001/blk000000b4/sig000001b5 ;
  wire \blk00000001/blk000000b4/sig000001b4 ;
  wire \blk00000001/blk000000b4/sig000001b3 ;
  wire \blk00000001/blk000000b4/sig000001b2 ;
  wire \blk00000001/blk000000b4/sig000001b1 ;
  wire \blk00000001/blk000000b4/sig000001b0 ;
  wire \blk00000001/blk000000b4/sig000001af ;
  wire \blk00000001/blk000000b4/sig000001ae ;
  wire \blk00000001/blk000000b4/sig000001ad ;
  wire \blk00000001/blk000000b4/sig000001ac ;
  wire \blk00000001/blk000000b4/sig000001ab ;
  wire \blk00000001/blk000000b4/sig000001aa ;
  wire \blk00000001/blk000000b4/sig000001a9 ;
  wire \blk00000001/blk000000b4/sig000001a8 ;
  wire \blk00000001/blk000000b4/sig000001a7 ;
  wire \blk00000001/blk000000b4/sig000001a6 ;
  wire \blk00000001/blk000000b4/sig000001a5 ;
  wire \blk00000001/blk000000b4/sig000001a4 ;
  wire \blk00000001/blk000000b4/sig000001a3 ;
  wire \blk00000001/blk000000b4/sig000001a2 ;
  wire \blk00000001/blk000000b4/sig000001a1 ;
  wire \blk00000001/blk000000b4/sig00000197 ;
  wire \blk00000001/blk000000b4/sig00000195 ;
  wire \blk00000001/blk000000d8/sig000001f1 ;
  wire \blk00000001/blk000000d8/sig000001f0 ;
  wire \blk00000001/blk000000d8/sig000001ef ;
  wire \blk00000001/blk000000d8/sig000001ee ;
  wire \blk00000001/blk000000d8/sig000001ed ;
  wire \blk00000001/blk000000d8/sig000001ec ;
  wire \blk00000001/blk000000d8/sig000001eb ;
  wire \blk00000001/blk000000d8/sig000001ea ;
  wire \blk00000001/blk000000d8/sig000001e9 ;
  wire \blk00000001/blk000000d8/sig000001e8 ;
  wire \blk00000001/blk000000d8/sig000001e7 ;
  wire \blk00000001/blk000000d8/sig000001e6 ;
  wire \blk00000001/blk000000d8/sig000001e5 ;
  wire \blk00000001/blk000000d8/sig000001e4 ;
  wire \blk00000001/blk000000d8/sig000001e3 ;
  wire \blk00000001/blk000000d8/sig000001e2 ;
  wire \blk00000001/blk000000d8/sig000001e1 ;
  wire \blk00000001/blk000000d8/sig000001e0 ;
  wire \blk00000001/blk000000d8/sig000001df ;
  wire \blk00000001/blk000000d8/sig000001de ;
  wire \blk00000001/blk000000d8/sig000001dd ;
  wire \blk00000001/blk000000d8/sig000001dc ;
  wire \blk00000001/blk000000d8/sig000001db ;
  wire \blk00000001/blk000000d8/sig000001da ;
  wire \blk00000001/blk000000d8/sig000001d9 ;
  wire \blk00000001/blk000000d8/sig000001d8 ;
  wire \blk00000001/blk000000d8/sig000001d7 ;
  wire \blk00000001/blk000000d8/sig000001d6 ;
  wire \blk00000001/blk000000d8/sig000001d5 ;
  wire \blk00000001/blk000000d8/sig000001d4 ;
  wire \blk00000001/blk000000d8/sig000001d3 ;
  wire \blk00000001/blk000000d8/sig000001d2 ;
  wire \blk00000001/blk000000d8/sig000001d1 ;
  wire \blk00000001/blk000000d8/sig000001d0 ;
  wire \blk00000001/blk000000d8/sig000001cf ;
  wire \blk00000001/blk000000d8/sig000001ce ;
  wire \blk00000001/blk000000d8/sig000001cc ;
  wire \NLW_blk00000001/blk00000155_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000153_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000151_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014f_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014d_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk0000014b_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000149_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000147_Q15_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000145_Q15_UNCONNECTED ;
  wire [10 : 10] NlwRenamedSignal_m_axis_dout_tdata;
  assign
    m_axis_dout_tdata[15] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[14] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[13] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[12] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[11] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[10] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[9] = NlwRenamedSignal_m_axis_dout_tdata[10],
    m_axis_dout_tdata[8] = NlwRenamedSignal_m_axis_dout_tdata[10];
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000156  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000c5 ),
    .Q(\blk00000001/sig000000bc )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000155  (
    .A0(\blk00000001/sig0000000d ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[1]),
    .Q(\blk00000001/sig000000c5 ),
    .Q15(\NLW_blk00000001/blk00000155_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000154  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000c4 ),
    .Q(\blk00000001/sig000000bb )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000153  (
    .A0(\blk00000001/sig0000000d ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[0]),
    .Q(\blk00000001/sig000000c4 ),
    .Q15(\NLW_blk00000001/blk00000153_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000152  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000c3 ),
    .Q(\blk00000001/sig000000b8 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000151  (
    .A0(\blk00000001/sig0000000d ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[2]),
    .Q(\blk00000001/sig000000c3 ),
    .Q15(\NLW_blk00000001/blk00000151_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000150  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000c2 ),
    .Q(\blk00000001/sig000000b9 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014f  (
    .A0(\blk00000001/sig0000000d ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[3]),
    .Q(\blk00000001/sig000000c2 ),
    .Q15(\NLW_blk00000001/blk0000014f_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014e  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000c1 ),
    .Q(\blk00000001/sig00000099 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014d  (
    .A0(\blk00000001/sig0000000e ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[5]),
    .Q(\blk00000001/sig000000c1 ),
    .Q15(\NLW_blk00000001/blk0000014d_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014c  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000c0 ),
    .Q(\blk00000001/sig00000098 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk0000014b  (
    .A0(\blk00000001/sig0000000e ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[4]),
    .Q(\blk00000001/sig000000c0 ),
    .Q15(\NLW_blk00000001/blk0000014b_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000014a  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000bf ),
    .Q(\blk00000001/sig00000079 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000149  (
    .A0(\blk00000001/sig0000000e ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[7]),
    .Q(\blk00000001/sig000000bf ),
    .Q15(\NLW_blk00000001/blk00000149_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000148  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000be ),
    .Q(m_axis_dout_tvalid)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000147  (
    .A0(\blk00000001/sig0000000e ),
    .A1(\blk00000001/sig0000000d ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(\blk00000001/sig0000000f ),
    .Q(\blk00000001/sig000000be ),
    .Q15(\NLW_blk00000001/blk00000147_Q15_UNCONNECTED )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000146  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000bd ),
    .Q(\blk00000001/sig00000078 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \blk00000001/blk00000145  (
    .A0(\blk00000001/sig0000000e ),
    .A1(\blk00000001/sig0000000e ),
    .A2(\blk00000001/sig0000000e ),
    .A3(\blk00000001/sig0000000e ),
    .CE(\blk00000001/sig0000000d ),
    .CLK(aclk),
    .D(s_axis_cartesian_tdata[6]),
    .Q(\blk00000001/sig000000bd ),
    .Q15(\NLW_blk00000001/blk00000145_Q15_UNCONNECTED )
  );
  INV   \blk00000001/blk00000144  (
    .I(\blk00000001/sig00000025 ),
    .O(\blk00000001/sig0000001c )
  );
  INV   \blk00000001/blk00000143  (
    .I(\blk00000001/sig00000024 ),
    .O(\blk00000001/sig0000001b )
  );
  INV   \blk00000001/blk00000142  (
    .I(\blk00000001/sig00000023 ),
    .O(\blk00000001/sig0000001a )
  );
  INV   \blk00000001/blk00000141  (
    .I(\blk00000001/sig00000022 ),
    .O(\blk00000001/sig00000019 )
  );
  INV   \blk00000001/blk00000140  (
    .I(\blk00000001/sig00000021 ),
    .O(\blk00000001/sig00000018 )
  );
  INV   \blk00000001/blk0000013f  (
    .I(\blk00000001/sig00000020 ),
    .O(\blk00000001/sig00000017 )
  );
  INV   \blk00000001/blk0000013e  (
    .I(\blk00000001/sig0000001f ),
    .O(\blk00000001/sig00000016 )
  );
  INV   \blk00000001/blk0000013d  (
    .I(\blk00000001/sig0000001e ),
    .O(\blk00000001/sig00000015 )
  );
  INV   \blk00000001/blk0000013c  (
    .I(\blk00000001/sig0000001d ),
    .O(\blk00000001/sig00000014 )
  );
  INV   \blk00000001/blk0000013b  (
    .I(s_axis_cartesian_tdata[16]),
    .O(\blk00000001/sig00000013 )
  );
  LUT5 #(
    .INIT ( 32'hDDD58880 ))
  \blk00000001/blk0000013a  (
    .I0(\blk00000001/sig000000a2 ),
    .I1(s_axis_cartesian_tdata[15]),
    .I2(s_axis_cartesian_tdata[14]),
    .I3(s_axis_cartesian_tdata[16]),
    .I4(\blk00000001/sig000000a1 ),
    .O(\blk00000001/sig0000009d )
  );
  LUT5 #(
    .INIT ( 32'hD7D58280 ))
  \blk00000001/blk00000139  (
    .I0(\blk00000001/sig000000a2 ),
    .I1(s_axis_cartesian_tdata[14]),
    .I2(s_axis_cartesian_tdata[16]),
    .I3(s_axis_cartesian_tdata[15]),
    .I4(\blk00000001/sig000000a0 ),
    .O(\blk00000001/sig0000009c )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000138  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000082 ),
    .I2(\blk00000001/sig00000084 ),
    .I3(\blk00000001/sig00000065 ),
    .I4(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005f )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000137  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig00000081 ),
    .I2(\blk00000001/sig00000084 ),
    .I3(\blk00000001/sig00000064 ),
    .I4(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005e )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000136  (
    .I0(\blk00000001/sig00000086 ),
    .I1(\blk00000001/sig00000080 ),
    .I2(\blk00000001/sig00000084 ),
    .I3(\blk00000001/sig00000063 ),
    .I4(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005d )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000135  (
    .I0(\blk00000001/sig00000085 ),
    .I1(\blk00000001/sig0000007f ),
    .I2(\blk00000001/sig00000084 ),
    .I3(\blk00000001/sig00000062 ),
    .I4(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005c )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000134  (
    .I0(\blk00000001/sig00000044 ),
    .I1(\blk00000001/sig00000075 ),
    .I2(\blk00000001/sig00000077 ),
    .I3(\blk00000001/sig00000096 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008e )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000133  (
    .I0(\blk00000001/sig00000043 ),
    .I1(\blk00000001/sig00000074 ),
    .I2(\blk00000001/sig00000077 ),
    .I3(\blk00000001/sig00000095 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008d )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000132  (
    .I0(\blk00000001/sig00000042 ),
    .I1(\blk00000001/sig00000073 ),
    .I2(\blk00000001/sig00000077 ),
    .I3(\blk00000001/sig00000094 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008c )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000131  (
    .I0(\blk00000001/sig00000041 ),
    .I1(\blk00000001/sig00000072 ),
    .I2(\blk00000001/sig00000077 ),
    .I3(\blk00000001/sig00000093 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008b )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk00000130  (
    .I0(\blk00000001/sig00000079 ),
    .I1(\blk00000001/sig00000071 ),
    .I2(\blk00000001/sig00000077 ),
    .I3(\blk00000001/sig00000092 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig0000008a )
  );
  LUT5 #(
    .INIT ( 32'hACACFF00 ))
  \blk00000001/blk0000012f  (
    .I0(\blk00000001/sig00000078 ),
    .I1(\blk00000001/sig00000070 ),
    .I2(\blk00000001/sig00000077 ),
    .I3(\blk00000001/sig00000091 ),
    .I4(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000089 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000012e  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig000000b6 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000ad )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000012d  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig000000b5 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000ac )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000012c  (
    .I0(\blk00000001/sig00000038 ),
    .I1(\blk00000001/sig000000b4 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000ab )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000012b  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig000000b3 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000aa )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000012a  (
    .I0(\blk00000001/sig00000036 ),
    .I1(\blk00000001/sig000000b2 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000a9 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000129  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig000000b1 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000a8 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000128  (
    .I0(\blk00000001/sig00000034 ),
    .I1(\blk00000001/sig000000b0 ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000a7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000127  (
    .I0(\blk00000001/sig000000b9 ),
    .I1(\blk00000001/sig000000af ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000a6 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000126  (
    .I0(\blk00000001/sig000000b8 ),
    .I1(\blk00000001/sig000000ae ),
    .I2(\blk00000001/sig000000b7 ),
    .O(\blk00000001/sig000000a5 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000125  (
    .I0(\blk00000001/sig000000a2 ),
    .I1(\blk00000001/sig0000009f ),
    .I2(s_axis_cartesian_tdata[13]),
    .O(\blk00000001/sig0000009b )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \blk00000001/blk00000124  (
    .I0(\blk00000001/sig000000a2 ),
    .I1(\blk00000001/sig0000009e ),
    .I2(s_axis_cartesian_tdata[12]),
    .O(\blk00000001/sig0000009a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000123  (
    .I0(\blk00000001/sig00000099 ),
    .I1(\blk00000001/sig00000090 ),
    .I2(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000088 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000122  (
    .I0(\blk00000001/sig00000098 ),
    .I1(\blk00000001/sig0000008f ),
    .I2(\blk00000001/sig00000097 ),
    .O(\blk00000001/sig00000087 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000121  (
    .I0(\blk00000001/sig0000002b ),
    .I1(\blk00000001/sig00000083 ),
    .I2(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000007e )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000120  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000082 ),
    .I2(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000007d )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011f  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig00000081 ),
    .I2(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000007c )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011e  (
    .I0(\blk00000001/sig00000086 ),
    .I1(\blk00000001/sig00000080 ),
    .I2(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000007b )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011d  (
    .I0(\blk00000001/sig00000085 ),
    .I1(\blk00000001/sig0000007f ),
    .I2(\blk00000001/sig00000084 ),
    .O(\blk00000001/sig0000007a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011c  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig00000076 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006f )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011b  (
    .I0(\blk00000001/sig00000044 ),
    .I1(\blk00000001/sig00000075 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006e )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk0000011a  (
    .I0(\blk00000001/sig00000043 ),
    .I1(\blk00000001/sig00000074 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006d )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000119  (
    .I0(\blk00000001/sig00000042 ),
    .I1(\blk00000001/sig00000073 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006c )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000118  (
    .I0(\blk00000001/sig00000041 ),
    .I1(\blk00000001/sig00000072 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006b )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000117  (
    .I0(\blk00000001/sig00000079 ),
    .I1(\blk00000001/sig00000071 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig0000006a )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000116  (
    .I0(\blk00000001/sig00000078 ),
    .I1(\blk00000001/sig00000070 ),
    .I2(\blk00000001/sig00000077 ),
    .O(\blk00000001/sig00000069 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000115  (
    .I0(\blk00000001/sig00000068 ),
    .I1(\blk00000001/sig00000061 ),
    .I2(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005b )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \blk00000001/blk00000114  (
    .I0(\blk00000001/sig00000067 ),
    .I1(\blk00000001/sig00000060 ),
    .I2(\blk00000001/sig00000066 ),
    .O(\blk00000001/sig0000005a )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \blk00000001/blk00000113  (
    .I0(s_axis_cartesian_tdata[14]),
    .I1(s_axis_cartesian_tdata[15]),
    .I2(s_axis_cartesian_tdata[16]),
    .O(\blk00000001/sig00000012 )
  );
  LUT3 #(
    .INIT ( 8'h98 ))
  \blk00000001/blk00000112  (
    .I0(s_axis_cartesian_tdata[14]),
    .I1(s_axis_cartesian_tdata[16]),
    .I2(s_axis_cartesian_tdata[15]),
    .O(\blk00000001/sig00000011 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \blk00000001/blk00000111  (
    .I0(s_axis_cartesian_tdata[15]),
    .I1(s_axis_cartesian_tdata[14]),
    .I2(s_axis_cartesian_tdata[16]),
    .O(\blk00000001/sig00000010 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000110  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig00000014 ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010f  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig00000015 ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010e  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig00000016 ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010d  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig00000017 ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010c  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig00000018 ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010b  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig00000019 ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000010a  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig0000001a ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000109  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig0000001b ),
    .R(\blk00000001/sig0000000e ),
    .Q(m_axis_dout_tdata[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000108  (
    .C(aclk),
    .CE(\blk00000001/sig00000047 ),
    .D(\blk00000001/sig0000001c ),
    .R(\blk00000001/sig0000000e ),
    .Q(NlwRenamedSignal_m_axis_dout_tdata[10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000107  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000ba ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig0000001d )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000106  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig000000b7 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig0000001e )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000105  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig0000002d ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig0000001f )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000104  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig0000002e ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000020 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000103  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig0000002f ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000021 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000102  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig00000030 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000022 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000101  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig00000031 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000023 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000100  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig00000032 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000024 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ff  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(\blk00000001/sig00000033 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000025 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b3  (
    .C(aclk),
    .D(\blk00000001/sig0000009a ),
    .Q(\blk00000001/sig00000029 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b2  (
    .C(aclk),
    .D(\blk00000001/sig0000009b ),
    .Q(\blk00000001/sig0000002a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b1  (
    .C(aclk),
    .D(\blk00000001/sig0000009c ),
    .Q(\blk00000001/sig0000002b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000b0  (
    .C(aclk),
    .D(\blk00000001/sig0000009d ),
    .Q(\blk00000001/sig0000002c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000af  (
    .C(aclk),
    .D(\blk00000001/sig000000a2 ),
    .Q(\blk00000001/sig00000026 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ae  (
    .C(aclk),
    .D(\blk00000001/sig00000012 ),
    .Q(\blk00000001/sig00000027 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk000000ad  (
    .C(aclk),
    .D(\blk00000001/sig00000013 ),
    .Q(\blk00000001/sig00000028 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000098  (
    .C(aclk),
    .D(\blk00000001/sig00000087 ),
    .Q(\blk00000001/sig00000034 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000097  (
    .C(aclk),
    .D(\blk00000001/sig00000088 ),
    .Q(\blk00000001/sig00000035 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000096  (
    .C(aclk),
    .D(\blk00000001/sig00000089 ),
    .Q(\blk00000001/sig00000036 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000095  (
    .C(aclk),
    .D(\blk00000001/sig0000008a ),
    .Q(\blk00000001/sig00000037 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000094  (
    .C(aclk),
    .D(\blk00000001/sig0000008b ),
    .Q(\blk00000001/sig00000038 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000093  (
    .C(aclk),
    .D(\blk00000001/sig0000008c ),
    .Q(\blk00000001/sig00000039 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000092  (
    .C(aclk),
    .D(\blk00000001/sig0000008d ),
    .Q(\blk00000001/sig0000003a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000091  (
    .C(aclk),
    .D(\blk00000001/sig0000008e ),
    .Q(\blk00000001/sig0000003b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000090  (
    .C(aclk),
    .D(\blk00000001/sig00000097 ),
    .Q(\blk00000001/sig0000002d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008f  (
    .C(aclk),
    .D(\blk00000001/sig00000077 ),
    .Q(\blk00000001/sig0000002e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008e  (
    .C(aclk),
    .D(\blk00000001/sig0000003c ),
    .Q(\blk00000001/sig0000002f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008d  (
    .C(aclk),
    .D(\blk00000001/sig0000003d ),
    .Q(\blk00000001/sig00000030 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008c  (
    .C(aclk),
    .D(\blk00000001/sig0000003e ),
    .Q(\blk00000001/sig00000031 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008b  (
    .C(aclk),
    .D(\blk00000001/sig0000003f ),
    .Q(\blk00000001/sig00000032 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000008a  (
    .C(aclk),
    .D(\blk00000001/sig00000040 ),
    .Q(\blk00000001/sig00000033 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000050  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(s_axis_cartesian_tdata[11]),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000086 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000004f  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(s_axis_cartesian_tdata[10]),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000085 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000030  (
    .C(aclk),
    .D(\blk00000001/sig0000005a ),
    .Q(\blk00000001/sig00000041 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002f  (
    .C(aclk),
    .D(\blk00000001/sig0000005b ),
    .Q(\blk00000001/sig00000042 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002e  (
    .C(aclk),
    .D(\blk00000001/sig0000005c ),
    .Q(\blk00000001/sig00000043 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002d  (
    .C(aclk),
    .D(\blk00000001/sig0000005d ),
    .Q(\blk00000001/sig00000044 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002c  (
    .C(aclk),
    .D(\blk00000001/sig0000005e ),
    .Q(\blk00000001/sig00000045 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002b  (
    .C(aclk),
    .D(\blk00000001/sig0000005f ),
    .Q(\blk00000001/sig00000046 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000002a  (
    .C(aclk),
    .D(\blk00000001/sig00000066 ),
    .Q(\blk00000001/sig0000003c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000029  (
    .C(aclk),
    .D(\blk00000001/sig00000084 ),
    .Q(\blk00000001/sig0000003d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000028  (
    .C(aclk),
    .D(\blk00000001/sig00000026 ),
    .Q(\blk00000001/sig0000003e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000027  (
    .C(aclk),
    .D(\blk00000001/sig00000027 ),
    .Q(\blk00000001/sig0000003f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000026  (
    .C(aclk),
    .D(\blk00000001/sig00000028 ),
    .Q(\blk00000001/sig00000040 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk0000000a  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(s_axis_cartesian_tdata[8]),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000067 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000009  (
    .C(aclk),
    .CE(\blk00000001/sig0000000d ),
    .D(s_axis_cartesian_tdata[9]),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000068 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000008  (
    .C(aclk),
    .D(\blk00000001/sig0000000d ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000057 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000007  (
    .C(aclk),
    .D(\blk00000001/sig00000057 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000058 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000006  (
    .C(aclk),
    .D(\blk00000001/sig00000058 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000059 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000005  (
    .C(aclk),
    .D(\blk00000001/sig00000059 ),
    .R(\blk00000001/sig0000000e ),
    .Q(\blk00000001/sig00000047 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000001/blk00000004  (
    .C(aclk),
    .D(s_axis_cartesian_tvalid),
    .Q(\blk00000001/sig0000000f )
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig0000000e )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig0000000d )
  );
  INV   \blk00000001/blk0000000b/blk00000025  (
    .I(\blk00000001/sig0000007e ),
    .O(\blk00000001/blk0000000b/sig000000dd )
  );
  INV   \blk00000001/blk0000000b/blk00000024  (
    .I(\blk00000001/sig00000068 ),
    .O(\blk00000001/blk0000000b/sig000000e2 )
  );
  INV   \blk00000001/blk0000000b/blk00000023  (
    .I(\blk00000001/sig00000067 ),
    .O(\blk00000001/blk0000000b/sig000000e3 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000022  (
    .I0(\blk00000001/sig00000028 ),
    .I1(\blk00000001/sig0000007d ),
    .O(\blk00000001/blk0000000b/sig000000de )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000021  (
    .I0(\blk00000001/sig00000027 ),
    .I1(\blk00000001/sig0000007c ),
    .O(\blk00000001/blk0000000b/sig000000df )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk00000020  (
    .I0(\blk00000001/sig00000026 ),
    .I1(\blk00000001/sig0000007b ),
    .O(\blk00000001/blk0000000b/sig000000e0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk0000000b/blk0000001f  (
    .I0(\blk00000001/sig00000084 ),
    .I1(\blk00000001/sig0000007a ),
    .O(\blk00000001/blk0000000b/sig000000e1 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001e  (
    .CI(\blk00000001/blk0000000b/sig000000dc ),
    .DI(\blk00000001/sig00000067 ),
    .S(\blk00000001/blk0000000b/sig000000e3 ),
    .O(\blk00000001/blk0000000b/sig000000eb )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001d  (
    .CI(\blk00000001/blk0000000b/sig000000eb ),
    .DI(\blk00000001/sig00000068 ),
    .S(\blk00000001/blk0000000b/sig000000e2 ),
    .O(\blk00000001/blk0000000b/sig000000ea )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001c  (
    .CI(\blk00000001/blk0000000b/sig000000ea ),
    .DI(\blk00000001/sig0000007a ),
    .S(\blk00000001/blk0000000b/sig000000e1 ),
    .O(\blk00000001/blk0000000b/sig000000e9 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001b  (
    .CI(\blk00000001/blk0000000b/sig000000e9 ),
    .DI(\blk00000001/sig0000007b ),
    .S(\blk00000001/blk0000000b/sig000000e0 ),
    .O(\blk00000001/blk0000000b/sig000000e8 )
  );
  MUXCY   \blk00000001/blk0000000b/blk0000001a  (
    .CI(\blk00000001/blk0000000b/sig000000e8 ),
    .DI(\blk00000001/sig0000007c ),
    .S(\blk00000001/blk0000000b/sig000000df ),
    .O(\blk00000001/blk0000000b/sig000000e7 )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000019  (
    .CI(\blk00000001/blk0000000b/sig000000e7 ),
    .DI(\blk00000001/sig0000007d ),
    .S(\blk00000001/blk0000000b/sig000000de ),
    .O(\blk00000001/blk0000000b/sig000000e6 )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000018  (
    .CI(\blk00000001/blk0000000b/sig000000e6 ),
    .DI(\blk00000001/sig0000007e ),
    .S(\blk00000001/blk0000000b/sig000000dd ),
    .O(\blk00000001/blk0000000b/sig000000e5 )
  );
  MUXCY   \blk00000001/blk0000000b/blk00000017  (
    .CI(\blk00000001/blk0000000b/sig000000e5 ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk0000000b/sig000000db ),
    .O(\blk00000001/blk0000000b/sig000000e4 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000016  (
    .CI(\blk00000001/blk0000000b/sig000000eb ),
    .LI(\blk00000001/blk0000000b/sig000000e2 ),
    .O(\blk00000001/sig00000061 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000015  (
    .CI(\blk00000001/blk0000000b/sig000000ea ),
    .LI(\blk00000001/blk0000000b/sig000000e1 ),
    .O(\blk00000001/sig00000062 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000014  (
    .CI(\blk00000001/blk0000000b/sig000000e9 ),
    .LI(\blk00000001/blk0000000b/sig000000e0 ),
    .O(\blk00000001/sig00000063 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000013  (
    .CI(\blk00000001/blk0000000b/sig000000e8 ),
    .LI(\blk00000001/blk0000000b/sig000000df ),
    .O(\blk00000001/sig00000064 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000012  (
    .CI(\blk00000001/blk0000000b/sig000000e7 ),
    .LI(\blk00000001/blk0000000b/sig000000de ),
    .O(\blk00000001/sig00000065 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000011  (
    .CI(\blk00000001/blk0000000b/sig000000e6 ),
    .LI(\blk00000001/blk0000000b/sig000000dd ),
    .O(\blk00000001/blk0000000b/sig000000d4 )
  );
  XORCY   \blk00000001/blk0000000b/blk00000010  (
    .CI(\blk00000001/blk0000000b/sig000000e5 ),
    .LI(\blk00000001/blk0000000b/sig000000db ),
    .O(\blk00000001/sig00000066 )
  );
  XORCY   \blk00000001/blk0000000b/blk0000000f  (
    .CI(\blk00000001/blk0000000b/sig000000e4 ),
    .LI(\blk00000001/blk0000000b/sig000000db ),
    .O(\blk00000001/blk0000000b/sig000000d2 )
  );
  XORCY   \blk00000001/blk0000000b/blk0000000e  (
    .CI(\blk00000001/blk0000000b/sig000000dc ),
    .LI(\blk00000001/blk0000000b/sig000000e3 ),
    .O(\blk00000001/sig00000060 )
  );
  GND   \blk00000001/blk0000000b/blk0000000d  (
    .G(\blk00000001/blk0000000b/sig000000dc )
  );
  VCC   \blk00000001/blk0000000b/blk0000000c  (
    .P(\blk00000001/blk0000000b/sig000000db )
  );
  INV   \blk00000001/blk00000031/blk0000004e  (
    .I(\blk00000001/sig00000046 ),
    .O(\blk00000001/blk00000031/sig00000106 )
  );
  INV   \blk00000001/blk00000031/blk0000004d  (
    .I(\blk00000001/sig00000079 ),
    .O(\blk00000001/blk00000031/sig0000010c )
  );
  INV   \blk00000001/blk00000031/blk0000004c  (
    .I(\blk00000001/sig00000078 ),
    .O(\blk00000001/blk00000031/sig0000010d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031/blk0000004b  (
    .I0(\blk00000001/sig00000045 ),
    .I1(\blk00000001/sig00000040 ),
    .O(\blk00000001/blk00000031/sig00000107 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031/blk0000004a  (
    .I0(\blk00000001/sig00000044 ),
    .I1(\blk00000001/sig0000003f ),
    .O(\blk00000001/blk00000031/sig00000108 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031/blk00000049  (
    .I0(\blk00000001/sig00000043 ),
    .I1(\blk00000001/sig0000003e ),
    .O(\blk00000001/blk00000031/sig00000109 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031/blk00000048  (
    .I0(\blk00000001/sig00000042 ),
    .I1(\blk00000001/sig0000003d ),
    .O(\blk00000001/blk00000031/sig0000010a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000031/blk00000047  (
    .I0(\blk00000001/sig00000041 ),
    .I1(\blk00000001/sig0000003c ),
    .O(\blk00000001/blk00000031/sig0000010b )
  );
  MUXCY   \blk00000001/blk00000031/blk00000046  (
    .CI(\blk00000001/blk00000031/sig00000105 ),
    .DI(\blk00000001/sig00000078 ),
    .S(\blk00000001/blk00000031/sig0000010d ),
    .O(\blk00000001/blk00000031/sig00000116 )
  );
  MUXCY   \blk00000001/blk00000031/blk00000045  (
    .CI(\blk00000001/blk00000031/sig00000116 ),
    .DI(\blk00000001/sig00000079 ),
    .S(\blk00000001/blk00000031/sig0000010c ),
    .O(\blk00000001/blk00000031/sig00000115 )
  );
  MUXCY   \blk00000001/blk00000031/blk00000044  (
    .CI(\blk00000001/blk00000031/sig00000115 ),
    .DI(\blk00000001/sig00000041 ),
    .S(\blk00000001/blk00000031/sig0000010b ),
    .O(\blk00000001/blk00000031/sig00000114 )
  );
  MUXCY   \blk00000001/blk00000031/blk00000043  (
    .CI(\blk00000001/blk00000031/sig00000114 ),
    .DI(\blk00000001/sig00000042 ),
    .S(\blk00000001/blk00000031/sig0000010a ),
    .O(\blk00000001/blk00000031/sig00000113 )
  );
  MUXCY   \blk00000001/blk00000031/blk00000042  (
    .CI(\blk00000001/blk00000031/sig00000113 ),
    .DI(\blk00000001/sig00000043 ),
    .S(\blk00000001/blk00000031/sig00000109 ),
    .O(\blk00000001/blk00000031/sig00000112 )
  );
  MUXCY   \blk00000001/blk00000031/blk00000041  (
    .CI(\blk00000001/blk00000031/sig00000112 ),
    .DI(\blk00000001/sig00000044 ),
    .S(\blk00000001/blk00000031/sig00000108 ),
    .O(\blk00000001/blk00000031/sig00000111 )
  );
  MUXCY   \blk00000001/blk00000031/blk00000040  (
    .CI(\blk00000001/blk00000031/sig00000111 ),
    .DI(\blk00000001/sig00000045 ),
    .S(\blk00000001/blk00000031/sig00000107 ),
    .O(\blk00000001/blk00000031/sig00000110 )
  );
  MUXCY   \blk00000001/blk00000031/blk0000003f  (
    .CI(\blk00000001/blk00000031/sig00000110 ),
    .DI(\blk00000001/sig00000046 ),
    .S(\blk00000001/blk00000031/sig00000106 ),
    .O(\blk00000001/blk00000031/sig0000010f )
  );
  MUXCY   \blk00000001/blk00000031/blk0000003e  (
    .CI(\blk00000001/blk00000031/sig0000010f ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk00000031/sig00000104 ),
    .O(\blk00000001/blk00000031/sig0000010e )
  );
  XORCY   \blk00000001/blk00000031/blk0000003d  (
    .CI(\blk00000001/blk00000031/sig00000116 ),
    .LI(\blk00000001/blk00000031/sig0000010c ),
    .O(\blk00000001/sig00000071 )
  );
  XORCY   \blk00000001/blk00000031/blk0000003c  (
    .CI(\blk00000001/blk00000031/sig00000115 ),
    .LI(\blk00000001/blk00000031/sig0000010b ),
    .O(\blk00000001/sig00000072 )
  );
  XORCY   \blk00000001/blk00000031/blk0000003b  (
    .CI(\blk00000001/blk00000031/sig00000114 ),
    .LI(\blk00000001/blk00000031/sig0000010a ),
    .O(\blk00000001/sig00000073 )
  );
  XORCY   \blk00000001/blk00000031/blk0000003a  (
    .CI(\blk00000001/blk00000031/sig00000113 ),
    .LI(\blk00000001/blk00000031/sig00000109 ),
    .O(\blk00000001/sig00000074 )
  );
  XORCY   \blk00000001/blk00000031/blk00000039  (
    .CI(\blk00000001/blk00000031/sig00000112 ),
    .LI(\blk00000001/blk00000031/sig00000108 ),
    .O(\blk00000001/sig00000075 )
  );
  XORCY   \blk00000001/blk00000031/blk00000038  (
    .CI(\blk00000001/blk00000031/sig00000111 ),
    .LI(\blk00000001/blk00000031/sig00000107 ),
    .O(\blk00000001/sig00000076 )
  );
  XORCY   \blk00000001/blk00000031/blk00000037  (
    .CI(\blk00000001/blk00000031/sig00000110 ),
    .LI(\blk00000001/blk00000031/sig00000106 ),
    .O(\blk00000001/blk00000031/sig000000fc )
  );
  XORCY   \blk00000001/blk00000031/blk00000036  (
    .CI(\blk00000001/blk00000031/sig0000010f ),
    .LI(\blk00000001/blk00000031/sig00000104 ),
    .O(\blk00000001/sig00000077 )
  );
  XORCY   \blk00000001/blk00000031/blk00000035  (
    .CI(\blk00000001/blk00000031/sig0000010e ),
    .LI(\blk00000001/blk00000031/sig00000104 ),
    .O(\blk00000001/blk00000031/sig000000fa )
  );
  XORCY   \blk00000001/blk00000031/blk00000034  (
    .CI(\blk00000001/blk00000031/sig00000105 ),
    .LI(\blk00000001/blk00000031/sig0000010d ),
    .O(\blk00000001/sig00000070 )
  );
  GND   \blk00000001/blk00000031/blk00000033  (
    .G(\blk00000001/blk00000031/sig00000105 )
  );
  VCC   \blk00000001/blk00000031/blk00000032  (
    .P(\blk00000001/blk00000031/sig00000104 )
  );
  INV   \blk00000001/blk00000051/blk00000068  (
    .I(\blk00000001/sig0000002c ),
    .O(\blk00000001/blk00000051/sig0000012b )
  );
  INV   \blk00000001/blk00000051/blk00000067  (
    .I(\blk00000001/sig00000086 ),
    .O(\blk00000001/blk00000051/sig0000012f )
  );
  INV   \blk00000001/blk00000051/blk00000066  (
    .I(\blk00000001/sig00000085 ),
    .O(\blk00000001/blk00000051/sig00000130 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051/blk00000065  (
    .I0(\blk00000001/sig0000002b ),
    .I1(\blk00000001/sig00000028 ),
    .O(\blk00000001/blk00000051/sig0000012c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051/blk00000064  (
    .I0(\blk00000001/sig0000002a ),
    .I1(\blk00000001/sig00000027 ),
    .O(\blk00000001/blk00000051/sig0000012d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000051/blk00000063  (
    .I0(\blk00000001/sig00000029 ),
    .I1(\blk00000001/sig00000026 ),
    .O(\blk00000001/blk00000051/sig0000012e )
  );
  MUXCY   \blk00000001/blk00000051/blk00000062  (
    .CI(\blk00000001/blk00000051/sig0000012a ),
    .DI(\blk00000001/sig00000085 ),
    .S(\blk00000001/blk00000051/sig00000130 ),
    .O(\blk00000001/blk00000051/sig00000137 )
  );
  MUXCY   \blk00000001/blk00000051/blk00000061  (
    .CI(\blk00000001/blk00000051/sig00000137 ),
    .DI(\blk00000001/sig00000086 ),
    .S(\blk00000001/blk00000051/sig0000012f ),
    .O(\blk00000001/blk00000051/sig00000136 )
  );
  MUXCY   \blk00000001/blk00000051/blk00000060  (
    .CI(\blk00000001/blk00000051/sig00000136 ),
    .DI(\blk00000001/sig00000029 ),
    .S(\blk00000001/blk00000051/sig0000012e ),
    .O(\blk00000001/blk00000051/sig00000135 )
  );
  MUXCY   \blk00000001/blk00000051/blk0000005f  (
    .CI(\blk00000001/blk00000051/sig00000135 ),
    .DI(\blk00000001/sig0000002a ),
    .S(\blk00000001/blk00000051/sig0000012d ),
    .O(\blk00000001/blk00000051/sig00000134 )
  );
  MUXCY   \blk00000001/blk00000051/blk0000005e  (
    .CI(\blk00000001/blk00000051/sig00000134 ),
    .DI(\blk00000001/sig0000002b ),
    .S(\blk00000001/blk00000051/sig0000012c ),
    .O(\blk00000001/blk00000051/sig00000133 )
  );
  MUXCY   \blk00000001/blk00000051/blk0000005d  (
    .CI(\blk00000001/blk00000051/sig00000133 ),
    .DI(\blk00000001/sig0000002c ),
    .S(\blk00000001/blk00000051/sig0000012b ),
    .O(\blk00000001/blk00000051/sig00000132 )
  );
  MUXCY   \blk00000001/blk00000051/blk0000005c  (
    .CI(\blk00000001/blk00000051/sig00000132 ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk00000051/sig00000129 ),
    .O(\blk00000001/blk00000051/sig00000131 )
  );
  XORCY   \blk00000001/blk00000051/blk0000005b  (
    .CI(\blk00000001/blk00000051/sig00000137 ),
    .LI(\blk00000001/blk00000051/sig0000012f ),
    .O(\blk00000001/sig00000080 )
  );
  XORCY   \blk00000001/blk00000051/blk0000005a  (
    .CI(\blk00000001/blk00000051/sig00000136 ),
    .LI(\blk00000001/blk00000051/sig0000012e ),
    .O(\blk00000001/sig00000081 )
  );
  XORCY   \blk00000001/blk00000051/blk00000059  (
    .CI(\blk00000001/blk00000051/sig00000135 ),
    .LI(\blk00000001/blk00000051/sig0000012d ),
    .O(\blk00000001/sig00000082 )
  );
  XORCY   \blk00000001/blk00000051/blk00000058  (
    .CI(\blk00000001/blk00000051/sig00000134 ),
    .LI(\blk00000001/blk00000051/sig0000012c ),
    .O(\blk00000001/sig00000083 )
  );
  XORCY   \blk00000001/blk00000051/blk00000057  (
    .CI(\blk00000001/blk00000051/sig00000133 ),
    .LI(\blk00000001/blk00000051/sig0000012b ),
    .O(\blk00000001/blk00000051/sig00000123 )
  );
  XORCY   \blk00000001/blk00000051/blk00000056  (
    .CI(\blk00000001/blk00000051/sig00000132 ),
    .LI(\blk00000001/blk00000051/sig00000129 ),
    .O(\blk00000001/sig00000084 )
  );
  XORCY   \blk00000001/blk00000051/blk00000055  (
    .CI(\blk00000001/blk00000051/sig00000131 ),
    .LI(\blk00000001/blk00000051/sig00000129 ),
    .O(\blk00000001/blk00000051/sig00000121 )
  );
  XORCY   \blk00000001/blk00000051/blk00000054  (
    .CI(\blk00000001/blk00000051/sig0000012a ),
    .LI(\blk00000001/blk00000051/sig00000130 ),
    .O(\blk00000001/sig0000007f )
  );
  GND   \blk00000001/blk00000051/blk00000053  (
    .G(\blk00000001/blk00000051/sig0000012a )
  );
  VCC   \blk00000001/blk00000051/blk00000052  (
    .P(\blk00000001/blk00000051/sig00000129 )
  );
  INV   \blk00000001/blk00000069/blk00000089  (
    .I(\blk00000001/sig0000006f ),
    .O(\blk00000001/blk00000069/sig00000155 )
  );
  INV   \blk00000001/blk00000069/blk00000088  (
    .I(\blk00000001/sig00000099 ),
    .O(\blk00000001/blk00000069/sig0000015c )
  );
  INV   \blk00000001/blk00000069/blk00000087  (
    .I(\blk00000001/sig00000098 ),
    .O(\blk00000001/blk00000069/sig0000015d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069/blk00000086  (
    .I0(\blk00000001/sig00000040 ),
    .I1(\blk00000001/sig0000006e ),
    .O(\blk00000001/blk00000069/sig00000156 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069/blk00000085  (
    .I0(\blk00000001/sig0000003f ),
    .I1(\blk00000001/sig0000006d ),
    .O(\blk00000001/blk00000069/sig00000157 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069/blk00000084  (
    .I0(\blk00000001/sig0000003e ),
    .I1(\blk00000001/sig0000006c ),
    .O(\blk00000001/blk00000069/sig00000158 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069/blk00000083  (
    .I0(\blk00000001/sig0000003d ),
    .I1(\blk00000001/sig0000006b ),
    .O(\blk00000001/blk00000069/sig00000159 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069/blk00000082  (
    .I0(\blk00000001/sig0000003c ),
    .I1(\blk00000001/sig0000006a ),
    .O(\blk00000001/blk00000069/sig0000015a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000069/blk00000081  (
    .I0(\blk00000001/sig00000077 ),
    .I1(\blk00000001/sig00000069 ),
    .O(\blk00000001/blk00000069/sig0000015b )
  );
  MUXCY   \blk00000001/blk00000069/blk00000080  (
    .CI(\blk00000001/blk00000069/sig00000154 ),
    .DI(\blk00000001/sig00000098 ),
    .S(\blk00000001/blk00000069/sig0000015d ),
    .O(\blk00000001/blk00000069/sig00000167 )
  );
  MUXCY   \blk00000001/blk00000069/blk0000007f  (
    .CI(\blk00000001/blk00000069/sig00000167 ),
    .DI(\blk00000001/sig00000099 ),
    .S(\blk00000001/blk00000069/sig0000015c ),
    .O(\blk00000001/blk00000069/sig00000166 )
  );
  MUXCY   \blk00000001/blk00000069/blk0000007e  (
    .CI(\blk00000001/blk00000069/sig00000166 ),
    .DI(\blk00000001/sig00000069 ),
    .S(\blk00000001/blk00000069/sig0000015b ),
    .O(\blk00000001/blk00000069/sig00000165 )
  );
  MUXCY   \blk00000001/blk00000069/blk0000007d  (
    .CI(\blk00000001/blk00000069/sig00000165 ),
    .DI(\blk00000001/sig0000006a ),
    .S(\blk00000001/blk00000069/sig0000015a ),
    .O(\blk00000001/blk00000069/sig00000164 )
  );
  MUXCY   \blk00000001/blk00000069/blk0000007c  (
    .CI(\blk00000001/blk00000069/sig00000164 ),
    .DI(\blk00000001/sig0000006b ),
    .S(\blk00000001/blk00000069/sig00000159 ),
    .O(\blk00000001/blk00000069/sig00000163 )
  );
  MUXCY   \blk00000001/blk00000069/blk0000007b  (
    .CI(\blk00000001/blk00000069/sig00000163 ),
    .DI(\blk00000001/sig0000006c ),
    .S(\blk00000001/blk00000069/sig00000158 ),
    .O(\blk00000001/blk00000069/sig00000162 )
  );
  MUXCY   \blk00000001/blk00000069/blk0000007a  (
    .CI(\blk00000001/blk00000069/sig00000162 ),
    .DI(\blk00000001/sig0000006d ),
    .S(\blk00000001/blk00000069/sig00000157 ),
    .O(\blk00000001/blk00000069/sig00000161 )
  );
  MUXCY   \blk00000001/blk00000069/blk00000079  (
    .CI(\blk00000001/blk00000069/sig00000161 ),
    .DI(\blk00000001/sig0000006e ),
    .S(\blk00000001/blk00000069/sig00000156 ),
    .O(\blk00000001/blk00000069/sig00000160 )
  );
  MUXCY   \blk00000001/blk00000069/blk00000078  (
    .CI(\blk00000001/blk00000069/sig00000160 ),
    .DI(\blk00000001/sig0000006f ),
    .S(\blk00000001/blk00000069/sig00000155 ),
    .O(\blk00000001/blk00000069/sig0000015f )
  );
  MUXCY   \blk00000001/blk00000069/blk00000077  (
    .CI(\blk00000001/blk00000069/sig0000015f ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk00000069/sig00000153 ),
    .O(\blk00000001/blk00000069/sig0000015e )
  );
  XORCY   \blk00000001/blk00000069/blk00000076  (
    .CI(\blk00000001/blk00000069/sig00000167 ),
    .LI(\blk00000001/blk00000069/sig0000015c ),
    .O(\blk00000001/sig00000090 )
  );
  XORCY   \blk00000001/blk00000069/blk00000075  (
    .CI(\blk00000001/blk00000069/sig00000166 ),
    .LI(\blk00000001/blk00000069/sig0000015b ),
    .O(\blk00000001/sig00000091 )
  );
  XORCY   \blk00000001/blk00000069/blk00000074  (
    .CI(\blk00000001/blk00000069/sig00000165 ),
    .LI(\blk00000001/blk00000069/sig0000015a ),
    .O(\blk00000001/sig00000092 )
  );
  XORCY   \blk00000001/blk00000069/blk00000073  (
    .CI(\blk00000001/blk00000069/sig00000164 ),
    .LI(\blk00000001/blk00000069/sig00000159 ),
    .O(\blk00000001/sig00000093 )
  );
  XORCY   \blk00000001/blk00000069/blk00000072  (
    .CI(\blk00000001/blk00000069/sig00000163 ),
    .LI(\blk00000001/blk00000069/sig00000158 ),
    .O(\blk00000001/sig00000094 )
  );
  XORCY   \blk00000001/blk00000069/blk00000071  (
    .CI(\blk00000001/blk00000069/sig00000162 ),
    .LI(\blk00000001/blk00000069/sig00000157 ),
    .O(\blk00000001/sig00000095 )
  );
  XORCY   \blk00000001/blk00000069/blk00000070  (
    .CI(\blk00000001/blk00000069/sig00000161 ),
    .LI(\blk00000001/blk00000069/sig00000156 ),
    .O(\blk00000001/sig00000096 )
  );
  XORCY   \blk00000001/blk00000069/blk0000006f  (
    .CI(\blk00000001/blk00000069/sig00000160 ),
    .LI(\blk00000001/blk00000069/sig00000155 ),
    .O(\blk00000001/blk00000069/sig0000014a )
  );
  XORCY   \blk00000001/blk00000069/blk0000006e  (
    .CI(\blk00000001/blk00000069/sig0000015f ),
    .LI(\blk00000001/blk00000069/sig00000153 ),
    .O(\blk00000001/sig00000097 )
  );
  XORCY   \blk00000001/blk00000069/blk0000006d  (
    .CI(\blk00000001/blk00000069/sig0000015e ),
    .LI(\blk00000001/blk00000069/sig00000153 ),
    .O(\blk00000001/blk00000069/sig00000148 )
  );
  XORCY   \blk00000001/blk00000069/blk0000006c  (
    .CI(\blk00000001/blk00000069/sig00000154 ),
    .LI(\blk00000001/blk00000069/sig0000015d ),
    .O(\blk00000001/sig0000008f )
  );
  GND   \blk00000001/blk00000069/blk0000006b  (
    .G(\blk00000001/blk00000069/sig00000154 )
  );
  VCC   \blk00000001/blk00000069/blk0000006a  (
    .P(\blk00000001/blk00000069/sig00000153 )
  );
  INV   \blk00000001/blk00000099/blk000000ac  (
    .I(s_axis_cartesian_tdata[13]),
    .O(\blk00000001/blk00000099/sig0000017b )
  );
  INV   \blk00000001/blk00000099/blk000000ab  (
    .I(s_axis_cartesian_tdata[12]),
    .O(\blk00000001/blk00000099/sig0000017c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000099/blk000000aa  (
    .I0(\blk00000001/sig00000010 ),
    .I1(\blk00000001/sig00000013 ),
    .O(\blk00000001/blk00000099/sig00000179 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk00000099/blk000000a9  (
    .I0(\blk00000001/sig00000011 ),
    .I1(\blk00000001/sig00000012 ),
    .O(\blk00000001/blk00000099/sig0000017a )
  );
  MUXCY   \blk00000001/blk00000099/blk000000a8  (
    .CI(\blk00000001/blk00000099/sig00000178 ),
    .DI(s_axis_cartesian_tdata[12]),
    .S(\blk00000001/blk00000099/sig0000017c ),
    .O(\blk00000001/blk00000099/sig00000182 )
  );
  MUXCY   \blk00000001/blk00000099/blk000000a7  (
    .CI(\blk00000001/blk00000099/sig00000182 ),
    .DI(s_axis_cartesian_tdata[13]),
    .S(\blk00000001/blk00000099/sig0000017b ),
    .O(\blk00000001/blk00000099/sig00000181 )
  );
  MUXCY   \blk00000001/blk00000099/blk000000a6  (
    .CI(\blk00000001/blk00000099/sig00000181 ),
    .DI(\blk00000001/sig00000011 ),
    .S(\blk00000001/blk00000099/sig0000017a ),
    .O(\blk00000001/blk00000099/sig00000180 )
  );
  MUXCY   \blk00000001/blk00000099/blk000000a5  (
    .CI(\blk00000001/blk00000099/sig00000180 ),
    .DI(\blk00000001/sig00000010 ),
    .S(\blk00000001/blk00000099/sig00000179 ),
    .O(\blk00000001/blk00000099/sig0000017f )
  );
  MUXCY   \blk00000001/blk00000099/blk000000a4  (
    .CI(\blk00000001/blk00000099/sig0000017f ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk00000099/sig00000177 ),
    .O(\blk00000001/blk00000099/sig0000017e )
  );
  MUXCY   \blk00000001/blk00000099/blk000000a3  (
    .CI(\blk00000001/blk00000099/sig0000017e ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk00000099/sig00000177 ),
    .O(\blk00000001/blk00000099/sig0000017d )
  );
  XORCY   \blk00000001/blk00000099/blk000000a2  (
    .CI(\blk00000001/blk00000099/sig00000182 ),
    .LI(\blk00000001/blk00000099/sig0000017b ),
    .O(\blk00000001/sig0000009f )
  );
  XORCY   \blk00000001/blk00000099/blk000000a1  (
    .CI(\blk00000001/blk00000099/sig00000181 ),
    .LI(\blk00000001/blk00000099/sig0000017a ),
    .O(\blk00000001/sig000000a0 )
  );
  XORCY   \blk00000001/blk00000099/blk000000a0  (
    .CI(\blk00000001/blk00000099/sig00000180 ),
    .LI(\blk00000001/blk00000099/sig00000179 ),
    .O(\blk00000001/sig000000a1 )
  );
  XORCY   \blk00000001/blk00000099/blk0000009f  (
    .CI(\blk00000001/blk00000099/sig0000017f ),
    .LI(\blk00000001/blk00000099/sig00000177 ),
    .O(\blk00000001/blk00000099/sig00000172 )
  );
  XORCY   \blk00000001/blk00000099/blk0000009e  (
    .CI(\blk00000001/blk00000099/sig0000017e ),
    .LI(\blk00000001/blk00000099/sig00000177 ),
    .O(\blk00000001/sig000000a2 )
  );
  XORCY   \blk00000001/blk00000099/blk0000009d  (
    .CI(\blk00000001/blk00000099/sig0000017d ),
    .LI(\blk00000001/blk00000099/sig00000177 ),
    .O(\blk00000001/blk00000099/sig00000170 )
  );
  XORCY   \blk00000001/blk00000099/blk0000009c  (
    .CI(\blk00000001/blk00000099/sig00000178 ),
    .LI(\blk00000001/blk00000099/sig0000017c ),
    .O(\blk00000001/sig0000009e )
  );
  GND   \blk00000001/blk00000099/blk0000009b  (
    .G(\blk00000001/blk00000099/sig00000178 )
  );
  VCC   \blk00000001/blk00000099/blk0000009a  (
    .P(\blk00000001/blk00000099/sig00000177 )
  );
  INV   \blk00000001/blk000000b4/blk000000d7  (
    .I(\blk00000001/sig0000003b ),
    .O(\blk00000001/blk000000b4/sig000001a3 )
  );
  INV   \blk00000001/blk000000b4/blk000000d6  (
    .I(\blk00000001/sig000000b9 ),
    .O(\blk00000001/blk000000b4/sig000001ab )
  );
  INV   \blk00000001/blk000000b4/blk000000d5  (
    .I(\blk00000001/sig000000b8 ),
    .O(\blk00000001/blk000000b4/sig000001ac )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000d4  (
    .I0(\blk00000001/sig0000003a ),
    .I1(\blk00000001/sig00000033 ),
    .O(\blk00000001/blk000000b4/sig000001a4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000d3  (
    .I0(\blk00000001/sig00000039 ),
    .I1(\blk00000001/sig00000032 ),
    .O(\blk00000001/blk000000b4/sig000001a5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000d2  (
    .I0(\blk00000001/sig00000038 ),
    .I1(\blk00000001/sig00000031 ),
    .O(\blk00000001/blk000000b4/sig000001a6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000d1  (
    .I0(\blk00000001/sig00000037 ),
    .I1(\blk00000001/sig00000030 ),
    .O(\blk00000001/blk000000b4/sig000001a7 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000d0  (
    .I0(\blk00000001/sig00000036 ),
    .I1(\blk00000001/sig0000002f ),
    .O(\blk00000001/blk000000b4/sig000001a8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000cf  (
    .I0(\blk00000001/sig00000035 ),
    .I1(\blk00000001/sig0000002e ),
    .O(\blk00000001/blk000000b4/sig000001a9 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000b4/blk000000ce  (
    .I0(\blk00000001/sig00000034 ),
    .I1(\blk00000001/sig0000002d ),
    .O(\blk00000001/blk000000b4/sig000001aa )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000cd  (
    .CI(\blk00000001/blk000000b4/sig000001a2 ),
    .DI(\blk00000001/sig000000b8 ),
    .S(\blk00000001/blk000000b4/sig000001ac ),
    .O(\blk00000001/blk000000b4/sig000001b7 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000cc  (
    .CI(\blk00000001/blk000000b4/sig000001b7 ),
    .DI(\blk00000001/sig000000b9 ),
    .S(\blk00000001/blk000000b4/sig000001ab ),
    .O(\blk00000001/blk000000b4/sig000001b6 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000cb  (
    .CI(\blk00000001/blk000000b4/sig000001b6 ),
    .DI(\blk00000001/sig00000034 ),
    .S(\blk00000001/blk000000b4/sig000001aa ),
    .O(\blk00000001/blk000000b4/sig000001b5 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000ca  (
    .CI(\blk00000001/blk000000b4/sig000001b5 ),
    .DI(\blk00000001/sig00000035 ),
    .S(\blk00000001/blk000000b4/sig000001a9 ),
    .O(\blk00000001/blk000000b4/sig000001b4 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c9  (
    .CI(\blk00000001/blk000000b4/sig000001b4 ),
    .DI(\blk00000001/sig00000036 ),
    .S(\blk00000001/blk000000b4/sig000001a8 ),
    .O(\blk00000001/blk000000b4/sig000001b3 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c8  (
    .CI(\blk00000001/blk000000b4/sig000001b3 ),
    .DI(\blk00000001/sig00000037 ),
    .S(\blk00000001/blk000000b4/sig000001a7 ),
    .O(\blk00000001/blk000000b4/sig000001b2 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c7  (
    .CI(\blk00000001/blk000000b4/sig000001b2 ),
    .DI(\blk00000001/sig00000038 ),
    .S(\blk00000001/blk000000b4/sig000001a6 ),
    .O(\blk00000001/blk000000b4/sig000001b1 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c6  (
    .CI(\blk00000001/blk000000b4/sig000001b1 ),
    .DI(\blk00000001/sig00000039 ),
    .S(\blk00000001/blk000000b4/sig000001a5 ),
    .O(\blk00000001/blk000000b4/sig000001b0 )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c5  (
    .CI(\blk00000001/blk000000b4/sig000001b0 ),
    .DI(\blk00000001/sig0000003a ),
    .S(\blk00000001/blk000000b4/sig000001a4 ),
    .O(\blk00000001/blk000000b4/sig000001af )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c4  (
    .CI(\blk00000001/blk000000b4/sig000001af ),
    .DI(\blk00000001/sig0000003b ),
    .S(\blk00000001/blk000000b4/sig000001a3 ),
    .O(\blk00000001/blk000000b4/sig000001ae )
  );
  MUXCY   \blk00000001/blk000000b4/blk000000c3  (
    .CI(\blk00000001/blk000000b4/sig000001ae ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk000000b4/sig000001a1 ),
    .O(\blk00000001/blk000000b4/sig000001ad )
  );
  XORCY   \blk00000001/blk000000b4/blk000000c2  (
    .CI(\blk00000001/blk000000b4/sig000001b7 ),
    .LI(\blk00000001/blk000000b4/sig000001ab ),
    .O(\blk00000001/sig000000af )
  );
  XORCY   \blk00000001/blk000000b4/blk000000c1  (
    .CI(\blk00000001/blk000000b4/sig000001b6 ),
    .LI(\blk00000001/blk000000b4/sig000001aa ),
    .O(\blk00000001/sig000000b0 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000c0  (
    .CI(\blk00000001/blk000000b4/sig000001b5 ),
    .LI(\blk00000001/blk000000b4/sig000001a9 ),
    .O(\blk00000001/sig000000b1 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000bf  (
    .CI(\blk00000001/blk000000b4/sig000001b4 ),
    .LI(\blk00000001/blk000000b4/sig000001a8 ),
    .O(\blk00000001/sig000000b2 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000be  (
    .CI(\blk00000001/blk000000b4/sig000001b3 ),
    .LI(\blk00000001/blk000000b4/sig000001a7 ),
    .O(\blk00000001/sig000000b3 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000bd  (
    .CI(\blk00000001/blk000000b4/sig000001b2 ),
    .LI(\blk00000001/blk000000b4/sig000001a6 ),
    .O(\blk00000001/sig000000b4 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000bc  (
    .CI(\blk00000001/blk000000b4/sig000001b1 ),
    .LI(\blk00000001/blk000000b4/sig000001a5 ),
    .O(\blk00000001/sig000000b5 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000bb  (
    .CI(\blk00000001/blk000000b4/sig000001b0 ),
    .LI(\blk00000001/blk000000b4/sig000001a4 ),
    .O(\blk00000001/sig000000b6 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000ba  (
    .CI(\blk00000001/blk000000b4/sig000001af ),
    .LI(\blk00000001/blk000000b4/sig000001a3 ),
    .O(\blk00000001/blk000000b4/sig00000197 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000b9  (
    .CI(\blk00000001/blk000000b4/sig000001ae ),
    .LI(\blk00000001/blk000000b4/sig000001a1 ),
    .O(\blk00000001/sig000000b7 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000b8  (
    .CI(\blk00000001/blk000000b4/sig000001ad ),
    .LI(\blk00000001/blk000000b4/sig000001a1 ),
    .O(\blk00000001/blk000000b4/sig00000195 )
  );
  XORCY   \blk00000001/blk000000b4/blk000000b7  (
    .CI(\blk00000001/blk000000b4/sig000001a2 ),
    .LI(\blk00000001/blk000000b4/sig000001ac ),
    .O(\blk00000001/sig000000ae )
  );
  GND   \blk00000001/blk000000b4/blk000000b6  (
    .G(\blk00000001/blk000000b4/sig000001a2 )
  );
  VCC   \blk00000001/blk000000b4/blk000000b5  (
    .P(\blk00000001/blk000000b4/sig000001a1 )
  );
  INV   \blk00000001/blk000000d8/blk000000fe  (
    .I(\blk00000001/sig000000ad ),
    .O(\blk00000001/blk000000d8/sig000001db )
  );
  INV   \blk00000001/blk000000d8/blk000000fd  (
    .I(\blk00000001/sig000000bc ),
    .O(\blk00000001/blk000000d8/sig000001e4 )
  );
  INV   \blk00000001/blk000000d8/blk000000fc  (
    .I(\blk00000001/sig000000bb ),
    .O(\blk00000001/blk000000d8/sig000001e5 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000fb  (
    .I0(\blk00000001/sig00000033 ),
    .I1(\blk00000001/sig000000ac ),
    .O(\blk00000001/blk000000d8/sig000001dc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000fa  (
    .I0(\blk00000001/sig00000032 ),
    .I1(\blk00000001/sig000000ab ),
    .O(\blk00000001/blk000000d8/sig000001dd )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000f9  (
    .I0(\blk00000001/sig00000031 ),
    .I1(\blk00000001/sig000000aa ),
    .O(\blk00000001/blk000000d8/sig000001de )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000f8  (
    .I0(\blk00000001/sig00000030 ),
    .I1(\blk00000001/sig000000a9 ),
    .O(\blk00000001/blk000000d8/sig000001df )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000f7  (
    .I0(\blk00000001/sig0000002f ),
    .I1(\blk00000001/sig000000a8 ),
    .O(\blk00000001/blk000000d8/sig000001e0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000f6  (
    .I0(\blk00000001/sig0000002e ),
    .I1(\blk00000001/sig000000a7 ),
    .O(\blk00000001/blk000000d8/sig000001e1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000f5  (
    .I0(\blk00000001/sig0000002d ),
    .I1(\blk00000001/sig000000a6 ),
    .O(\blk00000001/blk000000d8/sig000001e2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000001/blk000000d8/blk000000f4  (
    .I0(\blk00000001/sig000000b7 ),
    .I1(\blk00000001/sig000000a5 ),
    .O(\blk00000001/blk000000d8/sig000001e3 )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000f3  (
    .CI(\blk00000001/blk000000d8/sig000001da ),
    .DI(\blk00000001/sig000000bb ),
    .S(\blk00000001/blk000000d8/sig000001e5 ),
    .O(\blk00000001/blk000000d8/sig000001f1 )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000f2  (
    .CI(\blk00000001/blk000000d8/sig000001f1 ),
    .DI(\blk00000001/sig000000bc ),
    .S(\blk00000001/blk000000d8/sig000001e4 ),
    .O(\blk00000001/blk000000d8/sig000001f0 )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000f1  (
    .CI(\blk00000001/blk000000d8/sig000001f0 ),
    .DI(\blk00000001/sig000000a5 ),
    .S(\blk00000001/blk000000d8/sig000001e3 ),
    .O(\blk00000001/blk000000d8/sig000001ef )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000f0  (
    .CI(\blk00000001/blk000000d8/sig000001ef ),
    .DI(\blk00000001/sig000000a6 ),
    .S(\blk00000001/blk000000d8/sig000001e2 ),
    .O(\blk00000001/blk000000d8/sig000001ee )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000ef  (
    .CI(\blk00000001/blk000000d8/sig000001ee ),
    .DI(\blk00000001/sig000000a7 ),
    .S(\blk00000001/blk000000d8/sig000001e1 ),
    .O(\blk00000001/blk000000d8/sig000001ed )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000ee  (
    .CI(\blk00000001/blk000000d8/sig000001ed ),
    .DI(\blk00000001/sig000000a8 ),
    .S(\blk00000001/blk000000d8/sig000001e0 ),
    .O(\blk00000001/blk000000d8/sig000001ec )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000ed  (
    .CI(\blk00000001/blk000000d8/sig000001ec ),
    .DI(\blk00000001/sig000000a9 ),
    .S(\blk00000001/blk000000d8/sig000001df ),
    .O(\blk00000001/blk000000d8/sig000001eb )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000ec  (
    .CI(\blk00000001/blk000000d8/sig000001eb ),
    .DI(\blk00000001/sig000000aa ),
    .S(\blk00000001/blk000000d8/sig000001de ),
    .O(\blk00000001/blk000000d8/sig000001ea )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000eb  (
    .CI(\blk00000001/blk000000d8/sig000001ea ),
    .DI(\blk00000001/sig000000ab ),
    .S(\blk00000001/blk000000d8/sig000001dd ),
    .O(\blk00000001/blk000000d8/sig000001e9 )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000ea  (
    .CI(\blk00000001/blk000000d8/sig000001e9 ),
    .DI(\blk00000001/sig000000ac ),
    .S(\blk00000001/blk000000d8/sig000001dc ),
    .O(\blk00000001/blk000000d8/sig000001e8 )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000e9  (
    .CI(\blk00000001/blk000000d8/sig000001e8 ),
    .DI(\blk00000001/sig000000ad ),
    .S(\blk00000001/blk000000d8/sig000001db ),
    .O(\blk00000001/blk000000d8/sig000001e7 )
  );
  MUXCY   \blk00000001/blk000000d8/blk000000e8  (
    .CI(\blk00000001/blk000000d8/sig000001e7 ),
    .DI(\blk00000001/sig0000000e ),
    .S(\blk00000001/blk000000d8/sig000001d9 ),
    .O(\blk00000001/blk000000d8/sig000001e6 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e7  (
    .CI(\blk00000001/blk000000d8/sig000001f1 ),
    .LI(\blk00000001/blk000000d8/sig000001e4 ),
    .O(\blk00000001/blk000000d8/sig000001d7 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e6  (
    .CI(\blk00000001/blk000000d8/sig000001f0 ),
    .LI(\blk00000001/blk000000d8/sig000001e3 ),
    .O(\blk00000001/blk000000d8/sig000001d6 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e5  (
    .CI(\blk00000001/blk000000d8/sig000001ef ),
    .LI(\blk00000001/blk000000d8/sig000001e2 ),
    .O(\blk00000001/blk000000d8/sig000001d5 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e4  (
    .CI(\blk00000001/blk000000d8/sig000001ee ),
    .LI(\blk00000001/blk000000d8/sig000001e1 ),
    .O(\blk00000001/blk000000d8/sig000001d4 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e3  (
    .CI(\blk00000001/blk000000d8/sig000001ed ),
    .LI(\blk00000001/blk000000d8/sig000001e0 ),
    .O(\blk00000001/blk000000d8/sig000001d3 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e2  (
    .CI(\blk00000001/blk000000d8/sig000001ec ),
    .LI(\blk00000001/blk000000d8/sig000001df ),
    .O(\blk00000001/blk000000d8/sig000001d2 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e1  (
    .CI(\blk00000001/blk000000d8/sig000001eb ),
    .LI(\blk00000001/blk000000d8/sig000001de ),
    .O(\blk00000001/blk000000d8/sig000001d1 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000e0  (
    .CI(\blk00000001/blk000000d8/sig000001ea ),
    .LI(\blk00000001/blk000000d8/sig000001dd ),
    .O(\blk00000001/blk000000d8/sig000001d0 )
  );
  XORCY   \blk00000001/blk000000d8/blk000000df  (
    .CI(\blk00000001/blk000000d8/sig000001e9 ),
    .LI(\blk00000001/blk000000d8/sig000001dc ),
    .O(\blk00000001/blk000000d8/sig000001cf )
  );
  XORCY   \blk00000001/blk000000d8/blk000000de  (
    .CI(\blk00000001/blk000000d8/sig000001e8 ),
    .LI(\blk00000001/blk000000d8/sig000001db ),
    .O(\blk00000001/blk000000d8/sig000001ce )
  );
  XORCY   \blk00000001/blk000000d8/blk000000dd  (
    .CI(\blk00000001/blk000000d8/sig000001e7 ),
    .LI(\blk00000001/blk000000d8/sig000001d9 ),
    .O(\blk00000001/sig000000ba )
  );
  XORCY   \blk00000001/blk000000d8/blk000000dc  (
    .CI(\blk00000001/blk000000d8/sig000001e6 ),
    .LI(\blk00000001/blk000000d8/sig000001d9 ),
    .O(\blk00000001/blk000000d8/sig000001cc )
  );
  XORCY   \blk00000001/blk000000d8/blk000000db  (
    .CI(\blk00000001/blk000000d8/sig000001da ),
    .LI(\blk00000001/blk000000d8/sig000001e5 ),
    .O(\blk00000001/blk000000d8/sig000001d8 )
  );
  GND   \blk00000001/blk000000d8/blk000000da  (
    .G(\blk00000001/blk000000d8/sig000001da )
  );
  VCC   \blk00000001/blk000000d8/blk000000d9  (
    .P(\blk00000001/blk000000d8/sig000001d9 )
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
