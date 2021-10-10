build: probador1 probador2 probador3
	echo fin
probador1:
	iverilog bancoPrueba1.v -T typ
	./a.out
	rm a.out
	gtkwave probador1.vcd
probador2:
	iverilog bancoPrueba2.v -T typ
	./a.out
	rm a.out
	gtkwave probador2.vcd
probador3:
	iverilog bancoPrueba3.v -T typ
	./a.out
	rm a.out
	gtkwave probador3.vcd
