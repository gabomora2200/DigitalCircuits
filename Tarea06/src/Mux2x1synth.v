/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "Mux2x1.v:1" *)
module Mux2x1synth(dataOutSynth, validOUT, dataIn0, dataIn1, selector, clk, reset, validIN0, validIN1);
  (* src = "Mux2x1.v:28" *)
  wire [1:0] _00_;
  (* src = "Mux2x1.v:28" *)
  wire _01_;
  (* src = "Mux2x1.v:28" *)
  wire _02_;
  (* src = "Mux2x1.v:28" *)
  wire _03_;
  (* src = "Mux2x1.v:28" *)
  wire _04_;
  (* src = "Mux2x1.v:4" *)
  wire _05_;
  (* src = "Mux2x1.v:4" *)
  wire _06_;
  (* src = "Mux2x1.v:5" *)
  wire _07_;
  (* src = "Mux2x1.v:5" *)
  wire _08_;
  (* src = "Mux2x1.v:2" *)
  wire _09_;
  (* src = "Mux2x1.v:2" *)
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  (* src = "Mux2x1.v:8" *)
  wire _34_;
  (* src = "Mux2x1.v:6" *)
  wire _35_;
  (* src = "Mux2x1.v:9" *)
  wire _36_;
  (* src = "Mux2x1.v:10" *)
  wire _37_;
  (* src = "Mux2x1.v:3" *)
  wire _38_;
  wire [1:0] _39_;
  (* src = "Mux2x1.v:7" *)
  input clk;
  (* src = "Mux2x1.v:4" *)
  input [1:0] dataIn0;
  (* src = "Mux2x1.v:5" *)
  input [1:0] dataIn1;
  (* src = "Mux2x1.v:2" *)
  output [1:0] dataOutSynth;
  (* src = "Mux2x1.v:12" *)
  wire [1:0] out;
  (* src = "Mux2x1.v:8" *)
  input reset;
  (* src = "Mux2x1.v:6" *)
  input selector;
  (* src = "Mux2x1.v:9" *)
  input validIN0;
  (* src = "Mux2x1.v:10" *)
  input validIN1;
  (* src = "Mux2x1.v:3" *)
  output validOUT;
  (* src = "Mux2x1.v:13" *)
  wire validOutMux;
  NOT _40_ (
    .A(_09_),
    .Y(_11_)
  );
  NOT _41_ (
    .A(_10_),
    .Y(_12_)
  );
  NOT _42_ (
    .A(_36_),
    .Y(_13_)
  );
  NOT _43_ (
    .A(_35_),
    .Y(_14_)
  );
  NAND _44_ (
    .A(_37_),
    .B(_35_),
    .Y(_15_)
  );
  NOT _45_ (
    .A(_15_),
    .Y(_16_)
  );
  NOR _46_ (
    .A(_13_),
    .B(_35_),
    .Y(_17_)
  );
  NOR _47_ (
    .A(_16_),
    .B(_17_),
    .Y(_18_)
  );
  NAND _48_ (
    .A(_14_),
    .B(_05_),
    .Y(_19_)
  );
  NAND _49_ (
    .A(_35_),
    .B(_07_),
    .Y(_20_)
  );
  NAND _50_ (
    .A(_19_),
    .B(_20_),
    .Y(_21_)
  );
  NOR _51_ (
    .A(_18_),
    .B(_21_),
    .Y(_22_)
  );
  NAND _52_ (
    .A(_11_),
    .B(_18_),
    .Y(_23_)
  );
  NAND _53_ (
    .A(_34_),
    .B(_23_),
    .Y(_24_)
  );
  NOR _54_ (
    .A(_22_),
    .B(_24_),
    .Y(_02_)
  );
  NAND _55_ (
    .A(_14_),
    .B(_06_),
    .Y(_25_)
  );
  NAND _56_ (
    .A(_35_),
    .B(_08_),
    .Y(_26_)
  );
  NAND _57_ (
    .A(_25_),
    .B(_26_),
    .Y(_27_)
  );
  NOR _58_ (
    .A(_18_),
    .B(_27_),
    .Y(_28_)
  );
  NAND _59_ (
    .A(_12_),
    .B(_18_),
    .Y(_29_)
  );
  NAND _60_ (
    .A(_34_),
    .B(_29_),
    .Y(_30_)
  );
  NOR _61_ (
    .A(_28_),
    .B(_30_),
    .Y(_03_)
  );
  NOR _62_ (
    .A(_34_),
    .B(_38_),
    .Y(_31_)
  );
  NAND _63_ (
    .A(_34_),
    .B(_18_),
    .Y(_32_)
  );
  NOT _64_ (
    .A(_32_),
    .Y(_33_)
  );
  NOR _65_ (
    .A(_31_),
    .B(_33_),
    .Y(_04_)
  );
  (* src = "Mux2x1.v:28" *)
  DFF _66_ (
    .C(clk),
    .D(_00_[0]),
    .Q(dataOutSynth[0])
  );
  (* src = "Mux2x1.v:28" *)
  DFF _67_ (
    .C(clk),
    .D(_00_[1]),
    .Q(dataOutSynth[1])
  );
  (* src = "Mux2x1.v:28" *)
  DFF _68_ (
    .C(clk),
    .D(_01_),
    .Q(validOUT)
  );
  assign _09_ = dataOutSynth[0];
  assign _10_ = dataOutSynth[1];
  assign _34_ = reset;
  assign _00_[0] = _02_;
  assign _00_[1] = _03_;
  assign _36_ = validIN0;
  assign _37_ = validIN1;
  assign _35_ = selector;
  assign _05_ = dataIn0[0];
  assign _07_ = dataIn1[0];
  assign _06_ = dataIn0[1];
  assign _08_ = dataIn1[1];
  assign _38_ = validOUT;
  assign _01_ = _04_;
endmodule
