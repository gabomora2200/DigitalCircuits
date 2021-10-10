all: parteA parteB parteC
	echo fin
parteA:
	iverilog bancoPrueba.v
	./a.out
	rm a.out
	gtkwave mux2_2bit.vcd
parteB:
	iverilog bancoPrueba2.v
	./a.out
	rm a.out
	gtkwave mux2_4bit.vcd
parteC:
	iverilog bancoPrueba3.v
	./a.out
	rm a.out
	gtkwave mux4_4bit.vcd
