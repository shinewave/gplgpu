/* Verilog netlist generated by SCUBA ispLever_v61_SP1_Build (17) */
/* Module Version: 4.1 */
/* C:\ispTOOLS6_1\ispfpga\bin\nt\scuba.exe -w -lang verilog -synth synplify -bus_exp 7 -bb -arch ep5a00 -type ebfifo -depth 256 -width 64 -depth 256 -no_enable -pe -1 -pf -1 -e  */
/* Mon Mar 31 15:24:21 2008 */


`timescale 1 ns / 1 ps
module fifo_64x256a (Data, WrClock, RdClock, WrEn, RdEn, Reset, RPReset, 
    Q, Empty, Full);
    input [63:0] Data;
    input WrClock;
    input RdClock;
    input WrEn;
    input RdEn;
    input Reset;
    input RPReset;
    output [63:0] Q;
    output Empty;
    output Full;


    AND2 AND2_t18 (.A(WrEn), .B(invout_1), .Z(wren_i));

    INV INV_1 (.A(full_i), .Z(invout_1));

    AND2 AND2_t17 (.A(RdEn), .B(invout_0), .Z(rden_i));

    INV INV_0 (.A(empty_i), .Z(invout_0));

    OR2 OR2_t16 (.A(Reset), .B(RPReset), .Z(rRst));

    XOR2 XOR2_t15 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0));

    XOR2 XOR2_t14 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1));

    XOR2 XOR2_t13 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2));

    XOR2 XOR2_t12 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3));

    XOR2 XOR2_t11 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4));

    XOR2 XOR2_t10 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5));

    XOR2 XOR2_t9 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6));

    XOR2 XOR2_t8 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7));

    XOR2 XOR2_t7 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0));

    XOR2 XOR2_t6 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1));

    XOR2 XOR2_t5 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2));

    XOR2 XOR2_t4 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3));

    XOR2 XOR2_t3 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4));

    XOR2 XOR2_t2 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5));

    XOR2 XOR2_t1 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6));

    XOR2 XOR2_t0 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7));

    // synopsys translate_off
    defparam LUT4_21.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_21 (.AD3(w_gcount_r25), .AD2(w_gcount_r26), .AD1(w_gcount_r27), 
        .AD0(w_gcount_r28), .DO0(w_g2b_xor_cluster_0))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_20.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_20 (.AD3(w_gcount_r21), .AD2(w_gcount_r22), .AD1(w_gcount_r23), 
        .AD0(w_gcount_r24), .DO0(w_g2b_xor_cluster_1))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_19.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_19 (.AD3(w_gcount_r27), .AD2(w_gcount_r28), .AD1(scuba_vlo), 
        .AD0(scuba_vlo), .DO0(wcount_r7))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_18.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_18 (.AD3(w_gcount_r26), .AD2(w_gcount_r27), .AD1(w_gcount_r28), 
        .AD0(scuba_vlo), .DO0(wcount_r6))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_17.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_17 (.AD3(w_gcount_r24), .AD2(w_gcount_r25), .AD1(w_gcount_r26), 
        .AD0(wcount_r7), .DO0(wcount_r4))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_16.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_16 (.AD3(w_gcount_r23), .AD2(w_gcount_r24), .AD1(w_gcount_r25), 
        .AD0(wcount_r6), .DO0(wcount_r3))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_15.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_15 (.AD3(w_gcount_r22), .AD2(w_gcount_r23), .AD1(w_gcount_r24), 
        .AD0(w_g2b_xor_cluster_0), .DO0(wcount_r2))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_14.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_14 (.AD3(w_g2b_xor_cluster_0), .AD2(w_g2b_xor_cluster_1), 
        .AD1(scuba_vlo), .AD0(scuba_vlo), .DO0(wcount_r1))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_13.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_13 (.AD3(w_g2b_xor_cluster_0), .AD2(w_g2b_xor_cluster_1), 
        .AD1(w_gcount_r20), .AD0(scuba_vlo), .DO0(wcount_r0))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_12.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_12 (.AD3(r_gcount_w25), .AD2(r_gcount_w26), .AD1(r_gcount_w27), 
        .AD0(r_gcount_w28), .DO0(r_g2b_xor_cluster_0))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_11.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_11 (.AD3(r_gcount_w21), .AD2(r_gcount_w22), .AD1(r_gcount_w23), 
        .AD0(r_gcount_w24), .DO0(r_g2b_xor_cluster_1))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_10.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_10 (.AD3(r_gcount_w27), .AD2(r_gcount_w28), .AD1(scuba_vlo), 
        .AD0(scuba_vlo), .DO0(rcount_w7))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_9.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_9 (.AD3(r_gcount_w26), .AD2(r_gcount_w27), .AD1(r_gcount_w28), 
        .AD0(scuba_vlo), .DO0(rcount_w6))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_8.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_8 (.AD3(r_gcount_w24), .AD2(r_gcount_w25), .AD1(r_gcount_w26), 
        .AD0(rcount_w7), .DO0(rcount_w4))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_7.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_7 (.AD3(r_gcount_w23), .AD2(r_gcount_w24), .AD1(r_gcount_w25), 
        .AD0(rcount_w6), .DO0(rcount_w3))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_6.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_6 (.AD3(r_gcount_w22), .AD2(r_gcount_w23), .AD1(r_gcount_w24), 
        .AD0(r_g2b_xor_cluster_0), .DO0(rcount_w2))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_5.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_5 (.AD3(r_g2b_xor_cluster_0), .AD2(r_g2b_xor_cluster_1), 
        .AD1(scuba_vlo), .AD0(scuba_vlo), .DO0(rcount_w1))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_4.initval =  16'h6996 ;
    // synopsys translate_on
    ROM16X1 LUT4_4 (.AD3(r_g2b_xor_cluster_0), .AD2(r_g2b_xor_cluster_1), 
        .AD1(r_gcount_w20), .AD0(scuba_vlo), .DO0(rcount_w0))
             /* synthesis initval="0x6996" */;

    // synopsys translate_off
    defparam LUT4_3.initval =  16'h0410 ;
    // synopsys translate_on
    ROM16X1 LUT4_3 (.AD3(rptr_8), .AD2(rcount_8), .AD1(w_gcount_r28), .AD0(scuba_vlo), 
        .DO0(empty_cmp_set))
             /* synthesis initval="0x0410" */;

    // synopsys translate_off
    defparam LUT4_2.initval =  16'h1004 ;
    // synopsys translate_on
    ROM16X1 LUT4_2 (.AD3(rptr_8), .AD2(rcount_8), .AD1(w_gcount_r28), .AD0(scuba_vlo), 
        .DO0(empty_cmp_clr))
             /* synthesis initval="0x1004" */;

    // synopsys translate_off
    defparam LUT4_1.initval =  16'h0140 ;
    // synopsys translate_on
    ROM16X1 LUT4_1 (.AD3(wptr_8), .AD2(wcount_8), .AD1(r_gcount_w28), .AD0(scuba_vlo), 
        .DO0(full_cmp_set))
             /* synthesis initval="0x0140" */;

    // synopsys translate_off
    defparam LUT4_0.initval =  16'h4001 ;
    // synopsys translate_on
    ROM16X1 LUT4_0 (.AD3(wptr_8), .AD2(wcount_8), .AD1(r_gcount_w28), .AD0(scuba_vlo), 
        .DO0(full_cmp_clr))
             /* synthesis initval="0x4001" */;

    // synopsys translate_off
    defparam pdp_ram_0_0_1.CSDECODE_R =  3'b000 ;
    defparam pdp_ram_0_0_1.CSDECODE_W =  3'b001 ;
    defparam pdp_ram_0_0_1.GSR = "ENABLED" ;
    defparam pdp_ram_0_0_1.RESETMODE = "ASYNC" ;
    defparam pdp_ram_0_0_1.REGMODE = "NOREG" ;
    defparam pdp_ram_0_0_1.DATA_WIDTH_R = 36 ;
    defparam pdp_ram_0_0_1.DATA_WIDTH_W = 36 ;
    // synopsys translate_on
    PDPW16KB pdp_ram_0_0_1 (.DI0(Data[0]), .DI1(Data[1]), .DI2(Data[2]), 
        .DI3(Data[3]), .DI4(Data[4]), .DI5(Data[5]), .DI6(Data[6]), .DI7(Data[7]), 
        .DI8(Data[8]), .DI9(Data[9]), .DI10(Data[10]), .DI11(Data[11]), 
        .DI12(Data[12]), .DI13(Data[13]), .DI14(Data[14]), .DI15(Data[15]), 
        .DI16(Data[16]), .DI17(Data[17]), .DI18(Data[18]), .DI19(Data[19]), 
        .DI20(Data[20]), .DI21(Data[21]), .DI22(Data[22]), .DI23(Data[23]), 
        .DI24(Data[24]), .DI25(Data[25]), .DI26(Data[26]), .DI27(Data[27]), 
        .DI28(Data[28]), .DI29(Data[29]), .DI30(Data[30]), .DI31(Data[31]), 
        .DI32(Data[32]), .DI33(Data[33]), .DI34(Data[34]), .DI35(Data[35]), 
        .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), .ADW4(wptr_4), 
        .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), .ADW8(scuba_vlo), .BE0(scuba_vhi), 
        .BE1(scuba_vhi), .BE2(scuba_vhi), .BE3(scuba_vhi), .CEW(wren_i), 
        .CLKW(WrClock), .CSW0(scuba_vhi), .CSW1(scuba_vlo), .CSW2(scuba_vlo), 
        .ADR0(scuba_vlo), .ADR1(scuba_vlo), .ADR2(scuba_vlo), .ADR3(scuba_vlo), 
        .ADR4(scuba_vlo), .ADR5(rptr_0), .ADR6(rptr_1), .ADR7(rptr_2), .ADR8(rptr_3), 
        .ADR9(rptr_4), .ADR10(rptr_5), .ADR11(rptr_6), .ADR12(rptr_7), .ADR13(scuba_vlo), 
        .CER(rden_i), .CLKR(RdClock), .CSR0(scuba_vlo), .CSR1(scuba_vlo), 
        .CSR2(scuba_vlo), .RST(Reset), .DO0(Q[18]), .DO1(Q[19]), .DO2(Q[20]), 
        .DO3(Q[21]), .DO4(Q[22]), .DO5(Q[23]), .DO6(Q[24]), .DO7(Q[25]), 
        .DO8(Q[26]), .DO9(Q[27]), .DO10(Q[28]), .DO11(Q[29]), .DO12(Q[30]), 
        .DO13(Q[31]), .DO14(Q[32]), .DO15(Q[33]), .DO16(Q[34]), .DO17(Q[35]), 
        .DO18(Q[0]), .DO19(Q[1]), .DO20(Q[2]), .DO21(Q[3]), .DO22(Q[4]), 
        .DO23(Q[5]), .DO24(Q[6]), .DO25(Q[7]), .DO26(Q[8]), .DO27(Q[9]), 
        .DO28(Q[10]), .DO29(Q[11]), .DO30(Q[12]), .DO31(Q[13]), .DO32(Q[14]), 
        .DO33(Q[15]), .DO34(Q[16]), .DO35(Q[17]))
             /* synthesis MEM_LPC_FILE="fifo_64x256a.lpc" */
             /* synthesis MEM_INIT_FILE="" */
             /* synthesis CSDECODE_R="0b000" */
             /* synthesis CSDECODE_W="0b001" */
             /* synthesis GSR="ENABLED" */
             /* synthesis RESETMODE="ASYNC" */
             /* synthesis REGMODE="NOREG" */
             /* synthesis DATA_WIDTH_R="36" */
             /* synthesis DATA_WIDTH_W="36" */;

    // synopsys translate_off
    defparam pdp_ram_0_1_0.CSDECODE_R =  3'b000 ;
    defparam pdp_ram_0_1_0.CSDECODE_W =  3'b001 ;
    defparam pdp_ram_0_1_0.GSR = "ENABLED" ;
    defparam pdp_ram_0_1_0.RESETMODE = "ASYNC" ;
    defparam pdp_ram_0_1_0.REGMODE = "NOREG" ;
    defparam pdp_ram_0_1_0.DATA_WIDTH_R = 36 ;
    defparam pdp_ram_0_1_0.DATA_WIDTH_W = 36 ;
    // synopsys translate_on
    PDPW16KB pdp_ram_0_1_0 (.DI0(Data[36]), .DI1(Data[37]), .DI2(Data[38]), 
        .DI3(Data[39]), .DI4(Data[40]), .DI5(Data[41]), .DI6(Data[42]), 
        .DI7(Data[43]), .DI8(Data[44]), .DI9(Data[45]), .DI10(Data[46]), 
        .DI11(Data[47]), .DI12(Data[48]), .DI13(Data[49]), .DI14(Data[50]), 
        .DI15(Data[51]), .DI16(Data[52]), .DI17(Data[53]), .DI18(Data[54]), 
        .DI19(Data[55]), .DI20(Data[56]), .DI21(Data[57]), .DI22(Data[58]), 
        .DI23(Data[59]), .DI24(Data[60]), .DI25(Data[61]), .DI26(Data[62]), 
        .DI27(Data[63]), .DI28(scuba_vlo), .DI29(scuba_vlo), .DI30(scuba_vlo), 
        .DI31(scuba_vlo), .DI32(scuba_vlo), .DI33(scuba_vlo), .DI34(scuba_vlo), 
        .DI35(scuba_vlo), .ADW0(wptr_0), .ADW1(wptr_1), .ADW2(wptr_2), .ADW3(wptr_3), 
        .ADW4(wptr_4), .ADW5(wptr_5), .ADW6(wptr_6), .ADW7(wptr_7), .ADW8(scuba_vlo), 
        .BE0(scuba_vhi), .BE1(scuba_vhi), .BE2(scuba_vhi), .BE3(scuba_vhi), 
        .CEW(wren_i), .CLKW(WrClock), .CSW0(scuba_vhi), .CSW1(scuba_vlo), 
        .CSW2(scuba_vlo), .ADR0(scuba_vlo), .ADR1(scuba_vlo), .ADR2(scuba_vlo), 
        .ADR3(scuba_vlo), .ADR4(scuba_vlo), .ADR5(rptr_0), .ADR6(rptr_1), 
        .ADR7(rptr_2), .ADR8(rptr_3), .ADR9(rptr_4), .ADR10(rptr_5), .ADR11(rptr_6), 
        .ADR12(rptr_7), .ADR13(scuba_vlo), .CER(rden_i), .CLKR(RdClock), 
        .CSR0(scuba_vlo), .CSR1(scuba_vlo), .CSR2(scuba_vlo), .RST(Reset), 
        .DO0(Q[54]), .DO1(Q[55]), .DO2(Q[56]), .DO3(Q[57]), .DO4(Q[58]), 
        .DO5(Q[59]), .DO6(Q[60]), .DO7(Q[61]), .DO8(Q[62]), .DO9(Q[63]), 
        .DO10(), .DO11(), .DO12(), .DO13(), .DO14(), .DO15(), .DO16(), .DO17(), 
        .DO18(Q[36]), .DO19(Q[37]), .DO20(Q[38]), .DO21(Q[39]), .DO22(Q[40]), 
        .DO23(Q[41]), .DO24(Q[42]), .DO25(Q[43]), .DO26(Q[44]), .DO27(Q[45]), 
        .DO28(Q[46]), .DO29(Q[47]), .DO30(Q[48]), .DO31(Q[49]), .DO32(Q[50]), 
        .DO33(Q[51]), .DO34(Q[52]), .DO35(Q[53]))
             /* synthesis MEM_LPC_FILE="fifo_64x256a.lpc" */
             /* synthesis MEM_INIT_FILE="" */
             /* synthesis CSDECODE_R="0b000" */
             /* synthesis CSDECODE_W="0b001" */
             /* synthesis GSR="ENABLED" */
             /* synthesis RESETMODE="ASYNC" */
             /* synthesis REGMODE="NOREG" */
             /* synthesis DATA_WIDTH_R="36" */
             /* synthesis DATA_WIDTH_W="36" */;

    FD1P3BX FF_91 (.D(iwcount_0), .SP(wren_i), .CK(WrClock), .PD(Reset), 
        .Q(wcount_0));

    FD1P3DX FF_90 (.D(iwcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_1));

    FD1P3DX FF_89 (.D(iwcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_2));

    FD1P3DX FF_88 (.D(iwcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_3));

    FD1P3DX FF_87 (.D(iwcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_4));

    FD1P3DX FF_86 (.D(iwcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_5));

    FD1P3DX FF_85 (.D(iwcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_6));

    FD1P3DX FF_84 (.D(iwcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_7));

    FD1P3DX FF_83 (.D(iwcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wcount_8));

    FD1P3DX FF_82 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_0));

    FD1P3DX FF_81 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_1));

    FD1P3DX FF_80 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_2));

    FD1P3DX FF_79 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_3));

    FD1P3DX FF_78 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_4));

    FD1P3DX FF_77 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_5));

    FD1P3DX FF_76 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_6));

    FD1P3DX FF_75 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_7));

    FD1P3DX FF_74 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(w_gcount_8));

    FD1P3DX FF_73 (.D(wcount_0), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_0));

    FD1P3DX FF_72 (.D(wcount_1), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_1));

    FD1P3DX FF_71 (.D(wcount_2), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_2));

    FD1P3DX FF_70 (.D(wcount_3), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_3));

    FD1P3DX FF_69 (.D(wcount_4), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_4));

    FD1P3DX FF_68 (.D(wcount_5), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_5));

    FD1P3DX FF_67 (.D(wcount_6), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_6));

    FD1P3DX FF_66 (.D(wcount_7), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_7));

    FD1P3DX FF_65 (.D(wcount_8), .SP(wren_i), .CK(WrClock), .CD(Reset), 
        .Q(wptr_8));

    FD1P3BX FF_64 (.D(ircount_0), .SP(rden_i), .CK(RdClock), .PD(rRst), 
        .Q(rcount_0));

    FD1P3DX FF_63 (.D(ircount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_1));

    FD1P3DX FF_62 (.D(ircount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_2));

    FD1P3DX FF_61 (.D(ircount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_3));

    FD1P3DX FF_60 (.D(ircount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_4));

    FD1P3DX FF_59 (.D(ircount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_5));

    FD1P3DX FF_58 (.D(ircount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_6));

    FD1P3DX FF_57 (.D(ircount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_7));

    FD1P3DX FF_56 (.D(ircount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(rcount_8));

    FD1P3DX FF_55 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_0));

    FD1P3DX FF_54 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_1));

    FD1P3DX FF_53 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_2));

    FD1P3DX FF_52 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_3));

    FD1P3DX FF_51 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_4));

    FD1P3DX FF_50 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_5));

    FD1P3DX FF_49 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_6));

    FD1P3DX FF_48 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock), .CD(rRst), 
        .Q(r_gcount_7));

    FD1P3DX FF_47 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(r_gcount_8));

    FD1P3DX FF_46 (.D(rcount_0), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_0));

    FD1P3DX FF_45 (.D(rcount_1), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_1));

    FD1P3DX FF_44 (.D(rcount_2), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_2));

    FD1P3DX FF_43 (.D(rcount_3), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_3));

    FD1P3DX FF_42 (.D(rcount_4), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_4));

    FD1P3DX FF_41 (.D(rcount_5), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_5));

    FD1P3DX FF_40 (.D(rcount_6), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_6));

    FD1P3DX FF_39 (.D(rcount_7), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_7));

    FD1P3DX FF_38 (.D(rcount_8), .SP(rden_i), .CK(RdClock), .CD(rRst), .Q(rptr_8));

    FD1S3DX FF_37 (.D(w_gcount_0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r0));

    FD1S3DX FF_36 (.D(w_gcount_1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r1));

    FD1S3DX FF_35 (.D(w_gcount_2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r2));

    FD1S3DX FF_34 (.D(w_gcount_3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r3));

    FD1S3DX FF_33 (.D(w_gcount_4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r4));

    FD1S3DX FF_32 (.D(w_gcount_5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r5));

    FD1S3DX FF_31 (.D(w_gcount_6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r6));

    FD1S3DX FF_30 (.D(w_gcount_7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r7));

    FD1S3DX FF_29 (.D(w_gcount_8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r8));

    FD1S3DX FF_28 (.D(r_gcount_0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w0));

    FD1S3DX FF_27 (.D(r_gcount_1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w1));

    FD1S3DX FF_26 (.D(r_gcount_2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w2));

    FD1S3DX FF_25 (.D(r_gcount_3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w3));

    FD1S3DX FF_24 (.D(r_gcount_4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w4));

    FD1S3DX FF_23 (.D(r_gcount_5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w5));

    FD1S3DX FF_22 (.D(r_gcount_6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w6));

    FD1S3DX FF_21 (.D(r_gcount_7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w7));

    FD1S3DX FF_20 (.D(r_gcount_8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w8));

    FD1S3DX FF_19 (.D(w_gcount_r0), .CK(RdClock), .CD(Reset), .Q(w_gcount_r20));

    FD1S3DX FF_18 (.D(w_gcount_r1), .CK(RdClock), .CD(Reset), .Q(w_gcount_r21));

    FD1S3DX FF_17 (.D(w_gcount_r2), .CK(RdClock), .CD(Reset), .Q(w_gcount_r22));

    FD1S3DX FF_16 (.D(w_gcount_r3), .CK(RdClock), .CD(Reset), .Q(w_gcount_r23));

    FD1S3DX FF_15 (.D(w_gcount_r4), .CK(RdClock), .CD(Reset), .Q(w_gcount_r24));

    FD1S3DX FF_14 (.D(w_gcount_r5), .CK(RdClock), .CD(Reset), .Q(w_gcount_r25));

    FD1S3DX FF_13 (.D(w_gcount_r6), .CK(RdClock), .CD(Reset), .Q(w_gcount_r26));

    FD1S3DX FF_12 (.D(w_gcount_r7), .CK(RdClock), .CD(Reset), .Q(w_gcount_r27));

    FD1S3DX FF_11 (.D(w_gcount_r8), .CK(RdClock), .CD(Reset), .Q(w_gcount_r28));

    FD1S3DX FF_10 (.D(r_gcount_w0), .CK(WrClock), .CD(rRst), .Q(r_gcount_w20));

    FD1S3DX FF_9 (.D(r_gcount_w1), .CK(WrClock), .CD(rRst), .Q(r_gcount_w21));

    FD1S3DX FF_8 (.D(r_gcount_w2), .CK(WrClock), .CD(rRst), .Q(r_gcount_w22));

    FD1S3DX FF_7 (.D(r_gcount_w3), .CK(WrClock), .CD(rRst), .Q(r_gcount_w23));

    FD1S3DX FF_6 (.D(r_gcount_w4), .CK(WrClock), .CD(rRst), .Q(r_gcount_w24));

    FD1S3DX FF_5 (.D(r_gcount_w5), .CK(WrClock), .CD(rRst), .Q(r_gcount_w25));

    FD1S3DX FF_4 (.D(r_gcount_w6), .CK(WrClock), .CD(rRst), .Q(r_gcount_w26));

    FD1S3DX FF_3 (.D(r_gcount_w7), .CK(WrClock), .CD(rRst), .Q(r_gcount_w27));

    FD1S3DX FF_2 (.D(r_gcount_w8), .CK(WrClock), .CD(rRst), .Q(r_gcount_w28));

    FD1S3BX FF_1 (.D(empty_d), .CK(RdClock), .PD(rRst), .Q(empty_i));

    FD1S3DX FF_0 (.D(full_d), .CK(WrClock), .CD(Reset), .Q(full_i));

    FADD2B w_gctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .CI(scuba_vlo), .COUT(w_gctr_ci), .S0(), .S1());

    CU2 w_gctr_0 (.CI(w_gctr_ci), .PC0(wcount_0), .PC1(wcount_1), .CO(co0), 
        .NC0(iwcount_0), .NC1(iwcount_1));

    CU2 w_gctr_1 (.CI(co0), .PC0(wcount_2), .PC1(wcount_3), .CO(co1), .NC0(iwcount_2), 
        .NC1(iwcount_3));

    CU2 w_gctr_2 (.CI(co1), .PC0(wcount_4), .PC1(wcount_5), .CO(co2), .NC0(iwcount_4), 
        .NC1(iwcount_5));

    CU2 w_gctr_3 (.CI(co2), .PC0(wcount_6), .PC1(wcount_7), .CO(co3), .NC0(iwcount_6), 
        .NC1(iwcount_7));

    CU2 w_gctr_4 (.CI(co3), .PC0(wcount_8), .PC1(scuba_vlo), .CO(co4), .NC0(iwcount_8), 
        .NC1());

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    FADD2B r_gctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), .B1(scuba_vhi), 
        .CI(scuba_vlo), .COUT(r_gctr_ci), .S0(), .S1());

    CU2 r_gctr_0 (.CI(r_gctr_ci), .PC0(rcount_0), .PC1(rcount_1), .CO(co0_1), 
        .NC0(ircount_0), .NC1(ircount_1));

    CU2 r_gctr_1 (.CI(co0_1), .PC0(rcount_2), .PC1(rcount_3), .CO(co1_1), 
        .NC0(ircount_2), .NC1(ircount_3));

    CU2 r_gctr_2 (.CI(co1_1), .PC0(rcount_4), .PC1(rcount_5), .CO(co2_1), 
        .NC0(ircount_4), .NC1(ircount_5));

    CU2 r_gctr_3 (.CI(co2_1), .PC0(rcount_6), .PC1(rcount_7), .CO(co3_1), 
        .NC0(ircount_6), .NC1(ircount_7));

    CU2 r_gctr_4 (.CI(co3_1), .PC0(rcount_8), .PC1(scuba_vlo), .CO(co4_1), 
        .NC0(ircount_8), .NC1());

    FADD2B empty_cmp_ci_a (.A0(scuba_vlo), .A1(rden_i), .B0(scuba_vlo), 
        .B1(rden_i), .CI(scuba_vlo), .COUT(cmp_ci), .S0(), .S1());

    AGEB2 empty_cmp_0 (.A0(rcount_0), .A1(rcount_1), .B0(wcount_r0), .B1(wcount_r1), 
        .CI(cmp_ci), .GE(co0_2));

    AGEB2 empty_cmp_1 (.A0(rcount_2), .A1(rcount_3), .B0(wcount_r2), .B1(wcount_r3), 
        .CI(co0_2), .GE(co1_2));

    AGEB2 empty_cmp_2 (.A0(rcount_4), .A1(rcount_5), .B0(wcount_r4), .B1(w_g2b_xor_cluster_0), 
        .CI(co1_2), .GE(co2_2));

    AGEB2 empty_cmp_3 (.A0(rcount_6), .A1(rcount_7), .B0(wcount_r6), .B1(wcount_r7), 
        .CI(co2_2), .GE(co3_2));

    AGEB2 empty_cmp_4 (.A0(empty_cmp_set), .A1(scuba_vlo), .B0(empty_cmp_clr), 
        .B1(scuba_vlo), .CI(co3_2), .GE(empty_d_c));

    FADD2B a0 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .CI(empty_d_c), .COUT(), .S0(empty_d), .S1());

    FADD2B full_cmp_ci_a (.A0(scuba_vlo), .A1(wren_i), .B0(scuba_vlo), .B1(wren_i), 
        .CI(scuba_vlo), .COUT(cmp_ci_1), .S0(), .S1());

    AGEB2 full_cmp_0 (.A0(wcount_0), .A1(wcount_1), .B0(rcount_w0), .B1(rcount_w1), 
        .CI(cmp_ci_1), .GE(co0_3));

    AGEB2 full_cmp_1 (.A0(wcount_2), .A1(wcount_3), .B0(rcount_w2), .B1(rcount_w3), 
        .CI(co0_3), .GE(co1_3));

    AGEB2 full_cmp_2 (.A0(wcount_4), .A1(wcount_5), .B0(rcount_w4), .B1(r_g2b_xor_cluster_0), 
        .CI(co1_3), .GE(co2_3));

    AGEB2 full_cmp_3 (.A0(wcount_6), .A1(wcount_7), .B0(rcount_w6), .B1(rcount_w7), 
        .CI(co2_3), .GE(co3_3));

    AGEB2 full_cmp_4 (.A0(full_cmp_set), .A1(scuba_vlo), .B0(full_cmp_clr), 
        .B1(scuba_vlo), .CI(co3_3), .GE(full_d_c));

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    FADD2B a1 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
        .CI(full_d_c), .COUT(), .S0(full_d), .S1());

    assign Empty = empty_i;
    assign Full = full_i;


    // exemplar begin
    // exemplar attribute LUT4_21 initval 0x6996
    // exemplar attribute LUT4_20 initval 0x6996
    // exemplar attribute LUT4_19 initval 0x6996
    // exemplar attribute LUT4_18 initval 0x6996
    // exemplar attribute LUT4_17 initval 0x6996
    // exemplar attribute LUT4_16 initval 0x6996
    // exemplar attribute LUT4_15 initval 0x6996
    // exemplar attribute LUT4_14 initval 0x6996
    // exemplar attribute LUT4_13 initval 0x6996
    // exemplar attribute LUT4_12 initval 0x6996
    // exemplar attribute LUT4_11 initval 0x6996
    // exemplar attribute LUT4_10 initval 0x6996
    // exemplar attribute LUT4_9 initval 0x6996
    // exemplar attribute LUT4_8 initval 0x6996
    // exemplar attribute LUT4_7 initval 0x6996
    // exemplar attribute LUT4_6 initval 0x6996
    // exemplar attribute LUT4_5 initval 0x6996
    // exemplar attribute LUT4_4 initval 0x6996
    // exemplar attribute LUT4_3 initval 0x0410
    // exemplar attribute LUT4_2 initval 0x1004
    // exemplar attribute LUT4_1 initval 0x0140
    // exemplar attribute LUT4_0 initval 0x4001
    // exemplar attribute pdp_ram_0_0_1 MEM_LPC_FILE fifo_64x256a.lpc
    // exemplar attribute pdp_ram_0_0_1 MEM_INIT_FILE 
    // exemplar attribute pdp_ram_0_0_1 CSDECODE_R 0b000
    // exemplar attribute pdp_ram_0_0_1 CSDECODE_W 0b001
    // exemplar attribute pdp_ram_0_0_1 GSR ENABLED
    // exemplar attribute pdp_ram_0_0_1 RESETMODE ASYNC
    // exemplar attribute pdp_ram_0_0_1 REGMODE NOREG
    // exemplar attribute pdp_ram_0_0_1 DATA_WIDTH_R 36
    // exemplar attribute pdp_ram_0_0_1 DATA_WIDTH_W 36
    // exemplar attribute pdp_ram_0_1_0 MEM_LPC_FILE fifo_64x256a.lpc
    // exemplar attribute pdp_ram_0_1_0 MEM_INIT_FILE 
    // exemplar attribute pdp_ram_0_1_0 CSDECODE_R 0b000
    // exemplar attribute pdp_ram_0_1_0 CSDECODE_W 0b001
    // exemplar attribute pdp_ram_0_1_0 GSR ENABLED
    // exemplar attribute pdp_ram_0_1_0 RESETMODE ASYNC
    // exemplar attribute pdp_ram_0_1_0 REGMODE NOREG
    // exemplar attribute pdp_ram_0_1_0 DATA_WIDTH_R 36
    // exemplar attribute pdp_ram_0_1_0 DATA_WIDTH_W 36
    // exemplar end

endmodule
