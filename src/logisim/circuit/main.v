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
