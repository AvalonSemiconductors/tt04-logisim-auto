`default_nettype none

module {namehere}(
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
