// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Apr  6 23:14:46 2026
// Host        : DESKTOP-CSP9FU1 running 64-bit major release  (build 9200)
// Command     : write_verilog D:/Project_2/ISP.v
// Design      : TOP_SPI
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RAM
   (MISO_reg,
    MISO_reg_0,
    CLK,
    rst_IBUF,
    \rx_data_reg[8] ,
    SR,
    Q,
    WEA,
    \counter_reg[1] ,
    E);
  output MISO_reg;
  output MISO_reg_0;
  input CLK;
  input rst_IBUF;
  input \rx_data_reg[8] ;
  input [0:0]SR;
  input [7:0]Q;
  input [0:0]WEA;
  input [1:0]\counter_reg[1] ;
  input [0:0]E;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [0:0]E;
  wire MISO_reg;
  wire MISO_reg_0;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [0:0]WEA;
  wire [1:0]\counter_reg[1] ;
  wire [7:0]internal_reg;
  wire rst_IBUF;
  wire \rx_data_reg[8] ;
  wire [7:0]tx_data;

  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    MISO_i_3
       (.I0(tx_data[5]),
        .I1(tx_data[7]),
        .I2(tx_data[6]),
        .I3(\counter_reg[1] [0]),
        .I4(\counter_reg[1] [1]),
        .I5(tx_data[4]),
        .O(MISO_reg_0));
  LUT6 #(
    .INIT(64'h00550F33FF550F33)) 
    MISO_i_4
       (.I0(tx_data[1]),
        .I1(tx_data[3]),
        .I2(tx_data[2]),
        .I3(\counter_reg[1] [0]),
        .I4(\counter_reg[1] [1]),
        .I5(tx_data[0]),
        .O(MISO_reg));
  VCC VCC
       (.P(\<const1> ));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(Q[0]),
        .Q(internal_reg[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(Q[1]),
        .Q(internal_reg[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(Q[2]),
        .Q(internal_reg[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(Q[3]),
        .Q(internal_reg[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(Q[4]),
        .Q(internal_reg[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(Q[5]),
        .Q(internal_reg[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(Q[6]),
        .Q(internal_reg[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \internal_reg_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(Q[7]),
        .Q(internal_reg[7]),
        .R(SR));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2048" *) 
  (* RTL_RAM_NAME = "M/mem" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00000000000000000000000000000000000000000000000000000000000000A5),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    mem_reg
       (.ADDRARDADDR({\<const0> ,\<const0> ,internal_reg,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({\<const0> ,\<const0> ,internal_reg,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(CLK),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOBDO(tx_data),
        .ENARDEN(rst_IBUF),
        .ENBWREN(\rx_data_reg[8] ),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(SR),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({WEA,WEA}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
endmodule

module SPI_SLAVE
   (MISO_OBUF,
    SR,
    Q,
    WEA,
    \internal_reg_reg[7] ,
    mem_reg,
    E,
    CLK,
    MOSI_IBUF,
    mem_reg_0,
    mem_reg_1,
    SS_n_IBUF,
    rst_IBUF);
  output MISO_OBUF;
  output [0:0]SR;
  output [1:0]Q;
  output [0:0]WEA;
  output [7:0]\internal_reg_reg[7] ;
  output mem_reg;
  output [0:0]E;
  input CLK;
  input MOSI_IBUF;
  input mem_reg_0;
  input mem_reg_1;
  input SS_n_IBUF;
  input rst_IBUF;

  wire \<const1> ;
  wire CLK;
  (* RTL_KEEP = "yes" *) wire [2:0]CS;
  wire [0:0]E;
  wire \FSM_gray_CS[0]_i_2_n_0 ;
  wire \FSM_gray_CS[2]_i_3_n_0 ;
  wire \FSM_gray_CS[2]_i_4_n_0 ;
  wire MISO_OBUF;
  wire MISO_i_1_n_0;
  wire MISO_i_2_n_0;
  wire MOSI_IBUF;
  wire [2:0]NS;
  wire [1:0]Q;
  wire [0:0]SR;
  wire SS_n_IBUF;
  wire [0:0]WEA;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire flag_read_data_add_i_1_n_0;
  wire flag_read_data_add_reg_n_0;
  wire [9:1]in8;
  wire [7:0]\internal_reg_reg[7] ;
  wire mem_reg;
  wire mem_reg_0;
  wire mem_reg_1;
  wire [9:0]register;
  wire register_0;
  wire \register_reg_n_0_[9] ;
  wire rst_IBUF;
  wire [9:8]rx_data;
  wire \rx_data[9]_i_1_n_0 ;
  wire rx_valid;
  wire rx_valid_i_1_n_0;

  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \FSM_gray_CS[0]_i_1 
       (.I0(\FSM_gray_CS[0]_i_2_n_0 ),
        .I1(CS[2]),
        .I2(CS[1]),
        .I3(CS[0]),
        .I4(\FSM_gray_CS[2]_i_3_n_0 ),
        .O(NS[0]));
  LUT6 #(
    .INIT(64'h0101010100010101)) 
    \FSM_gray_CS[0]_i_2 
       (.I0(CS[2]),
        .I1(CS[1]),
        .I2(SS_n_IBUF),
        .I3(MOSI_IBUF),
        .I4(CS[0]),
        .I5(flag_read_data_add_reg_n_0),
        .O(\FSM_gray_CS[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hCCCDCCC0)) 
    \FSM_gray_CS[1]_i_1 
       (.I0(SS_n_IBUF),
        .I1(\FSM_gray_CS[2]_i_3_n_0 ),
        .I2(CS[2]),
        .I3(CS[1]),
        .I4(CS[0]),
        .O(NS[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_gray_CS[2]_i_1 
       (.I0(rst_IBUF),
        .O(SR));
  LUT6 #(
    .INIT(64'hA0A0A0A3A0A0A0A0)) 
    \FSM_gray_CS[2]_i_2 
       (.I0(\FSM_gray_CS[2]_i_3_n_0 ),
        .I1(\FSM_gray_CS[2]_i_4_n_0 ),
        .I2(CS[2]),
        .I3(CS[1]),
        .I4(SS_n_IBUF),
        .I5(flag_read_data_add_reg_n_0),
        .O(NS[2]));
  LUT5 #(
    .INIT(32'h55554555)) 
    \FSM_gray_CS[2]_i_3 
       (.I0(SS_n_IBUF),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_gray_CS[2]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_gray_CS[2]_i_4 
       (.I0(SS_n_IBUF),
        .I1(MOSI_IBUF),
        .I2(CS[0]),
        .O(\FSM_gray_CS[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_CS_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(NS[0]),
        .Q(CS[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_CS_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(NS[1]),
        .Q(CS[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "CHK_CMD:001,WRITE:011,READ_ADD:010,READ_DATA:111,IDLE:000" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_gray_CS_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(NS[2]),
        .Q(CS[2]),
        .R(SR));
  LUT6 #(
    .INIT(64'h57000000000000FF)) 
    MISO_i_1
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(CS[1]),
        .I4(CS[0]),
        .I5(CS[2]),
        .O(MISO_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004040400040)) 
    MISO_i_2
       (.I0(\counter_reg_n_0_[3] ),
        .I1(CS[0]),
        .I2(CS[1]),
        .I3(mem_reg_0),
        .I4(\counter_reg_n_0_[2] ),
        .I5(mem_reg_1),
        .O(MISO_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    MISO_reg
       (.C(CLK),
        .CE(MISO_i_1_n_0),
        .D(MISO_i_2_n_0),
        .Q(MISO_OBUF),
        .R(SR));
  VCC VCC
       (.P(\<const1> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00001115)) 
    \counter[0]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00151100)) 
    \counter[1]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01111000)) 
    \counter[2]_i_1 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\counter_reg_n_0_[2] ),
        .O(\counter[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \counter[3]_i_1 
       (.I0(CS[1]),
        .I1(CS[0]),
        .I2(CS[2]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00114000)) 
    \counter[3]_i_2 
       (.I0(\counter[3]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\counter_reg_n_0_[3] ),
        .O(\counter[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \counter[3]_i_3 
       (.I0(CS[0]),
        .I1(CS[2]),
        .I2(CS[1]),
        .O(\counter[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(\counter[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(\counter[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(\counter[3]_i_1_n_0 ),
        .D(\counter[3]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[3] ),
        .R(SR));
  LUT4 #(
    .INIT(16'h7702)) 
    flag_read_data_add_i_1
       (.I0(\rx_data[9]_i_1_n_0 ),
        .I1(CS[2]),
        .I2(CS[0]),
        .I3(flag_read_data_add_reg_n_0),
        .O(flag_read_data_add_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    flag_read_data_add_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(flag_read_data_add_i_1_n_0),
        .Q(flag_read_data_add_reg_n_0),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \internal_reg[7]_i_1 
       (.I0(rx_valid),
        .I1(rx_data[8]),
        .O(E));
  LUT4 #(
    .INIT(16'h80FF)) 
    mem_reg_i_1
       (.I0(rx_data[8]),
        .I1(rx_data[9]),
        .I2(rx_valid),
        .I3(rst_IBUF),
        .O(mem_reg));
  LUT3 #(
    .INIT(8'h20)) 
    mem_reg_i_2
       (.I0(rx_valid),
        .I1(rx_data[9]),
        .I2(rx_data[8]),
        .O(WEA));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[0]_i_1 
       (.I0(MOSI_IBUF),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[0]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[1]_i_1 
       (.I0(in8[1]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[1]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[2]_i_1 
       (.I0(in8[2]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[2]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[3]_i_1 
       (.I0(in8[3]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[3]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[4]_i_1 
       (.I0(in8[4]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[4]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[5]_i_1 
       (.I0(in8[5]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[5]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[6]_i_1 
       (.I0(in8[6]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[6]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[7]_i_1 
       (.I0(in8[7]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[7]));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[8]_i_1 
       (.I0(in8[8]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[8]));
  LUT6 #(
    .INIT(64'h57570057000000FF)) 
    \register[9]_i_1 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(CS[2]),
        .I4(CS[0]),
        .I5(CS[1]),
        .O(register_0));
  LUT4 #(
    .INIT(16'h8808)) 
    \register[9]_i_2 
       (.I0(in8[9]),
        .I1(CS[1]),
        .I2(CS[2]),
        .I3(CS[0]),
        .O(register[9]));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[0] 
       (.C(CLK),
        .CE(register_0),
        .D(register[0]),
        .Q(in8[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[1] 
       (.C(CLK),
        .CE(register_0),
        .D(register[1]),
        .Q(in8[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[2] 
       (.C(CLK),
        .CE(register_0),
        .D(register[2]),
        .Q(in8[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[3] 
       (.C(CLK),
        .CE(register_0),
        .D(register[3]),
        .Q(in8[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[4] 
       (.C(CLK),
        .CE(register_0),
        .D(register[4]),
        .Q(in8[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[5] 
       (.C(CLK),
        .CE(register_0),
        .D(register[5]),
        .Q(in8[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[6] 
       (.C(CLK),
        .CE(register_0),
        .D(register[6]),
        .Q(in8[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[7] 
       (.C(CLK),
        .CE(register_0),
        .D(register[7]),
        .Q(in8[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[8] 
       (.C(CLK),
        .CE(register_0),
        .D(register[8]),
        .Q(in8[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \register_reg[9] 
       (.C(CLK),
        .CE(register_0),
        .D(register[9]),
        .Q(\register_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hE000E0000000E000)) 
    \rx_data[9]_i_1 
       (.I0(Q[1]),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(CS[1]),
        .I4(CS[2]),
        .I5(CS[0]),
        .O(\rx_data[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[0] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[1]),
        .Q(\internal_reg_reg[7] [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[1] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[2]),
        .Q(\internal_reg_reg[7] [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[2] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[3]),
        .Q(\internal_reg_reg[7] [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[3] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[4]),
        .Q(\internal_reg_reg[7] [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[4] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[5]),
        .Q(\internal_reg_reg[7] [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[5] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[6]),
        .Q(\internal_reg_reg[7] [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[6] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[7]),
        .Q(\internal_reg_reg[7] [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[7] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[8]),
        .Q(\internal_reg_reg[7] [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[8] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(in8[9]),
        .Q(rx_data[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rx_data_reg[9] 
       (.C(CLK),
        .CE(\rx_data[9]_i_1_n_0 ),
        .D(\register_reg_n_0_[9] ),
        .Q(rx_data[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEAEF2A20)) 
    rx_valid_i_1
       (.I0(rx_valid),
        .I1(CS[1]),
        .I2(CS[0]),
        .I3(CS[2]),
        .I4(\rx_data[9]_i_1_n_0 ),
        .O(rx_valid_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rx_valid_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_valid_i_1_n_0),
        .Q(rx_valid),
        .R(SR));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module TOP_SPI
   (MOSI,
    MISO,
    SS_n,
    clk,
    rst);
  input MOSI;
  output MISO;
  input SS_n;
  input clk;
  input rst;

  wire MISO;
  wire MISO_OBUF;
  wire MOSI;
  wire MOSI_IBUF;
  wire M_n_0;
  wire M_n_1;
  wire SS_n;
  wire SS_n_IBUF;
  wire U_n_1;
  wire U_n_13;
  wire U_n_14;
  wire U_n_2;
  wire U_n_3;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire mem;
  wire rst;
  wire rst_IBUF;
  wire [7:0]rx_data;

  RAM M
       (.CLK(clk_IBUF_BUFG),
        .E(U_n_14),
        .MISO_reg(M_n_0),
        .MISO_reg_0(M_n_1),
        .Q(rx_data),
        .SR(U_n_1),
        .WEA(mem),
        .\counter_reg[1] ({U_n_2,U_n_3}),
        .rst_IBUF(rst_IBUF),
        .\rx_data_reg[8] (U_n_13));
  OBUF MISO_OBUF_inst
       (.I(MISO_OBUF),
        .O(MISO));
  IBUF MOSI_IBUF_inst
       (.I(MOSI),
        .O(MOSI_IBUF));
  IBUF SS_n_IBUF_inst
       (.I(SS_n),
        .O(SS_n_IBUF));
  SPI_SLAVE U
       (.CLK(clk_IBUF_BUFG),
        .E(U_n_14),
        .MISO_OBUF(MISO_OBUF),
        .MOSI_IBUF(MOSI_IBUF),
        .Q({U_n_2,U_n_3}),
        .SR(U_n_1),
        .SS_n_IBUF(SS_n_IBUF),
        .WEA(mem),
        .\internal_reg_reg[7] (rx_data),
        .mem_reg(U_n_13),
        .mem_reg_0(M_n_1),
        .mem_reg_1(M_n_0),
        .rst_IBUF(rst_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule
