/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "calculadora.v:2" *)
module calculadora(clk, rst, a, b, MODO, c, rco);
  (* src = "calculadora.v:15" *)
  wire [3:0] _000_;
  (* src = "calculadora.v:15" *)
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
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
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  wire _145_;
  wire _146_;
  wire _147_;
  wire _148_;
  wire _149_;
  wire _150_;
  wire _151_;
  wire _152_;
  wire _153_;
  wire _154_;
  wire _155_;
  wire _156_;
  wire _157_;
  wire _158_;
  wire _159_;
  wire _160_;
  wire _161_;
  wire _162_;
  wire _163_;
  wire _164_;
  wire _165_;
  wire _166_;
  wire _167_;
  wire _168_;
  wire _169_;
  wire _170_;
  wire _171_;
  (* src = "calculadora.v:7" *)
  input [1:0] MODO;
  (* src = "calculadora.v:5" *)
  input [3:0] a;
  (* src = "calculadora.v:6" *)
  input [3:0] b;
  (* src = "calculadora.v:8" *)
  output [3:0] c;
  (* src = "calculadora.v:3" *)
  input clk;
  (* src = "calculadora.v:9" *)
  output rco;
  (* src = "calculadora.v:4" *)
  input rst;
  NOT _172_ (
    .A(a[0]),
    .Y(_097_)
  );
  NOT _173_ (
    .A(b[3]),
    .Y(_098_)
  );
  NOT _174_ (
    .A(b[0]),
    .Y(_099_)
  );
  NOT _175_ (
    .A(b[2]),
    .Y(_100_)
  );
  NOT _176_ (
    .A(a[3]),
    .Y(_101_)
  );
  NOT _177_ (
    .A(a[2]),
    .Y(_102_)
  );
  NOT _178_ (
    .A(a[1]),
    .Y(_103_)
  );
  NOT _179_ (
    .A(rst),
    .Y(_104_)
  );
  NOT _180_ (
    .A(MODO[1]),
    .Y(_105_)
  );
  NOR _181_ (
    .A(b[2]),
    .B(a[2]),
    .Y(_106_)
  );
  NOR _182_ (
    .A(_100_),
    .B(_102_),
    .Y(_107_)
  );
  NAND _183_ (
    .A(b[2]),
    .B(a[2]),
    .Y(_108_)
  );
  NOR _184_ (
    .A(_106_),
    .B(_107_),
    .Y(_109_)
  );
  NOR _185_ (
    .A(b[1]),
    .B(_103_),
    .Y(_110_)
  );
  NAND _186_ (
    .A(b[1]),
    .B(a[1]),
    .Y(_111_)
  );
  NOT _187_ (
    .A(_111_),
    .Y(_112_)
  );
  NOR _188_ (
    .A(b[1]),
    .B(a[1]),
    .Y(_113_)
  );
  NOR _189_ (
    .A(_112_),
    .B(_113_),
    .Y(_114_)
  );
  NOR _190_ (
    .A(_097_),
    .B(_099_),
    .Y(_115_)
  );
  NAND _191_ (
    .A(a[0]),
    .B(b[0]),
    .Y(_116_)
  );
  NOR _192_ (
    .A(a[0]),
    .B(b[0]),
    .Y(_117_)
  );
  NOR _193_ (
    .A(_115_),
    .B(_117_),
    .Y(_118_)
  );
  NOR _194_ (
    .A(a[0]),
    .B(_099_),
    .Y(_119_)
  );
  NOR _195_ (
    .A(_114_),
    .B(_119_),
    .Y(_120_)
  );
  NOR _196_ (
    .A(_110_),
    .B(_120_),
    .Y(_121_)
  );
  NAND _197_ (
    .A(_109_),
    .B(_121_),
    .Y(_122_)
  );
  NOR _198_ (
    .A(_109_),
    .B(_121_),
    .Y(_123_)
  );
  NAND _199_ (
    .A(MODO[0]),
    .B(_105_),
    .Y(_124_)
  );
  NOR _200_ (
    .A(_123_),
    .B(_124_),
    .Y(_125_)
  );
  NAND _201_ (
    .A(_122_),
    .B(_125_),
    .Y(_126_)
  );
  NAND _202_ (
    .A(_114_),
    .B(_115_),
    .Y(_127_)
  );
  NAND _203_ (
    .A(_111_),
    .B(_127_),
    .Y(_128_)
  );
  NAND _204_ (
    .A(_109_),
    .B(_128_),
    .Y(_129_)
  );
  NOR _205_ (
    .A(MODO[0]),
    .B(MODO[1]),
    .Y(_130_)
  );
  NOR _206_ (
    .A(_109_),
    .B(_128_),
    .Y(_131_)
  );
  NAND _207_ (
    .A(_129_),
    .B(_130_),
    .Y(_132_)
  );
  NOR _208_ (
    .A(_131_),
    .B(_132_),
    .Y(_133_)
  );
  NAND _209_ (
    .A(MODO[0]),
    .B(MODO[1]),
    .Y(_134_)
  );
  NOR _210_ (
    .A(_103_),
    .B(_134_),
    .Y(_135_)
  );
  NAND _211_ (
    .A(a[0]),
    .B(b[2]),
    .Y(_136_)
  );
  NOT _212_ (
    .A(_136_),
    .Y(_137_)
  );
  NAND _213_ (
    .A(b[0]),
    .B(a[2]),
    .Y(_138_)
  );
  NOR _214_ (
    .A(_108_),
    .B(_116_),
    .Y(_139_)
  );
  NAND _215_ (
    .A(_107_),
    .B(_115_),
    .Y(_140_)
  );
  NAND _216_ (
    .A(_136_),
    .B(_138_),
    .Y(_141_)
  );
  NAND _217_ (
    .A(_140_),
    .B(_141_),
    .Y(_142_)
  );
  NAND _218_ (
    .A(b[0]),
    .B(a[1]),
    .Y(_143_)
  );
  NAND _219_ (
    .A(a[0]),
    .B(b[1]),
    .Y(_144_)
  );
  NOR _220_ (
    .A(_111_),
    .B(_116_),
    .Y(_145_)
  );
  NAND _221_ (
    .A(_112_),
    .B(_116_),
    .Y(_146_)
  );
  NOR _222_ (
    .A(_142_),
    .B(_146_),
    .Y(_147_)
  );
  NOR _223_ (
    .A(MODO[0]),
    .B(_105_),
    .Y(_148_)
  );
  NAND _224_ (
    .A(_142_),
    .B(_146_),
    .Y(_149_)
  );
  NAND _225_ (
    .A(_148_),
    .B(_149_),
    .Y(_150_)
  );
  NOR _226_ (
    .A(_147_),
    .B(_150_),
    .Y(_151_)
  );
  NOR _227_ (
    .A(_135_),
    .B(_151_),
    .Y(_152_)
  );
  NAND _228_ (
    .A(_126_),
    .B(_152_),
    .Y(_153_)
  );
  NOR _229_ (
    .A(_133_),
    .B(_153_),
    .Y(_154_)
  );
  NOR _230_ (
    .A(rst),
    .B(_154_),
    .Y(_000_[2])
  );
  NAND _231_ (
    .A(_114_),
    .B(_119_),
    .Y(_155_)
  );
  NOR _232_ (
    .A(_120_),
    .B(_124_),
    .Y(_156_)
  );
  NAND _233_ (
    .A(_155_),
    .B(_156_),
    .Y(_157_)
  );
  NOR _234_ (
    .A(_114_),
    .B(_115_),
    .Y(_158_)
  );
  NAND _235_ (
    .A(_127_),
    .B(_130_),
    .Y(_159_)
  );
  NOR _236_ (
    .A(_158_),
    .B(_159_),
    .Y(_160_)
  );
  NOR _237_ (
    .A(_097_),
    .B(_134_),
    .Y(_161_)
  );
  NAND _238_ (
    .A(_143_),
    .B(_144_),
    .Y(_162_)
  );
  NAND _239_ (
    .A(_148_),
    .B(_162_),
    .Y(_163_)
  );
  NOR _240_ (
    .A(_145_),
    .B(_163_),
    .Y(_164_)
  );
  NOR _241_ (
    .A(_161_),
    .B(_164_),
    .Y(_165_)
  );
  NAND _242_ (
    .A(_157_),
    .B(_165_),
    .Y(_166_)
  );
  NOR _243_ (
    .A(_160_),
    .B(_166_),
    .Y(_167_)
  );
  NOR _244_ (
    .A(rst),
    .B(_167_),
    .Y(_000_[1])
  );
  NOR _245_ (
    .A(_118_),
    .B(_148_),
    .Y(_168_)
  );
  NAND _246_ (
    .A(MODO[1]),
    .B(_116_),
    .Y(_169_)
  );
  NAND _247_ (
    .A(_104_),
    .B(_169_),
    .Y(_170_)
  );
  NOR _248_ (
    .A(_168_),
    .B(_170_),
    .Y(_000_[0])
  );
  NAND _249_ (
    .A(b[1]),
    .B(a[2]),
    .Y(_171_)
  );
  NOT _250_ (
    .A(_171_),
    .Y(_002_)
  );
  NAND _251_ (
    .A(b[0]),
    .B(a[3]),
    .Y(_003_)
  );
  NOT _252_ (
    .A(_003_),
    .Y(_004_)
  );
  NAND _253_ (
    .A(b[2]),
    .B(a[1]),
    .Y(_005_)
  );
  NAND _254_ (
    .A(a[0]),
    .B(b[3]),
    .Y(_006_)
  );
  NOR _255_ (
    .A(_098_),
    .B(_103_),
    .Y(_007_)
  );
  NAND _256_ (
    .A(b[3]),
    .B(a[1]),
    .Y(_008_)
  );
  NOR _257_ (
    .A(_136_),
    .B(_008_),
    .Y(_009_)
  );
  NAND _258_ (
    .A(_137_),
    .B(_007_),
    .Y(_010_)
  );
  NAND _259_ (
    .A(_005_),
    .B(_006_),
    .Y(_011_)
  );
  NOT _260_ (
    .A(_011_),
    .Y(_012_)
  );
  NOR _261_ (
    .A(_009_),
    .B(_012_),
    .Y(_013_)
  );
  NAND _262_ (
    .A(_010_),
    .B(_011_),
    .Y(_014_)
  );
  NOR _263_ (
    .A(_003_),
    .B(_014_),
    .Y(_015_)
  );
  NAND _264_ (
    .A(_004_),
    .B(_013_),
    .Y(_016_)
  );
  NOR _265_ (
    .A(_004_),
    .B(_013_),
    .Y(_017_)
  );
  NAND _266_ (
    .A(_003_),
    .B(_014_),
    .Y(_018_)
  );
  NOR _267_ (
    .A(_015_),
    .B(_017_),
    .Y(_019_)
  );
  NAND _268_ (
    .A(_016_),
    .B(_018_),
    .Y(_020_)
  );
  NOR _269_ (
    .A(_140_),
    .B(_020_),
    .Y(_021_)
  );
  NAND _270_ (
    .A(_139_),
    .B(_019_),
    .Y(_022_)
  );
  NOR _271_ (
    .A(_139_),
    .B(_019_),
    .Y(_023_)
  );
  NAND _272_ (
    .A(_140_),
    .B(_020_),
    .Y(_024_)
  );
  NOR _273_ (
    .A(_021_),
    .B(_023_),
    .Y(_025_)
  );
  NAND _274_ (
    .A(_022_),
    .B(_024_),
    .Y(_026_)
  );
  NOR _275_ (
    .A(_171_),
    .B(_026_),
    .Y(_027_)
  );
  NAND _276_ (
    .A(_002_),
    .B(_025_),
    .Y(_028_)
  );
  NAND _277_ (
    .A(_171_),
    .B(_026_),
    .Y(_029_)
  );
  NAND _278_ (
    .A(_028_),
    .B(_029_),
    .Y(_030_)
  );
  NOR _279_ (
    .A(_115_),
    .B(_141_),
    .Y(_031_)
  );
  NOR _280_ (
    .A(_111_),
    .B(_031_),
    .Y(_032_)
  );
  NOT _281_ (
    .A(_032_),
    .Y(_033_)
  );
  NOR _282_ (
    .A(_030_),
    .B(_033_),
    .Y(_034_)
  );
  NOR _283_ (
    .A(_021_),
    .B(_027_),
    .Y(_035_)
  );
  NAND _284_ (
    .A(_022_),
    .B(_028_),
    .Y(_036_)
  );
  NOR _285_ (
    .A(_009_),
    .B(_015_),
    .Y(_037_)
  );
  NAND _286_ (
    .A(_010_),
    .B(_016_),
    .Y(_038_)
  );
  NAND _287_ (
    .A(b[1]),
    .B(a[3]),
    .Y(_039_)
  );
  NOT _288_ (
    .A(_039_),
    .Y(_040_)
  );
  NOR _289_ (
    .A(_107_),
    .B(_008_),
    .Y(_041_)
  );
  NAND _290_ (
    .A(_108_),
    .B(_007_),
    .Y(_042_)
  );
  NOR _291_ (
    .A(_108_),
    .B(_007_),
    .Y(_043_)
  );
  NAND _292_ (
    .A(_107_),
    .B(_008_),
    .Y(_044_)
  );
  NOR _293_ (
    .A(_041_),
    .B(_043_),
    .Y(_045_)
  );
  NAND _294_ (
    .A(_042_),
    .B(_044_),
    .Y(_046_)
  );
  NOR _295_ (
    .A(_039_),
    .B(_046_),
    .Y(_047_)
  );
  NAND _296_ (
    .A(_040_),
    .B(_045_),
    .Y(_048_)
  );
  NOR _297_ (
    .A(_040_),
    .B(_045_),
    .Y(_049_)
  );
  NAND _298_ (
    .A(_039_),
    .B(_046_),
    .Y(_050_)
  );
  NOR _299_ (
    .A(_047_),
    .B(_049_),
    .Y(_051_)
  );
  NAND _300_ (
    .A(_048_),
    .B(_050_),
    .Y(_052_)
  );
  NOR _301_ (
    .A(_037_),
    .B(_052_),
    .Y(_053_)
  );
  NAND _302_ (
    .A(_038_),
    .B(_051_),
    .Y(_054_)
  );
  NOR _303_ (
    .A(_038_),
    .B(_051_),
    .Y(_055_)
  );
  NAND _304_ (
    .A(_037_),
    .B(_052_),
    .Y(_056_)
  );
  NOR _305_ (
    .A(_053_),
    .B(_055_),
    .Y(_057_)
  );
  NAND _306_ (
    .A(_054_),
    .B(_056_),
    .Y(_058_)
  );
  NOR _307_ (
    .A(_036_),
    .B(_058_),
    .Y(_059_)
  );
  NOR _308_ (
    .A(_035_),
    .B(_057_),
    .Y(_060_)
  );
  NOR _309_ (
    .A(_059_),
    .B(_060_),
    .Y(_061_)
  );
  NOR _310_ (
    .A(_034_),
    .B(_061_),
    .Y(_062_)
  );
  NAND _311_ (
    .A(_034_),
    .B(_061_),
    .Y(_063_)
  );
  NAND _312_ (
    .A(_148_),
    .B(_063_),
    .Y(_064_)
  );
  NOR _313_ (
    .A(_062_),
    .B(_064_),
    .Y(_065_)
  );
  NOR _314_ (
    .A(b[3]),
    .B(_101_),
    .Y(_066_)
  );
  NAND _315_ (
    .A(b[3]),
    .B(a[3]),
    .Y(_067_)
  );
  NOT _316_ (
    .A(_067_),
    .Y(_068_)
  );
  NOR _317_ (
    .A(b[3]),
    .B(a[3]),
    .Y(_069_)
  );
  NOR _318_ (
    .A(_068_),
    .B(_069_),
    .Y(_070_)
  );
  NOR _319_ (
    .A(b[2]),
    .B(_102_),
    .Y(_071_)
  );
  NOR _320_ (
    .A(_123_),
    .B(_071_),
    .Y(_072_)
  );
  NOR _321_ (
    .A(_070_),
    .B(_072_),
    .Y(_073_)
  );
  NOR _322_ (
    .A(_124_),
    .B(_073_),
    .Y(_074_)
  );
  NOT _323_ (
    .A(_074_),
    .Y(_075_)
  );
  NOR _324_ (
    .A(_066_),
    .B(_075_),
    .Y(_076_)
  );
  NAND _325_ (
    .A(_108_),
    .B(_129_),
    .Y(_077_)
  );
  NAND _326_ (
    .A(_070_),
    .B(_077_),
    .Y(_078_)
  );
  NAND _327_ (
    .A(_067_),
    .B(_078_),
    .Y(_079_)
  );
  NAND _328_ (
    .A(_130_),
    .B(_079_),
    .Y(_080_)
  );
  NOR _329_ (
    .A(_101_),
    .B(_134_),
    .Y(_081_)
  );
  NOR _330_ (
    .A(_076_),
    .B(_081_),
    .Y(_082_)
  );
  NAND _331_ (
    .A(_080_),
    .B(_082_),
    .Y(_083_)
  );
  NOR _332_ (
    .A(_065_),
    .B(_083_),
    .Y(_084_)
  );
  NOR _333_ (
    .A(rst),
    .B(_084_),
    .Y(_001_)
  );
  NAND _334_ (
    .A(_030_),
    .B(_033_),
    .Y(_085_)
  );
  NAND _335_ (
    .A(_148_),
    .B(_085_),
    .Y(_086_)
  );
  NOR _336_ (
    .A(_034_),
    .B(_086_),
    .Y(_087_)
  );
  NAND _337_ (
    .A(_070_),
    .B(_072_),
    .Y(_088_)
  );
  NAND _338_ (
    .A(_074_),
    .B(_088_),
    .Y(_089_)
  );
  NOR _339_ (
    .A(_070_),
    .B(_077_),
    .Y(_090_)
  );
  NAND _340_ (
    .A(_130_),
    .B(_078_),
    .Y(_091_)
  );
  NOR _341_ (
    .A(_090_),
    .B(_091_),
    .Y(_092_)
  );
  NOR _342_ (
    .A(_102_),
    .B(_134_),
    .Y(_093_)
  );
  NOR _343_ (
    .A(_092_),
    .B(_093_),
    .Y(_094_)
  );
  NAND _344_ (
    .A(_089_),
    .B(_094_),
    .Y(_095_)
  );
  NOR _345_ (
    .A(_087_),
    .B(_095_),
    .Y(_096_)
  );
  NOR _346_ (
    .A(rst),
    .B(_096_),
    .Y(_000_[3])
  );
  (* src = "calculadora.v:15" *)
  DFF _347_ (
    .C(clk),
    .D(_000_[0]),
    .Q(c[0])
  );
  (* src = "calculadora.v:15" *)
  DFF _348_ (
    .C(clk),
    .D(_000_[1]),
    .Q(c[1])
  );
  (* src = "calculadora.v:15" *)
  DFF _349_ (
    .C(clk),
    .D(_000_[2]),
    .Q(c[2])
  );
  (* src = "calculadora.v:15" *)
  DFF _350_ (
    .C(clk),
    .D(_000_[3]),
    .Q(c[3])
  );
  (* src = "calculadora.v:15" *)
  DFF _351_ (
    .C(clk),
    .D(_001_),
    .Q(rco)
  );
endmodule
