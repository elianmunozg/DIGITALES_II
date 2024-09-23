calculadora: 
	iverilog -o tb.vvp testbench.v
	iverilog -o tb2.vvp testbench2.v
	vvp tb.vvp 
	vvp tb2.vvp
	gtkwave tb.vcd 
	gtkwave tb2.vcd

clean:
	rm -rf *.vcd *.vvp