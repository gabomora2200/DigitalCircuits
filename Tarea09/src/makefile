all:
	yosys -s sumador.ys
	sed -i "s/sumador/sumador_synth/g" sumador_synth.v
	sed -i "s/sum_30_dd/sum_30_dd_synth/g" sumador_synth.v
	sed -i "s/idx_dd/idx_dd_synth/g" sumador_synth.v
	sed -i "s/sum_pipe/sum_pipe_synth/g" sumador_synth.v
	sed -i "s/identificador/identificador_synth/g" sumador_synth.v
	iverilog banco.v
	./a.out
	rm a.out
	gtkwave tarea9.vcd