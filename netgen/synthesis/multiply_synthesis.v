////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: multiply_synthesis.v
// /___/   /\     Timestamp: Sat Apr 29 01:49:45 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim multiply.ngc multiply_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: multiply.ngc
// Output file	: C:\Users\Ali Yazdi\Desktop\Ali Yazdi\m\netgen\synthesis\multiply_synthesis.v
// # of Modules	: 1
// Design Name	: multiply
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module multiply (
  g, reset, clk, multiplicand, multiplier, product_msb, product_lsb
);
  input g;
  input reset;
  input clk;
  input [15 : 0] multiplicand;
  input [15 : 0] multiplier;
  inout [15 : 0] product_msb;
  output [15 : 0] product_lsb;
  wire multiplicand_15_IBUF_0;
  wire multiplicand_14_IBUF_1;
  wire multiplicand_13_IBUF_2;
  wire multiplicand_12_IBUF_3;
  wire multiplicand_11_IBUF_4;
  wire multiplicand_10_IBUF_5;
  wire multiplicand_9_IBUF_6;
  wire multiplicand_8_IBUF_7;
  wire multiplicand_7_IBUF_8;
  wire multiplicand_6_IBUF_9;
  wire multiplicand_5_IBUF_10;
  wire multiplicand_4_IBUF_11;
  wire multiplicand_3_IBUF_12;
  wire multiplicand_2_IBUF_13;
  wire multiplicand_1_IBUF_14;
  wire multiplicand_0_IBUF_15;
  wire multiplier_15_IBUF_16;
  wire multiplier_14_IBUF_17;
  wire multiplier_13_IBUF_18;
  wire multiplier_12_IBUF_19;
  wire multiplier_11_IBUF_20;
  wire multiplier_10_IBUF_21;
  wire multiplier_9_IBUF_22;
  wire multiplier_8_IBUF_23;
  wire multiplier_7_IBUF_24;
  wire multiplier_6_IBUF_25;
  wire multiplier_5_IBUF_26;
  wire multiplier_4_IBUF_27;
  wire multiplier_3_IBUF_28;
  wire multiplier_2_IBUF_29;
  wire multiplier_1_IBUF_30;
  wire multiplier_0_IBUF_31;
  wire g_IBUF_32;
  wire reset_IBUF_33;
  wire clk_BUFGP_34;
  wire cout;
  wire \mycontroller/load_a_52 ;
  wire \mycontroller/load_q_53 ;
  wire \mycontroller/reset_a_54 ;
  wire reset_dff;
  wire \mydff/q_72 ;
  wire \myfa/p3/p3/p2/Mxor_s_xo<0>1 ;
  wire \myfa/p2/p3/p2/Mxor_s_xo<0>1 ;
  wire \myfa/p2/p1/p2/Mxor_s_xo<0>1 ;
  wire \myfa/p1/p3/p2/Mxor_s_xo<0>2 ;
  wire \myreg_q/lsb_q_mul[0]_MUX_20_o ;
  wire \myreg_q/dffq[0].mydffq/q_78 ;
  wire \myreg_q/dffq[1].mydffq/q_79 ;
  wire \myreg_q/dffq[2].mydffq/q_80 ;
  wire \myreg_q/dffq[3].mydffq/q_81 ;
  wire \myreg_q/dffq[4].mydffq/q_82 ;
  wire \myreg_q/dffq[5].mydffq/q_83 ;
  wire \myreg_q/dffq[6].mydffq/q_84 ;
  wire \myreg_q/dffq[7].mydffq/q_85 ;
  wire \myreg_q/dffq[8].mydffq/q_86 ;
  wire \myreg_q/dffq[9].mydffq/q_87 ;
  wire \myreg_q/dffq[10].mydffq/q_88 ;
  wire \myreg_q/dffq[11].mydffq/q_89 ;
  wire \myreg_q/dffq[12].mydffq/q_90 ;
  wire \myreg_q/dffq[13].mydffq/q_91 ;
  wire \myreg_q/dffq[14].mydffq/q_92 ;
  wire \myreg_q/d1q/q_93 ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<1> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<2> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<3> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<4> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<5> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<6> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<7> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<8> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<9> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<10> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<11> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<12> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<13> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<14> ;
  wire \myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<15> ;
  wire \mycontroller/current_state_FSM_FFd2-In ;
  wire \mycontroller/current_state[1]_PWR_22_o_Mux_19_o ;
  wire \mycontroller/current_state[1]_PWR_20_o_Mux_15_o ;
  wire \mycontroller/current_state[1]_X_13_o_Mux_14_o ;
  wire \mycontroller/current_state[1]_PWR_18_o_Mux_11_o ;
  wire \mycontroller/current_state_FSM_FFd2_114 ;
  wire \mycontroller/current_state_FSM_FFd1_115 ;
  wire \myreg_a/lsb_a_sum[0]_MUX_18_o ;
  wire \myreg_a/dffa[0].mydffa/q_117 ;
  wire \myreg_a/dffa[1].mydffa/q_118 ;
  wire \myreg_a/dffa[2].mydffa/q_119 ;
  wire \myreg_a/dffa[3].mydffa/q_120 ;
  wire \myreg_a/dffa[4].mydffa/q_121 ;
  wire \myreg_a/dffa[5].mydffa/q_122 ;
  wire \myreg_a/dffa[6].mydffa/q_123 ;
  wire \myreg_a/dffa[7].mydffa/q_124 ;
  wire \myreg_a/dffa[8].mydffa/q_125 ;
  wire \myreg_a/dffa[9].mydffa/q_126 ;
  wire \myreg_a/dffa[10].mydffa/q_127 ;
  wire \myreg_a/dffa[11].mydffa/q_128 ;
  wire \myreg_a/dffa[12].mydffa/q_129 ;
  wire \myreg_a/dffa[13].mydffa/q_130 ;
  wire \myreg_a/dffa[14].mydffa/q_131 ;
  wire \myreg_a/d1a/q_132 ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<1> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<2> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<3> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<4> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<5> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<6> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<7> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<8> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<9> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<10> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<11> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<12> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<13> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<14> ;
  wire \myreg_a/product_msb[15]_sum[15]_mux_1_OUT<15> ;
  wire N01;
  wire N2;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N30;
  wire N31;
  wire N33;
  wire N34;
  wire N36;
  wire N37;
  wire N39;
  wire N40;
  wire N42;
  wire N43;
  wire N45;
  wire N46;
  wire N48;
  wire N49;
  wire N54;
  wire N55;
  wire N57;
  wire N58;
  wire N60;
  wire N61;
  wire N63;
  wire N64;
  wire N66;
  wire N67;
  wire N69;
  wire N70;
  wire [15 : 0] \myreg_q/product_lsb ;
  wire [15 : 0] \myreg_a/product_msb ;
  FDC   \mydff/q  (
    .C(clk_BUFGP_34),
    .CLR(reset_dff),
    .D(cout),
    .Q(\mydff/q_72 )
  );
  FDC   \myreg_q/d1q/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb [0]),
    .Q(\myreg_q/d1q/q_93 )
  );
  FDC   \myreg_q/dffq[14].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/d1q/q_93 ),
    .Q(\myreg_q/dffq[14].mydffq/q_92 )
  );
  FDC   \myreg_q/dffq[13].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[14].mydffq/q_92 ),
    .Q(\myreg_q/dffq[13].mydffq/q_91 )
  );
  FDC   \myreg_q/dffq[12].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[13].mydffq/q_91 ),
    .Q(\myreg_q/dffq[12].mydffq/q_90 )
  );
  FDC   \myreg_q/dffq[11].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[12].mydffq/q_90 ),
    .Q(\myreg_q/dffq[11].mydffq/q_89 )
  );
  FDC   \myreg_q/dffq[10].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[11].mydffq/q_89 ),
    .Q(\myreg_q/dffq[10].mydffq/q_88 )
  );
  FDC   \myreg_q/dffq[9].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[10].mydffq/q_88 ),
    .Q(\myreg_q/dffq[9].mydffq/q_87 )
  );
  FDC   \myreg_q/dffq[8].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[9].mydffq/q_87 ),
    .Q(\myreg_q/dffq[8].mydffq/q_86 )
  );
  FDC   \myreg_q/dffq[7].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[8].mydffq/q_86 ),
    .Q(\myreg_q/dffq[7].mydffq/q_85 )
  );
  FDC   \myreg_q/dffq[6].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[7].mydffq/q_85 ),
    .Q(\myreg_q/dffq[6].mydffq/q_84 )
  );
  FDC   \myreg_q/dffq[5].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[6].mydffq/q_84 ),
    .Q(\myreg_q/dffq[5].mydffq/q_83 )
  );
  FDC   \myreg_q/dffq[4].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[5].mydffq/q_83 ),
    .Q(\myreg_q/dffq[4].mydffq/q_82 )
  );
  FDC   \myreg_q/dffq[3].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[4].mydffq/q_82 ),
    .Q(\myreg_q/dffq[3].mydffq/q_81 )
  );
  FDC   \myreg_q/dffq[2].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[3].mydffq/q_81 ),
    .Q(\myreg_q/dffq[2].mydffq/q_80 )
  );
  FDC   \myreg_q/dffq[1].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[2].mydffq/q_80 ),
    .Q(\myreg_q/dffq[1].mydffq/q_79 )
  );
  FDC   \myreg_q/dffq[0].mydffq/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/dffq[1].mydffq/q_79 ),
    .Q(\myreg_q/dffq[0].mydffq/q_78 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \mycontroller/current_state_FSM_FFd1  (
    .C(clk_BUFGP_34),
    .CLR(reset_IBUF_33),
    .D(\mycontroller/current_state_FSM_FFd2_114 ),
    .Q(\mycontroller/current_state_FSM_FFd1_115 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \mycontroller/current_state_FSM_FFd2  (
    .C(clk_BUFGP_34),
    .CLR(reset_IBUF_33),
    .D(\mycontroller/current_state_FSM_FFd2-In ),
    .Q(\mycontroller/current_state_FSM_FFd2_114 )
  );
  LD   \mycontroller/load_a  (
    .D(\mycontroller/current_state_FSM_FFd2_114 ),
    .G(\mycontroller/current_state[1]_PWR_22_o_Mux_19_o ),
    .Q(\mycontroller/load_a_52 )
  );
  LD   \mycontroller/reset_a  (
    .D(\mycontroller/current_state[1]_X_13_o_Mux_14_o ),
    .G(\mycontroller/current_state[1]_PWR_18_o_Mux_11_o ),
    .Q(\mycontroller/reset_a_54 )
  );
  LD   \mycontroller/load_q  (
    .D(\mycontroller/current_state[1]_X_13_o_Mux_14_o ),
    .G(\mycontroller/current_state[1]_PWR_20_o_Mux_15_o ),
    .Q(\mycontroller/load_q_53 )
  );
  FDC   \myreg_a/d1a/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\mydff/q_72 ),
    .Q(\myreg_a/d1a/q_132 )
  );
  FDC   \myreg_a/dffa[14].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/d1a/q_132 ),
    .Q(\myreg_a/dffa[14].mydffa/q_131 )
  );
  FDC   \myreg_a/dffa[13].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[14].mydffa/q_131 ),
    .Q(\myreg_a/dffa[13].mydffa/q_130 )
  );
  FDC   \myreg_a/dffa[12].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[13].mydffa/q_130 ),
    .Q(\myreg_a/dffa[12].mydffa/q_129 )
  );
  FDC   \myreg_a/dffa[11].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[12].mydffa/q_129 ),
    .Q(\myreg_a/dffa[11].mydffa/q_128 )
  );
  FDC   \myreg_a/dffa[10].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[11].mydffa/q_128 ),
    .Q(\myreg_a/dffa[10].mydffa/q_127 )
  );
  FDC   \myreg_a/dffa[9].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[10].mydffa/q_127 ),
    .Q(\myreg_a/dffa[9].mydffa/q_126 )
  );
  FDC   \myreg_a/dffa[8].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[9].mydffa/q_126 ),
    .Q(\myreg_a/dffa[8].mydffa/q_125 )
  );
  FDC   \myreg_a/dffa[7].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[8].mydffa/q_125 ),
    .Q(\myreg_a/dffa[7].mydffa/q_124 )
  );
  FDC   \myreg_a/dffa[6].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[7].mydffa/q_124 ),
    .Q(\myreg_a/dffa[6].mydffa/q_123 )
  );
  FDC   \myreg_a/dffa[5].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[6].mydffa/q_123 ),
    .Q(\myreg_a/dffa[5].mydffa/q_122 )
  );
  FDC   \myreg_a/dffa[4].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[5].mydffa/q_122 ),
    .Q(\myreg_a/dffa[4].mydffa/q_121 )
  );
  FDC   \myreg_a/dffa[3].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[4].mydffa/q_121 ),
    .Q(\myreg_a/dffa[3].mydffa/q_120 )
  );
  FDC   \myreg_a/dffa[2].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[3].mydffa/q_120 ),
    .Q(\myreg_a/dffa[2].mydffa/q_119 )
  );
  FDC   \myreg_a/dffa[1].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[2].mydffa/q_119 ),
    .Q(\myreg_a/dffa[1].mydffa/q_118 )
  );
  FDC   \myreg_a/dffa[0].mydffa/q  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/dffa[1].mydffa/q_118 ),
    .Q(\myreg_a/dffa[0].mydffa/q_117 )
  );
  LUT4 #(
    .INIT ( 16'hE8C0 ))
  \myfa/p1/p3/p2/Mxor_s_xo<0>21  (
    .I0(multiplicand_0_IBUF_15),
    .I1(multiplicand_1_IBUF_14),
    .I2(\myreg_a/product_msb [1]),
    .I3(\myreg_a/product_msb [0]),
    .O(\myfa/p1/p3/p2/Mxor_s_xo<0>2 )
  );
  LUT5 #(
    .INIT ( 32'hFEC8EC80 ))
  \myfa/p2/p1/p2/Mxor_s_xo<0>11  (
    .I0(multiplicand_2_IBUF_13),
    .I1(multiplicand_3_IBUF_12),
    .I2(\myreg_a/product_msb [2]),
    .I3(\myreg_a/product_msb [3]),
    .I4(\myfa/p1/p3/p2/Mxor_s_xo<0>2 ),
    .O(\myfa/p2/p1/p2/Mxor_s_xo<0>1 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/lsb_q_mul[0]_MUX_20_o1  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[0].mydffq/q_78 ),
    .I2(multiplier_0_IBUF_31),
    .O(\myreg_q/lsb_q_mul[0]_MUX_20_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT21  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[10].mydffq/q_88 ),
    .I2(multiplier_10_IBUF_21),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT31  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[11].mydffq/q_89 ),
    .I2(multiplier_11_IBUF_20),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT41  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[12].mydffq/q_90 ),
    .I2(multiplier_12_IBUF_19),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT51  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[13].mydffq/q_91 ),
    .I2(multiplier_13_IBUF_18),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT61  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[14].mydffq/q_92 ),
    .I2(multiplier_14_IBUF_17),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT71  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/d1q/q_93 ),
    .I2(multiplier_15_IBUF_16),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT81  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[1].mydffq/q_79 ),
    .I2(multiplier_1_IBUF_30),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT91  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[2].mydffq/q_80 ),
    .I2(multiplier_2_IBUF_29),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT101  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[3].mydffq/q_81 ),
    .I2(multiplier_3_IBUF_28),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT111  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[4].mydffq/q_82 ),
    .I2(multiplier_4_IBUF_27),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT121  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[5].mydffq/q_83 ),
    .I2(multiplier_5_IBUF_26),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT131  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[6].mydffq/q_84 ),
    .I2(multiplier_6_IBUF_25),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT141  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[7].mydffq/q_85 ),
    .I2(multiplier_7_IBUF_24),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT151  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[8].mydffq/q_86 ),
    .I2(multiplier_8_IBUF_23),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \myreg_q/Mmux_product_lsb[15]_mul[15]_mux_1_OUT161  (
    .I0(\mycontroller/load_q_53 ),
    .I1(\myreg_q/dffq[9].mydffq/q_87 ),
    .I2(multiplier_9_IBUF_22),
    .O(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'h15 ))
  \mycontroller/reset_dff1  (
    .I0(\mycontroller/current_state_FSM_FFd1_115 ),
    .I1(\mycontroller/current_state_FSM_FFd2_114 ),
    .I2(\myreg_q/product_lsb [0]),
    .O(reset_dff)
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \mycontroller/current_state[1]_PWR_22_o_Mux_19_o1  (
    .I0(\myreg_q/product_lsb [0]),
    .I1(\mycontroller/current_state_FSM_FFd2_114 ),
    .I2(\mycontroller/current_state_FSM_FFd1_115 ),
    .O(\mycontroller/current_state[1]_PWR_22_o_Mux_19_o )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \mycontroller/current_state[1]_PWR_20_o_Mux_15_o1  (
    .I0(g_IBUF_32),
    .I1(\mycontroller/current_state_FSM_FFd1_115 ),
    .I2(\mycontroller/current_state_FSM_FFd2_114 ),
    .O(\mycontroller/current_state[1]_PWR_20_o_Mux_15_o )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \mycontroller/current_state_FSM_FFd2-In1  (
    .I0(g_IBUF_32),
    .I1(\mycontroller/current_state_FSM_FFd2_114 ),
    .I2(\mycontroller/current_state_FSM_FFd1_115 ),
    .O(\mycontroller/current_state_FSM_FFd2-In )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \mycontroller/current_state__n0031<1>1  (
    .I0(\mycontroller/current_state_FSM_FFd2_114 ),
    .I1(\mycontroller/current_state_FSM_FFd1_115 ),
    .O(\mycontroller/current_state[1]_X_13_o_Mux_14_o )
  );
  LUT4 #(
    .INIT ( 16'h7D28 ))
  \myreg_a/lsb_a_sum[0]_MUX_18_o1  (
    .I0(\mycontroller/load_a_52 ),
    .I1(multiplicand_0_IBUF_15),
    .I2(\myreg_a/product_msb [0]),
    .I3(\myreg_a/dffa[0].mydffa/q_117 ),
    .O(\myreg_a/lsb_a_sum[0]_MUX_18_o )
  );
  LUT6 #(
    .INIT ( 64'hD57F7FD5802A2A80 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT81  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/product_msb [0]),
    .I2(multiplicand_0_IBUF_15),
    .I3(\myreg_a/product_msb [1]),
    .I4(multiplicand_1_IBUF_14),
    .I5(\myreg_a/dffa[1].mydffa/q_118 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hD77D8228 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT91  (
    .I0(\mycontroller/load_a_52 ),
    .I1(multiplicand_2_IBUF_13),
    .I2(\myfa/p1/p3/p2/Mxor_s_xo<0>2 ),
    .I3(\myreg_a/product_msb [2]),
    .I4(\myreg_a/dffa[2].mydffa/q_119 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'hB87474B8 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT111  (
    .I0(multiplicand_4_IBUF_11),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[4].mydffa/q_121 ),
    .I3(\myreg_a/product_msb [4]),
    .I4(\myfa/p2/p1/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<4> )
  );
  LUT5 #(
    .INIT ( 32'hB87474B8 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT131  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[6].mydffa/q_123 ),
    .I3(\myreg_a/product_msb [6]),
    .I4(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT3_SW0  (
    .I0(\myreg_a/product_msb [11]),
    .I1(multiplicand_11_IBUF_4),
    .O(N01)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT5_SW0  (
    .I0(\myreg_a/product_msb [13]),
    .I1(multiplicand_13_IBUF_2),
    .O(N2)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT7_SW0  (
    .I0(\myreg_a/product_msb [15]),
    .I1(multiplicand_15_IBUF_0),
    .O(N4)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT10_SW0  (
    .I0(\myreg_a/product_msb [3]),
    .I1(multiplicand_3_IBUF_12),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hDDD7D77788828222 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT10  (
    .I0(\mycontroller/load_a_52 ),
    .I1(N6),
    .I2(\myreg_a/product_msb [2]),
    .I3(\myfa/p1/p3/p2/Mxor_s_xo<0>2 ),
    .I4(multiplicand_2_IBUF_13),
    .I5(\myreg_a/dffa[3].mydffa/q_120 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT12_SW0  (
    .I0(\myreg_a/product_msb [5]),
    .I1(multiplicand_5_IBUF_10),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFCB83074B83074FC ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT12  (
    .I0(multiplicand_4_IBUF_11),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[5].mydffa/q_122 ),
    .I3(\myreg_a/product_msb [4]),
    .I4(N8),
    .I5(\myfa/p2/p1/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT14_SW0  (
    .I0(\myreg_a/product_msb [7]),
    .I1(multiplicand_7_IBUF_8),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hFCB83074B83074FC ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT14  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[7].mydffa/q_124 ),
    .I3(\myreg_a/product_msb [6]),
    .I4(N10),
    .I5(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT16_SW0  (
    .I0(\myreg_a/product_msb [9]),
    .I1(multiplicand_9_IBUF_6),
    .O(N12)
  );
  IBUF   multiplicand_15_IBUF (
    .I(multiplicand[15]),
    .O(multiplicand_15_IBUF_0)
  );
  IBUF   multiplicand_14_IBUF (
    .I(multiplicand[14]),
    .O(multiplicand_14_IBUF_1)
  );
  IBUF   multiplicand_13_IBUF (
    .I(multiplicand[13]),
    .O(multiplicand_13_IBUF_2)
  );
  IBUF   multiplicand_12_IBUF (
    .I(multiplicand[12]),
    .O(multiplicand_12_IBUF_3)
  );
  IBUF   multiplicand_11_IBUF (
    .I(multiplicand[11]),
    .O(multiplicand_11_IBUF_4)
  );
  IBUF   multiplicand_10_IBUF (
    .I(multiplicand[10]),
    .O(multiplicand_10_IBUF_5)
  );
  IBUF   multiplicand_9_IBUF (
    .I(multiplicand[9]),
    .O(multiplicand_9_IBUF_6)
  );
  IBUF   multiplicand_8_IBUF (
    .I(multiplicand[8]),
    .O(multiplicand_8_IBUF_7)
  );
  IBUF   multiplicand_7_IBUF (
    .I(multiplicand[7]),
    .O(multiplicand_7_IBUF_8)
  );
  IBUF   multiplicand_6_IBUF (
    .I(multiplicand[6]),
    .O(multiplicand_6_IBUF_9)
  );
  IBUF   multiplicand_5_IBUF (
    .I(multiplicand[5]),
    .O(multiplicand_5_IBUF_10)
  );
  IBUF   multiplicand_4_IBUF (
    .I(multiplicand[4]),
    .O(multiplicand_4_IBUF_11)
  );
  IBUF   multiplicand_3_IBUF (
    .I(multiplicand[3]),
    .O(multiplicand_3_IBUF_12)
  );
  IBUF   multiplicand_2_IBUF (
    .I(multiplicand[2]),
    .O(multiplicand_2_IBUF_13)
  );
  IBUF   multiplicand_1_IBUF (
    .I(multiplicand[1]),
    .O(multiplicand_1_IBUF_14)
  );
  IBUF   multiplicand_0_IBUF (
    .I(multiplicand[0]),
    .O(multiplicand_0_IBUF_15)
  );
  IBUF   multiplier_15_IBUF (
    .I(multiplier[15]),
    .O(multiplier_15_IBUF_16)
  );
  IBUF   multiplier_14_IBUF (
    .I(multiplier[14]),
    .O(multiplier_14_IBUF_17)
  );
  IBUF   multiplier_13_IBUF (
    .I(multiplier[13]),
    .O(multiplier_13_IBUF_18)
  );
  IBUF   multiplier_12_IBUF (
    .I(multiplier[12]),
    .O(multiplier_12_IBUF_19)
  );
  IBUF   multiplier_11_IBUF (
    .I(multiplier[11]),
    .O(multiplier_11_IBUF_20)
  );
  IBUF   multiplier_10_IBUF (
    .I(multiplier[10]),
    .O(multiplier_10_IBUF_21)
  );
  IBUF   multiplier_9_IBUF (
    .I(multiplier[9]),
    .O(multiplier_9_IBUF_22)
  );
  IBUF   multiplier_8_IBUF (
    .I(multiplier[8]),
    .O(multiplier_8_IBUF_23)
  );
  IBUF   multiplier_7_IBUF (
    .I(multiplier[7]),
    .O(multiplier_7_IBUF_24)
  );
  IBUF   multiplier_6_IBUF (
    .I(multiplier[6]),
    .O(multiplier_6_IBUF_25)
  );
  IBUF   multiplier_5_IBUF (
    .I(multiplier[5]),
    .O(multiplier_5_IBUF_26)
  );
  IBUF   multiplier_4_IBUF (
    .I(multiplier[4]),
    .O(multiplier_4_IBUF_27)
  );
  IBUF   multiplier_3_IBUF (
    .I(multiplier[3]),
    .O(multiplier_3_IBUF_28)
  );
  IBUF   multiplier_2_IBUF (
    .I(multiplier[2]),
    .O(multiplier_2_IBUF_29)
  );
  IBUF   multiplier_1_IBUF (
    .I(multiplier[1]),
    .O(multiplier_1_IBUF_30)
  );
  IBUF   multiplier_0_IBUF (
    .I(multiplier[0]),
    .O(multiplier_0_IBUF_31)
  );
  IBUF   g_IBUF (
    .I(g),
    .O(g_IBUF_32)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_33)
  );
  OBUF   product_msb_15_OBUF (
    .I(\myreg_a/product_msb [15]),
    .O(product_msb[15])
  );
  OBUF   product_msb_14_OBUF (
    .I(\myreg_a/product_msb [14]),
    .O(product_msb[14])
  );
  OBUF   product_msb_13_OBUF (
    .I(\myreg_a/product_msb [13]),
    .O(product_msb[13])
  );
  OBUF   product_msb_12_OBUF (
    .I(\myreg_a/product_msb [12]),
    .O(product_msb[12])
  );
  OBUF   product_msb_11_OBUF (
    .I(\myreg_a/product_msb [11]),
    .O(product_msb[11])
  );
  OBUF   product_msb_10_OBUF (
    .I(\myreg_a/product_msb [10]),
    .O(product_msb[10])
  );
  OBUF   product_msb_9_OBUF (
    .I(\myreg_a/product_msb [9]),
    .O(product_msb[9])
  );
  OBUF   product_msb_8_OBUF (
    .I(\myreg_a/product_msb [8]),
    .O(product_msb[8])
  );
  OBUF   product_msb_7_OBUF (
    .I(\myreg_a/product_msb [7]),
    .O(product_msb[7])
  );
  OBUF   product_msb_6_OBUF (
    .I(\myreg_a/product_msb [6]),
    .O(product_msb[6])
  );
  OBUF   product_msb_5_OBUF (
    .I(\myreg_a/product_msb [5]),
    .O(product_msb[5])
  );
  OBUF   product_msb_4_OBUF (
    .I(\myreg_a/product_msb [4]),
    .O(product_msb[4])
  );
  OBUF   product_msb_3_OBUF (
    .I(\myreg_a/product_msb [3]),
    .O(product_msb[3])
  );
  OBUF   product_msb_2_OBUF (
    .I(\myreg_a/product_msb [2]),
    .O(product_msb[2])
  );
  OBUF   product_msb_1_OBUF (
    .I(\myreg_a/product_msb [1]),
    .O(product_msb[1])
  );
  OBUF   product_msb_0_OBUF (
    .I(\myreg_a/product_msb [0]),
    .O(product_msb[0])
  );
  OBUF   product_lsb_15_OBUF (
    .I(\myreg_q/product_lsb [15]),
    .O(product_lsb[15])
  );
  OBUF   product_lsb_14_OBUF (
    .I(\myreg_q/product_lsb [14]),
    .O(product_lsb[14])
  );
  OBUF   product_lsb_13_OBUF (
    .I(\myreg_q/product_lsb [13]),
    .O(product_lsb[13])
  );
  OBUF   product_lsb_12_OBUF (
    .I(\myreg_q/product_lsb [12]),
    .O(product_lsb[12])
  );
  OBUF   product_lsb_11_OBUF (
    .I(\myreg_q/product_lsb [11]),
    .O(product_lsb[11])
  );
  OBUF   product_lsb_10_OBUF (
    .I(\myreg_q/product_lsb [10]),
    .O(product_lsb[10])
  );
  OBUF   product_lsb_9_OBUF (
    .I(\myreg_q/product_lsb [9]),
    .O(product_lsb[9])
  );
  OBUF   product_lsb_8_OBUF (
    .I(\myreg_q/product_lsb [8]),
    .O(product_lsb[8])
  );
  OBUF   product_lsb_7_OBUF (
    .I(\myreg_q/product_lsb [7]),
    .O(product_lsb[7])
  );
  OBUF   product_lsb_6_OBUF (
    .I(\myreg_q/product_lsb [6]),
    .O(product_lsb[6])
  );
  OBUF   product_lsb_5_OBUF (
    .I(\myreg_q/product_lsb [5]),
    .O(product_lsb[5])
  );
  OBUF   product_lsb_4_OBUF (
    .I(\myreg_q/product_lsb [4]),
    .O(product_lsb[4])
  );
  OBUF   product_lsb_3_OBUF (
    .I(\myreg_q/product_lsb [3]),
    .O(product_lsb[3])
  );
  OBUF   product_lsb_2_OBUF (
    .I(\myreg_q/product_lsb [2]),
    .O(product_lsb[2])
  );
  OBUF   product_lsb_1_OBUF (
    .I(\myreg_q/product_lsb [1]),
    .O(product_lsb[1])
  );
  OBUF   product_lsb_0_OBUF (
    .I(\myreg_q/product_lsb [0]),
    .O(product_lsb[0])
  );
  LUT6 #(
    .INIT ( 64'hFEA8EA80EE88AA00 ))
  \myfa/p4/p1/p2/Mxor_s_xo<0>11_SW0  (
    .I0(multiplicand_13_IBUF_2),
    .I1(multiplicand_12_IBUF_3),
    .I2(multiplicand_11_IBUF_4),
    .I3(\myreg_a/product_msb [13]),
    .I4(\myreg_a/product_msb [12]),
    .I5(\myreg_a/product_msb [11]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFFAAFAA0FEA8EA80 ))
  \myfa/p4/p1/p2/Mxor_s_xo<0>11_SW1  (
    .I0(multiplicand_13_IBUF_2),
    .I1(multiplicand_11_IBUF_4),
    .I2(multiplicand_12_IBUF_3),
    .I3(\myreg_a/product_msb [13]),
    .I4(\myreg_a/product_msb [12]),
    .I5(\myreg_a/product_msb [11]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'hFEA8EA80EE88AA00 ))
  \myfa/p3/p1/p2/Mxor_s_xo<0>11_SW0  (
    .I0(multiplicand_9_IBUF_6),
    .I1(multiplicand_8_IBUF_7),
    .I2(multiplicand_7_IBUF_8),
    .I3(\myreg_a/product_msb [9]),
    .I4(\myreg_a/product_msb [8]),
    .I5(\myreg_a/product_msb [7]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'hFFAAFAA0FEA8EA80 ))
  \myfa/p3/p1/p2/Mxor_s_xo<0>11_SW1  (
    .I0(multiplicand_9_IBUF_6),
    .I1(multiplicand_7_IBUF_8),
    .I2(multiplicand_8_IBUF_7),
    .I3(\myreg_a/product_msb [9]),
    .I4(\myreg_a/product_msb [8]),
    .I5(\myreg_a/product_msb [7]),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'hF1E0F780 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\myreg_a/product_msb [6]),
    .I2(N34),
    .I3(N33),
    .I4(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myfa/p3/p3/p2/Mxor_s_xo<0>1 )
  );
  LUT6 #(
    .INIT ( 64'hFEA8EA80EE88AA00 ))
  \myfa/p2/p1/p2/Mxor_s_xo<0>11_SW0  (
    .I0(multiplicand_5_IBUF_10),
    .I1(multiplicand_4_IBUF_11),
    .I2(multiplicand_3_IBUF_12),
    .I3(\myreg_a/product_msb [5]),
    .I4(\myreg_a/product_msb [4]),
    .I5(\myreg_a/product_msb [3]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'hFFAAFEA8FAA0EA80 ))
  \myfa/p2/p1/p2/Mxor_s_xo<0>11_SW1  (
    .I0(multiplicand_5_IBUF_10),
    .I1(multiplicand_3_IBUF_12),
    .I2(multiplicand_4_IBUF_11),
    .I3(\myreg_a/product_msb [5]),
    .I4(\myreg_a/product_msb [3]),
    .I5(\myreg_a/product_msb [4]),
    .O(N37)
  );
  LUT5 #(
    .INIT ( 32'hFF17E800 ))
  \myfa/p2/p3/p2/Mxor_s_xo<0>11  (
    .I0(multiplicand_2_IBUF_13),
    .I1(\myreg_a/product_msb [2]),
    .I2(\myfa/p1/p3/p2/Mxor_s_xo<0>2 ),
    .I3(N37),
    .I4(N36),
    .O(\myfa/p2/p3/p2/Mxor_s_xo<0>1 )
  );
  LUT5 #(
    .INIT ( 32'hE187C30F ))
  \myfa/p4/p1/p2/Mxor_s_xo<0>11_SW2  (
    .I0(multiplicand_10_IBUF_5),
    .I1(multiplicand_11_IBUF_4),
    .I2(multiplicand_12_IBUF_3),
    .I3(\myreg_a/product_msb [11]),
    .I4(\myreg_a/product_msb [10]),
    .O(N39)
  );
  LUT5 #(
    .INIT ( 32'hF0C3E187 ))
  \myfa/p4/p1/p2/Mxor_s_xo<0>11_SW3  (
    .I0(multiplicand_10_IBUF_5),
    .I1(multiplicand_11_IBUF_4),
    .I2(multiplicand_12_IBUF_3),
    .I3(\myreg_a/product_msb [11]),
    .I4(\myreg_a/product_msb [10]),
    .O(N40)
  );
  LUT6 #(
    .INIT ( 64'hFEA8EA80EE88AA00 ))
  \myfa/p4/p1/p2/Mxor_s_xo<0>11_SW4  (
    .I0(multiplicand_12_IBUF_3),
    .I1(multiplicand_11_IBUF_4),
    .I2(multiplicand_10_IBUF_5),
    .I3(\myreg_a/product_msb [12]),
    .I4(\myreg_a/product_msb [11]),
    .I5(\myreg_a/product_msb [10]),
    .O(N42)
  );
  LUT6 #(
    .INIT ( 64'hFFAAFAA0FEA8EA80 ))
  \myfa/p4/p1/p2/Mxor_s_xo<0>11_SW5  (
    .I0(multiplicand_12_IBUF_3),
    .I1(multiplicand_10_IBUF_5),
    .I2(multiplicand_11_IBUF_4),
    .I3(\myreg_a/product_msb [12]),
    .I4(\myreg_a/product_msb [11]),
    .I5(\myreg_a/product_msb [10]),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'hFCFCD4FCE8C0C0C0 ))
  \myfa/p4/p3/p2/Mxor_s_xo<0>11_SW0  (
    .I0(multiplicand_10_IBUF_5),
    .I1(multiplicand_14_IBUF_1),
    .I2(\myreg_a/product_msb [14]),
    .I3(\myreg_a/product_msb [10]),
    .I4(N31),
    .I5(N30),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hFCFCC0D4FCE8C0C0 ))
  \myfa/p4/p3/p2/Mxor_s_xo<0>11_SW1  (
    .I0(multiplicand_10_IBUF_5),
    .I1(multiplicand_14_IBUF_1),
    .I2(\myreg_a/product_msb [14]),
    .I3(\myreg_a/product_msb [10]),
    .I4(N31),
    .I5(N30),
    .O(N46)
  );
  LUT5 #(
    .INIT ( 32'hEE88E8E8 ))
  \myfa/p4/p4/cout1  (
    .I0(multiplicand_15_IBUF_0),
    .I1(\myreg_a/product_msb [15]),
    .I2(N45),
    .I3(N46),
    .I4(\myfa/p3/p3/p2/Mxor_s_xo<0>1 ),
    .O(cout)
  );
  LUT5 #(
    .INIT ( 32'hB87474B8 ))
  \myfa/p4/p3/p2/Mxor_s_xo<0>11_SW2  (
    .I0(multiplicand_14_IBUF_1),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[14].mydffa/q_131 ),
    .I3(\myreg_a/product_msb [14]),
    .I4(N30),
    .O(N48)
  );
  LUT5 #(
    .INIT ( 32'hB87474B8 ))
  \myfa/p4/p3/p2/Mxor_s_xo<0>11_SW3  (
    .I0(multiplicand_14_IBUF_1),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[14].mydffa/q_131 ),
    .I3(\myreg_a/product_msb [14]),
    .I4(N31),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'hE4E44E4EE44EE44E ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT7  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/d1a/q_132 ),
    .I2(N4),
    .I3(N45),
    .I4(N46),
    .I5(\myfa/p3/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hA9959595 ))
  \myfa/p3/p1/p2/Mxor_s_xo<0>11_SW2  (
    .I0(multiplicand_8_IBUF_7),
    .I1(multiplicand_7_IBUF_8),
    .I2(\myreg_a/product_msb [7]),
    .I3(multiplicand_6_IBUF_9),
    .I4(\myreg_a/product_msb [6]),
    .O(N54)
  );
  LUT5 #(
    .INIT ( 32'hA9A9A995 ))
  \myfa/p3/p1/p2/Mxor_s_xo<0>11_SW3  (
    .I0(multiplicand_8_IBUF_7),
    .I1(multiplicand_7_IBUF_8),
    .I2(\myreg_a/product_msb [7]),
    .I3(multiplicand_6_IBUF_9),
    .I4(\myreg_a/product_msb [6]),
    .O(N55)
  );
  LUT6 #(
    .INIT ( 64'hE4E44E4EE44EE44E ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT151  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/dffa[8].mydffa/q_125 ),
    .I2(\myreg_a/product_msb [8]),
    .I3(N54),
    .I4(N55),
    .I5(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hFFF8F8F0F0808000 ))
  \myfa/p3/p1/p2/Mxor_s_xo<0>11_SW4  (
    .I0(\myreg_a/product_msb [6]),
    .I1(multiplicand_6_IBUF_9),
    .I2(\myreg_a/product_msb [8]),
    .I3(multiplicand_7_IBUF_8),
    .I4(\myreg_a/product_msb [7]),
    .I5(multiplicand_8_IBUF_7),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'hFEFEFEEAA8A8A880 ))
  \myfa/p3/p1/p2/Mxor_s_xo<0>11_SW5  (
    .I0(\myreg_a/product_msb [8]),
    .I1(multiplicand_7_IBUF_8),
    .I2(\myreg_a/product_msb [7]),
    .I3(\myreg_a/product_msb [6]),
    .I4(multiplicand_6_IBUF_9),
    .I5(multiplicand_8_IBUF_7),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'hE44EE44EE4E44E4E ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT16  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/dffa[9].mydffa/q_126 ),
    .I2(N12),
    .I3(N58),
    .I4(N57),
    .I5(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<9> )
  );
  LUT5 #(
    .INIT ( 32'hB87474B8 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW0  (
    .I0(multiplicand_10_IBUF_5),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[10].mydffa/q_127 ),
    .I3(\myreg_a/product_msb [10]),
    .I4(N33),
    .O(N60)
  );
  LUT5 #(
    .INIT ( 32'hB87474B8 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW1  (
    .I0(multiplicand_10_IBUF_5),
    .I1(\mycontroller/load_a_52 ),
    .I2(\myreg_a/dffa[10].mydffa/q_127 ),
    .I3(\myreg_a/product_msb [10]),
    .I4(N34),
    .O(N61)
  );
  LUT5 #(
    .INIT ( 32'hFE10F870 ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT21  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\myreg_a/product_msb [6]),
    .I2(N60),
    .I3(N61),
    .I4(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hFCFCD4FCE8C0C0C0 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW2  (
    .I0(multiplicand_6_IBUF_9),
    .I1(multiplicand_10_IBUF_5),
    .I2(\myreg_a/product_msb [10]),
    .I3(\myreg_a/product_msb [6]),
    .I4(N34),
    .I5(N33),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hFCFCC0D4FCE8C0C0 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW3  (
    .I0(multiplicand_6_IBUF_9),
    .I1(multiplicand_10_IBUF_5),
    .I2(\myreg_a/product_msb [10]),
    .I3(\myreg_a/product_msb [6]),
    .I4(N34),
    .I5(N33),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hE4E44EE4E44E4E4E ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT3  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/dffa[11].mydffa/q_128 ),
    .I2(N01),
    .I3(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .I4(N64),
    .I5(N63),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'hF0F0F870F780FF00 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW4  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\myreg_a/product_msb [6]),
    .I2(N40),
    .I3(N39),
    .I4(N34),
    .I5(N33),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'hF0F0F1E0FE10FF00 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW5  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\myreg_a/product_msb [6]),
    .I2(N40),
    .I3(N39),
    .I4(N33),
    .I5(N34),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'hE4E4E44E4EE44E4E ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT41  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/dffa[12].mydffa/q_129 ),
    .I2(\myreg_a/product_msb [12]),
    .I3(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .I4(N66),
    .I5(N67),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'hFF08F700FF7F8000 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW6  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\myreg_a/product_msb [6]),
    .I2(N34),
    .I3(N43),
    .I4(N42),
    .I5(N33),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'hFF0EF100FF1FE000 ))
  \myfa/p3/p3/p2/Mxor_s_xo<0>11_SW7  (
    .I0(multiplicand_6_IBUF_9),
    .I1(\myreg_a/product_msb [6]),
    .I2(N34),
    .I3(N43),
    .I4(N42),
    .I5(N33),
    .O(N70)
  );
  LUT6 #(
    .INIT ( 64'hE4E44EE4E44E4E4E ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT5  (
    .I0(\mycontroller/load_a_52 ),
    .I1(\myreg_a/dffa[13].mydffa/q_130 ),
    .I2(N2),
    .I3(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .I4(N70),
    .I5(N69),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hCCAACACA ))
  \myreg_a/Mmux_product_msb[15]_sum[15]_mux_1_OUT61  (
    .I0(N48),
    .I1(N49),
    .I2(N63),
    .I3(N64),
    .I4(\myfa/p2/p3/p2/Mxor_s_xo<0>1 ),
    .O(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<14> )
  );
  FDC   \myreg_q/product_lsb_15  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<15> ),
    .Q(\myreg_q/product_lsb [15])
  );
  FDC   \myreg_q/product_lsb_14  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<14> ),
    .Q(\myreg_q/product_lsb [14])
  );
  FDC   \myreg_q/product_lsb_13  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<13> ),
    .Q(\myreg_q/product_lsb [13])
  );
  FDC   \myreg_q/product_lsb_12  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<12> ),
    .Q(\myreg_q/product_lsb [12])
  );
  FDC   \myreg_q/product_lsb_11  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<11> ),
    .Q(\myreg_q/product_lsb [11])
  );
  FDC   \myreg_q/product_lsb_10  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<10> ),
    .Q(\myreg_q/product_lsb [10])
  );
  FDC   \myreg_q/product_lsb_9  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<9> ),
    .Q(\myreg_q/product_lsb [9])
  );
  FDC   \myreg_q/product_lsb_8  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<8> ),
    .Q(\myreg_q/product_lsb [8])
  );
  FDC   \myreg_q/product_lsb_7  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<7> ),
    .Q(\myreg_q/product_lsb [7])
  );
  FDC   \myreg_q/product_lsb_6  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<6> ),
    .Q(\myreg_q/product_lsb [6])
  );
  FDC   \myreg_q/product_lsb_5  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<5> ),
    .Q(\myreg_q/product_lsb [5])
  );
  FDC   \myreg_q/product_lsb_4  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<4> ),
    .Q(\myreg_q/product_lsb [4])
  );
  FDC   \myreg_q/product_lsb_3  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<3> ),
    .Q(\myreg_q/product_lsb [3])
  );
  FDC   \myreg_q/product_lsb_2  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<2> ),
    .Q(\myreg_q/product_lsb [2])
  );
  FDC   \myreg_q/product_lsb_1  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/product_lsb[15]_mul[15]_mux_1_OUT<1> ),
    .Q(\myreg_q/product_lsb [1])
  );
  FDC   \myreg_q/product_lsb_0  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_q/lsb_q_mul[0]_MUX_20_o ),
    .Q(\myreg_q/product_lsb [0])
  );
  FDC   \myreg_a/product_msb_15  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<15> ),
    .Q(\myreg_a/product_msb [15])
  );
  FDC   \myreg_a/product_msb_14  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<14> ),
    .Q(\myreg_a/product_msb [14])
  );
  FDC   \myreg_a/product_msb_13  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<13> ),
    .Q(\myreg_a/product_msb [13])
  );
  FDC   \myreg_a/product_msb_12  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<12> ),
    .Q(\myreg_a/product_msb [12])
  );
  FDC   \myreg_a/product_msb_11  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<11> ),
    .Q(\myreg_a/product_msb [11])
  );
  FDC   \myreg_a/product_msb_10  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<10> ),
    .Q(\myreg_a/product_msb [10])
  );
  FDC   \myreg_a/product_msb_9  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<9> ),
    .Q(\myreg_a/product_msb [9])
  );
  FDC   \myreg_a/product_msb_8  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<8> ),
    .Q(\myreg_a/product_msb [8])
  );
  FDC   \myreg_a/product_msb_7  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<7> ),
    .Q(\myreg_a/product_msb [7])
  );
  FDC   \myreg_a/product_msb_6  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<6> ),
    .Q(\myreg_a/product_msb [6])
  );
  FDC   \myreg_a/product_msb_5  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<5> ),
    .Q(\myreg_a/product_msb [5])
  );
  FDC   \myreg_a/product_msb_4  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<4> ),
    .Q(\myreg_a/product_msb [4])
  );
  FDC   \myreg_a/product_msb_3  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<3> ),
    .Q(\myreg_a/product_msb [3])
  );
  FDC   \myreg_a/product_msb_2  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<2> ),
    .Q(\myreg_a/product_msb [2])
  );
  FDC   \myreg_a/product_msb_1  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/product_msb[15]_sum[15]_mux_1_OUT<1> ),
    .Q(\myreg_a/product_msb [1])
  );
  FDC   \myreg_a/product_msb_0  (
    .C(clk_BUFGP_34),
    .CLR(\mycontroller/reset_a_54 ),
    .D(\myreg_a/lsb_a_sum[0]_MUX_18_o ),
    .Q(\myreg_a/product_msb [0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_34)
  );
  INV   \mycontroller/current_state__n0031<0>1_INV_0  (
    .I(\mycontroller/current_state_FSM_FFd1_115 ),
    .O(\mycontroller/current_state[1]_PWR_18_o_Mux_11_o )
  );
endmodule


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

