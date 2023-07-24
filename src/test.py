import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, FallingEdge, Timer, ClockCycles

@cocotb.test()
async def test_design(dut):
    dut._log.info("start")
    clock = Clock(dut.clk, 10, units="us")
    cocotb.start_soon(clock.start())

    # reset
    dut._log.info("reset")
    dut.rst_n.value = 0
    await ClockCycles(dut.clk, 10)
    dut.rst_n.value = 1
    dut.ui_in.value = 101
    dut.uio_in.value = 0xAA
    
    dut._log.info(dut.uo_out.value)
    await ClockCycles(dut.clk, 3)
    dut._log.info(dut.uo_out.value)
    dut._log.info(dut.uio_out.value)
    dut._log.info(dut.uio_oe.value)
