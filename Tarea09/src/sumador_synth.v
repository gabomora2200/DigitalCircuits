/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* cells_not_processed =  1  *)
(* src = "identificador_synth.v:1" *)
module identificador_synth(clk, reset_L, idx, idx_dd_synth);
  (* src = "identificador_synth.v:11" *)
  wire [3:0] _00_;
  (* src = "identificador_synth.v:11" *)
  wire [3:0] _01_;
  (* src = "identificador_synth.v:11" *)
  wire [3:0] _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  (* src = "identificador_synth.v:2" *)
  input clk;
  (* src = "identificador_synth.v:4" *)
  input [3:0] idx;
  (* src = "identificador_synth.v:5" *)
  output [3:0] idx_dd_synth;
  (* src = "identificador_synth.v:8" *)
  wire [3:0] idx_etapa_1;
  (* src = "identificador_synth.v:9" *)
  wire [3:0] idx_etapa_2;
  (* src = "identificador_synth.v:3" *)
  input reset_L;
  NAND _15_ (
    .A(idx_etapa_1[1]),
    .B(reset_L),
    .Y(_03_)
  );
  NOT _16_ (
    .A(_03_),
    .Y(_02_[1])
  );
  NAND _17_ (
    .A(reset_L),
    .B(idx_etapa_1[2]),
    .Y(_04_)
  );
  NOT _18_ (
    .A(_04_),
    .Y(_02_[2])
  );
  NAND _19_ (
    .A(reset_L),
    .B(idx_etapa_1[3]),
    .Y(_05_)
  );
  NOT _20_ (
    .A(_05_),
    .Y(_02_[3])
  );
  NAND _21_ (
    .A(reset_L),
    .B(idx_etapa_2[0]),
    .Y(_06_)
  );
  NOT _22_ (
    .A(_06_),
    .Y(_00_[0])
  );
  NAND _23_ (
    .A(reset_L),
    .B(idx_etapa_2[1]),
    .Y(_07_)
  );
  NOT _24_ (
    .A(_07_),
    .Y(_00_[1])
  );
  NAND _25_ (
    .A(reset_L),
    .B(idx_etapa_2[2]),
    .Y(_08_)
  );
  NOT _26_ (
    .A(_08_),
    .Y(_00_[2])
  );
  NAND _27_ (
    .A(reset_L),
    .B(idx_etapa_2[3]),
    .Y(_09_)
  );
  NOT _28_ (
    .A(_09_),
    .Y(_00_[3])
  );
  NAND _29_ (
    .A(reset_L),
    .B(idx[0]),
    .Y(_10_)
  );
  NOT _30_ (
    .A(_10_),
    .Y(_01_[0])
  );
  NAND _31_ (
    .A(reset_L),
    .B(idx[1]),
    .Y(_11_)
  );
  NOT _32_ (
    .A(_11_),
    .Y(_01_[1])
  );
  NAND _33_ (
    .A(reset_L),
    .B(idx[2]),
    .Y(_12_)
  );
  NOT _34_ (
    .A(_12_),
    .Y(_01_[2])
  );
  NAND _35_ (
    .A(reset_L),
    .B(idx[3]),
    .Y(_13_)
  );
  NOT _36_ (
    .A(_13_),
    .Y(_01_[3])
  );
  NAND _37_ (
    .A(reset_L),
    .B(idx_etapa_1[0]),
    .Y(_14_)
  );
  NOT _38_ (
    .A(_14_),
    .Y(_02_[0])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _39_ (
    .C(clk),
    .D(_01_[0]),
    .Q(idx_etapa_1[0])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _40_ (
    .C(clk),
    .D(_01_[1]),
    .Q(idx_etapa_1[1])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _41_ (
    .C(clk),
    .D(_01_[2]),
    .Q(idx_etapa_1[2])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _42_ (
    .C(clk),
    .D(_01_[3]),
    .Q(idx_etapa_1[3])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _43_ (
    .C(clk),
    .D(_00_[0]),
    .Q(idx_dd_synth[0])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _44_ (
    .C(clk),
    .D(_00_[1]),
    .Q(idx_dd_synth[1])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _45_ (
    .C(clk),
    .D(_00_[2]),
    .Q(idx_dd_synth[2])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _46_ (
    .C(clk),
    .D(_00_[3]),
    .Q(idx_dd_synth[3])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _47_ (
    .C(clk),
    .D(_02_[0]),
    .Q(idx_etapa_2[0])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _48_ (
    .C(clk),
    .D(_02_[1]),
    .Q(idx_etapa_2[1])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _49_ (
    .C(clk),
    .D(_02_[2]),
    .Q(idx_etapa_2[2])
  );
  (* src = "identificador_synth.v:11" *)
  DFF _50_ (
    .C(clk),
    .D(_02_[3]),
    .Q(idx_etapa_2[3])
  );
endmodule

(* cells_not_processed =  1  *)
(* src = "sum_pipe_synth.v:1" *)
module sum_pipe_synth(clk, reset_L, data_A, data_B, sum_30_dd_synth);
  (* src = "sum_pipe_synth.v:20" *)
  wire _000_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [1:0] _001_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [1:0] _002_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [1:0] _003_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [1:0] _004_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [2:0] _005_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [1:0] _006_;
  (* src = "sum_pipe_synth.v:20" *)
  wire [3:0] _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  (* src = "sum_pipe_synth.v:14" *)
  wire acarreo_d;
  (* src = "sum_pipe_synth.v:2" *)
  input clk;
  (* src = "sum_pipe_synth.v:4" *)
  input [3:0] data_A;
  (* src = "sum_pipe_synth.v:11" *)
  wire [1:0] data_A_d;
  (* src = "sum_pipe_synth.v:9" *)
  wire [1:0] data_A_d_0;
  (* src = "sum_pipe_synth.v:5" *)
  input [3:0] data_B;
  (* src = "sum_pipe_synth.v:12" *)
  wire [1:0] data_B_d;
  (* src = "sum_pipe_synth.v:10" *)
  wire [1:0] data_B_d_0;
  (* src = "sum_pipe_synth.v:3" *)
  input reset_L;
  (* src = "sum_pipe_synth.v:16" *)
  wire [2:0] sum_10;
  (* src = "sum_pipe_synth.v:17" *)
  wire [1:0] sum_10_d;
  (* src = "sum_pipe_synth.v:18" *)
  wire [3:0] sum_30_d;
  (* src = "sum_pipe_synth.v:6" *)
  output [3:0] sum_30_dd_synth;
  NOT _054_ (
    .A(reset_L),
    .Y(_011_)
  );
  NOT _055_ (
    .A(data_A_d[1]),
    .Y(_012_)
  );
  NOT _056_ (
    .A(data_B_d[1]),
    .Y(_013_)
  );
  NOT _057_ (
    .A(acarreo_d),
    .Y(_014_)
  );
  NAND _058_ (
    .A(sum_10[1]),
    .B(reset_L),
    .Y(_015_)
  );
  NOT _059_ (
    .A(_015_),
    .Y(_006_[1])
  );
  NAND _060_ (
    .A(data_A_d[0]),
    .B(data_B_d[0]),
    .Y(_016_)
  );
  NOT _061_ (
    .A(_016_),
    .Y(_017_)
  );
  NOR _062_ (
    .A(data_A_d[0]),
    .B(data_B_d[0]),
    .Y(_018_)
  );
  NOT _063_ (
    .A(_018_),
    .Y(_019_)
  );
  NAND _064_ (
    .A(_016_),
    .B(_019_),
    .Y(_020_)
  );
  NOR _065_ (
    .A(_014_),
    .B(_020_),
    .Y(_021_)
  );
  NAND _066_ (
    .A(_014_),
    .B(_020_),
    .Y(_022_)
  );
  NAND _067_ (
    .A(reset_L),
    .B(_022_),
    .Y(_023_)
  );
  NOR _068_ (
    .A(_021_),
    .B(_023_),
    .Y(_007_[2])
  );
  NOR _069_ (
    .A(_017_),
    .B(_021_),
    .Y(_024_)
  );
  NOR _070_ (
    .A(_012_),
    .B(data_B_d[1]),
    .Y(_025_)
  );
  NOR _071_ (
    .A(data_A_d[1]),
    .B(_013_),
    .Y(_026_)
  );
  NOR _072_ (
    .A(_025_),
    .B(_026_),
    .Y(_027_)
  );
  NAND _073_ (
    .A(_024_),
    .B(_027_),
    .Y(_028_)
  );
  NOR _074_ (
    .A(_024_),
    .B(_027_),
    .Y(_029_)
  );
  NAND _075_ (
    .A(reset_L),
    .B(_028_),
    .Y(_030_)
  );
  NOR _076_ (
    .A(_029_),
    .B(_030_),
    .Y(_007_[3])
  );
  NAND _077_ (
    .A(reset_L),
    .B(sum_10_d[0]),
    .Y(_031_)
  );
  NOT _078_ (
    .A(_031_),
    .Y(_007_[0])
  );
  NAND _079_ (
    .A(reset_L),
    .B(sum_10_d[1]),
    .Y(_032_)
  );
  NOT _080_ (
    .A(_032_),
    .Y(_007_[1])
  );
  NAND _081_ (
    .A(reset_L),
    .B(data_A[2]),
    .Y(_033_)
  );
  NOT _082_ (
    .A(_033_),
    .Y(_002_[0])
  );
  NAND _083_ (
    .A(reset_L),
    .B(data_A[3]),
    .Y(_034_)
  );
  NOT _084_ (
    .A(_034_),
    .Y(_002_[1])
  );
  NAND _085_ (
    .A(data_A[0]),
    .B(data_B[0]),
    .Y(_035_)
  );
  NOT _086_ (
    .A(_035_),
    .Y(_036_)
  );
  NOR _087_ (
    .A(data_A[0]),
    .B(data_B[0]),
    .Y(_037_)
  );
  NOT _088_ (
    .A(_037_),
    .Y(_038_)
  );
  NAND _089_ (
    .A(reset_L),
    .B(_038_),
    .Y(_039_)
  );
  NOR _090_ (
    .A(_036_),
    .B(_039_),
    .Y(_005_[0])
  );
  NAND _091_ (
    .A(data_A[1]),
    .B(data_B[1]),
    .Y(_040_)
  );
  NOT _092_ (
    .A(_040_),
    .Y(_041_)
  );
  NOR _093_ (
    .A(data_A[1]),
    .B(data_B[1]),
    .Y(_042_)
  );
  NOT _094_ (
    .A(_042_),
    .Y(_043_)
  );
  NAND _095_ (
    .A(_040_),
    .B(_043_),
    .Y(_044_)
  );
  NOR _096_ (
    .A(_035_),
    .B(_044_),
    .Y(_045_)
  );
  NAND _097_ (
    .A(_035_),
    .B(_044_),
    .Y(_046_)
  );
  NAND _098_ (
    .A(reset_L),
    .B(_046_),
    .Y(_047_)
  );
  NOR _099_ (
    .A(_045_),
    .B(_047_),
    .Y(_005_[1])
  );
  NOR _100_ (
    .A(_041_),
    .B(_045_),
    .Y(_048_)
  );
  NOR _101_ (
    .A(_011_),
    .B(_048_),
    .Y(_005_[2])
  );
  NAND _102_ (
    .A(reset_L),
    .B(sum_10[2]),
    .Y(_049_)
  );
  NOT _103_ (
    .A(_049_),
    .Y(_000_)
  );
  NAND _104_ (
    .A(reset_L),
    .B(data_A_d_0[0]),
    .Y(_050_)
  );
  NOT _105_ (
    .A(_050_),
    .Y(_001_[0])
  );
  NAND _106_ (
    .A(reset_L),
    .B(data_A_d_0[1]),
    .Y(_051_)
  );
  NOT _107_ (
    .A(_051_),
    .Y(_001_[1])
  );
  NAND _108_ (
    .A(reset_L),
    .B(data_B_d_0[0]),
    .Y(_052_)
  );
  NOT _109_ (
    .A(_052_),
    .Y(_003_[0])
  );
  NAND _110_ (
    .A(reset_L),
    .B(data_B_d_0[1]),
    .Y(_053_)
  );
  NOT _111_ (
    .A(_053_),
    .Y(_003_[1])
  );
  NAND _112_ (
    .A(reset_L),
    .B(data_B[2]),
    .Y(_008_)
  );
  NOT _113_ (
    .A(_008_),
    .Y(_004_[0])
  );
  NAND _114_ (
    .A(reset_L),
    .B(data_B[3]),
    .Y(_009_)
  );
  NOT _115_ (
    .A(_009_),
    .Y(_004_[1])
  );
  NAND _116_ (
    .A(reset_L),
    .B(sum_10[0]),
    .Y(_010_)
  );
  NOT _117_ (
    .A(_010_),
    .Y(_006_[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _118_ (
    .C(clk),
    .D(_004_[0]),
    .Q(data_B_d_0[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _119_ (
    .C(clk),
    .D(_004_[1]),
    .Q(data_B_d_0[1])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _120_ (
    .C(clk),
    .D(_001_[0]),
    .Q(data_A_d[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _121_ (
    .C(clk),
    .D(_001_[1]),
    .Q(data_A_d[1])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _122_ (
    .C(clk),
    .D(_003_[0]),
    .Q(data_B_d[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _123_ (
    .C(clk),
    .D(_003_[1]),
    .Q(data_B_d[1])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _124_ (
    .C(clk),
    .D(_007_[0]),
    .Q(sum_30_dd_synth[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _125_ (
    .C(clk),
    .D(_007_[1]),
    .Q(sum_30_dd_synth[1])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _126_ (
    .C(clk),
    .D(_007_[2]),
    .Q(sum_30_dd_synth[2])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _127_ (
    .C(clk),
    .D(_007_[3]),
    .Q(sum_30_dd_synth[3])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _128_ (
    .C(clk),
    .D(_002_[0]),
    .Q(data_A_d_0[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _129_ (
    .C(clk),
    .D(_002_[1]),
    .Q(data_A_d_0[1])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _130_ (
    .C(clk),
    .D(_000_),
    .Q(acarreo_d)
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _131_ (
    .C(clk),
    .D(_005_[0]),
    .Q(sum_10[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _132_ (
    .C(clk),
    .D(_005_[1]),
    .Q(sum_10[1])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _133_ (
    .C(clk),
    .D(_005_[2]),
    .Q(sum_10[2])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _134_ (
    .C(clk),
    .D(_006_[0]),
    .Q(sum_10_d[0])
  );
  (* src = "sum_pipe_synth.v:20" *)
  DFF _135_ (
    .C(clk),
    .D(_006_[1]),
    .Q(sum_10_d[1])
  );
  assign sum_30_d = 4'h0;
endmodule

(* cells_not_processed =  1  *)
(* src = "sumador_synth.v:4" *)
module sumador_synth(clk, reset_L, idx, data_A, data_B, sum_30_dd_synth, idx_dd_synth);
  (* src = "sumador_synth.v:5" *)
  input clk;
  (* src = "sumador_synth.v:8" *)
  input [3:0] data_A;
  (* src = "sumador_synth.v:9" *)
  input [3:0] data_B;
  (* src = "sumador_synth.v:7" *)
  input [3:0] idx;
  (* src = "sumador_synth.v:11" *)
  output [3:0] idx_dd_synth;
  (* src = "sumador_synth.v:6" *)
  input reset_L;
  (* src = "sumador_synth.v:10" *)
  output [3:0] sum_30_dd_synth;
  (* module_not_derived = 32'd1 *)
  (* src = "sumador_synth.v:22" *)
  identificador_synth id1 (
    .clk(clk),
    .idx(idx),
    .idx_dd_synth(idx_dd_synth),
    .reset_L(reset_L)
  );
  (* module_not_derived = 32'd1 *)
  (* src = "sumador_synth.v:13" *)
  sum_pipe_synth sum_pipe_synth1 (
    .clk(clk),
    .data_A(data_A),
    .data_B(data_B),
    .reset_L(reset_L),
    .sum_30_dd_synth(sum_30_dd_synth)
  );
endmodule
