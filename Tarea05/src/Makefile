all: parte1 parte2 parte3
	echo fin
parte1:
	$(MAKE) build1 -C YOSYS
	sed -i 's/Mux2x1/Mux2x1_Estructural_Sintetizado/' sintetizado.v
	iverilog BancodePruebas.v
	./a.out
	rm a.out
	gtkwave tarea05.vcd
parte2:
	$(MAKE) build2 -C YOSYS
	sed -i 's/Mux2x1/Mux2x1_Estructural_Sintetizado/' sintetizadoReal.v
	iverilog -T typ BancodePruebasReal.v YOSYS/cmos_cells2.v
	./a.out
	rm a.out
	gtkwave tarea05.vcd
parte3:
	$(MAKE) build2 -C YOSYS
	sed -i 's/Mux2x1/Mux2x1_Estructural_Sintetizado/' sintetizadoReal.v
	iverilog -T typ BancodePruebasReal.v YOSYS/cmos_cells.v
	./a.out
	rm a.out
	gtkwave tarea05.vcd
