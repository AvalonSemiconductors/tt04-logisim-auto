/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Adder                                                        **
 **                                                                          **
 *****************************************************************************/

module Adder( carryIn,
              carryOut,
              dataA,
              dataB,
              result );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter extendedBits = 1;
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                carryIn;
   input [nrOfBits-1:0] dataA;
   input [nrOfBits-1:0] dataB;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output                carryOut;
   output [nrOfBits-1:0] result;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [extendedBits-1:0] s_extendedDataA;
   wire [extendedBits-1:0] s_extendedDataB;
   wire [extendedBits-1:0] s_sumResult;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/
   assign   {carryOut, result} = dataA + dataB + carryIn;

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : REGISTER_FLIP_FLOP                                           **
 **                                                                          **
 *****************************************************************************/

module REGISTER_FLIP_FLOP( clock,
                           clockEnable,
                           d,
                           q,
                           reset,
                           tick );

   /*******************************************************************************
   ** Here all module parameters are defined with a dummy value                  **
   *******************************************************************************/
   parameter invertClock = 1;
   parameter nrOfBits = 1;

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input                clock;
   input                clockEnable;
   input [nrOfBits-1:0] d;
   input                reset;
   input                tick;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [nrOfBits-1:0] q;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire s_clock;

   /*******************************************************************************
   ** The registers are defined here                                             **
   *******************************************************************************/
   reg [nrOfBits-1:0] s_currentState;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   assign q = s_currentState;
   assign s_clock = invertClock == 0 ? clock : ~clock;

   always @(posedge s_clock or posedge reset)
   begin
      if (reset) s_currentState <= 0;
      else if (clockEnable&tick) s_currentState <= d;
   end

endmodule
/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : main                                                         **
 **                                                                          **
 *****************************************************************************/

module main( clk,
             ena,
             rst_n,
             ui_in,
             uio_in,
             uio_oe,
             uio_out,
             uo_out );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       clk;
   input       ena;
   input       rst_n;
   input [7:0] ui_in;
   input [7:0] uio_in;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [7:0] uio_oe;
   output [7:0] uio_out;
   output [7:0] uo_out;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [7:0] s_logisimBus11;
   wire [7:0] s_logisimBus12;
   wire [7:0] s_logisimBus13;
   wire [7:0] s_logisimBus7;
   wire [7:0] s_logisimBus8;
   wire [7:0] s_logisimBus9;
   wire       s_logisimNet0;
   wire       s_logisimNet10;
   wire       s_logisimNet15;
   wire       s_logisimNet16;
   wire       s_logisimNet2;
   wire       s_logisimNet4;
   wire       s_logisimNet5;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus7[7:0] = ui_in;
   assign s_logisimBus9[7:0] = uio_in;
   assign s_logisimNet10     = rst_n;
   assign s_logisimNet4      = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign uio_oe  = s_logisimBus11[7:0];
   assign uio_out = s_logisimBus12[7:0];
   assign uo_out  = s_logisimBus13[7:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimNet2  =  1'b1;


   // Constant
   assign  s_logisimNet16  =  1'b1;


   // Constant
   assign  s_logisimBus12[3:0]  =  4'h0;


   // Constant
   assign  s_logisimBus12[7]  =  1'b1;


   // Constant
   assign  s_logisimBus11[7:0]  =  8'hF0;


   // NOT Gate
   assign s_logisimNet5 = ~s_logisimNet10;

   // NOT Gate
   assign s_logisimBus8 = ~s_logisimBus7;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Adder #(.extendedBits(3),
           .nrOfBits(2))
      ARITH_1 (.carryIn(s_logisimNet2),
               .carryOut(s_logisimBus12[6]),
               .dataA(s_logisimBus9[1:0]),
               .dataB(s_logisimBus9[3:2]),
               .result(s_logisimBus12[5:4]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_2 (.clock(s_logisimNet4),
                .clockEnable(s_logisimNet16),
                .d(s_logisimBus8[7:0]),
                .q(s_logisimBus13[7:0]),
                .reset(s_logisimNet5),
                .tick(1'b1));


endmodule

`default_nettype none

module tt_um_as_my_logisim_project(
    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,
    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,
    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

main CIRCUIT_0(
    .clk(clk),
    .ena(ena),
    .rst_n(rst_n),
    .ui_in(ui_in),
    .uio_in(uio_in),
    .uio_oe(uio_oe),
    .uio_out(uio_out),
    .uo_out(uo_out)
);

endmodule

//2023-07-24 11:03:17.621797