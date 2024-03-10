//: version "1.8.7"

module CPA(c_out, s, c_in, b, a);
//: interface  /sz:(90, 79) /bd:[ Ti0>b[3:0](67/90) Ti1>a[3:0](24/90) Ri0>c_in(40/79) Lo0<c_out(41/79) Bo0<s[3:0](46/90) ]
input [3:0] b;    //: /sn:0 {0}(507,173)(428,173){1}
//: {2}(427,173)(342,173){3}
//: {4}(341,173)(257,173){5}
//: {6}(256,173)(170,173){7}
//: {8}(169,173)(157,173){9}
output c_out;    //: /sn:0 /dp:1 {0}(148,269)(53,269){1}
input c_in;    //: /sn:0 {0}(507,212)(476,212)(476,269)(465,269){1}
output [3:0] s;    //: /sn:0 /dp:1 {0}(100,323)(85,323)(85,287)(52,287){1}
input [3:0] a;    //: /sn:0 {0}(507,191)(448,191){1}
//: {2}(447,191)(362,191){3}
//: {4}(361,191)(277,191){5}
//: {6}(276,191)(190,191){7}
//: {8}(189,191)(157,191){9}
wire w6;    //: /sn:0 {0}(342,249)(342,177){1}
wire w16;    //: /sn:0 {0}(170,249)(170,177){1}
wire w4;    //: /sn:0 {0}(436,291)(436,308)(106,308){1}
wire w0;    //: /sn:0 {0}(448,249)(448,195){1}
wire w3;    //: /sn:0 {0}(406,269)(379,269){1}
wire w12;    //: /sn:0 {0}(294,269)(320,269){1}
wire w19;    //: /sn:0 {0}(178,291)(178,338)(106,338){1}
wire w10;    //: /sn:0 {0}(277,249)(277,195){1}
wire w1;    //: /sn:0 {0}(428,249)(428,177){1}
wire w17;    //: /sn:0 {0}(207,269)(235,269){1}
wire w14;    //: /sn:0 {0}(265,291)(265,328)(106,328){1}
wire w11;    //: /sn:0 {0}(257,249)(257,177){1}
wire w15;    //: /sn:0 {0}(190,249)(190,195){1}
wire w5;    //: /sn:0 {0}(362,249)(362,195){1}
wire w9;    //: /sn:0 {0}(350,291)(350,318)(106,318){1}
//: enddecls

  //: output g4 (c_out) @(56,269) /sn:0 /R:2 /w:[ 1 ]
  FA g8 (.b(w16), .a(w15), .c_in(w17), .c_out(c_out), .s(w19));   //: @(149, 250) /sz:(57, 40) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<0 Bo0<0 ]
  //: output g3 (s) @(55,287) /sn:0 /R:2 /w:[ 1 ]
  tran g16(.Z(w11), .I(b[2]));   //: @(257,171) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  tran g17(.Z(w16), .I(b[3]));   //: @(170,171) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1
  //: input g2 (c_in) @(509,212) /sn:0 /R:2 /w:[ 0 ]
  //: input g1 (b) @(509,173) /sn:0 /R:2 /w:[ 0 ]
  tran g10(.Z(w0), .I(a[0]));   //: @(448,189) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  FA g6 (.b(w6), .a(w5), .c_in(w3), .c_out(w12), .s(w9));   //: @(321, 250) /sz:(57, 40) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<1 Bo0<0 ]
  FA g7 (.b(w11), .a(w10), .c_in(w12), .c_out(w17), .s(w14));   //: @(236, 250) /sz:(57, 40) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>0 Lo0<1 Bo0<0 ]
  concat g9 (.I0(w4), .I1(w9), .I2(w14), .I3(w19), .Z(s));   //: @(101,323) /sn:0 /R:2 /w:[ 1 1 1 1 0 ] /dr:0
  tran g12(.Z(w10), .I(a[2]));   //: @(277,189) /sn:0 /R:1 /w:[ 1 6 5 ] /ss:1
  FA g5 (.b(w1), .a(w0), .c_in(c_in), .c_out(w3), .s(w4));   //: @(407, 250) /sz:(57, 40) /sn:0 /p:[ Ti0>0 Ti1>0 Ri0>1 Lo0<0 Bo0<0 ]
  tran g11(.Z(w5), .I(a[1]));   //: @(362,189) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  tran g14(.Z(w1), .I(b[0]));   //: @(428,171) /sn:0 /R:1 /w:[ 1 2 1 ] /ss:1
  //: input g0 (a) @(509,191) /sn:0 /R:2 /w:[ 0 ]
  tran g15(.Z(w6), .I(b[1]));   //: @(342,171) /sn:0 /R:1 /w:[ 1 4 3 ] /ss:1
  tran g13(.Z(w15), .I(a[3]));   //: @(190,189) /sn:0 /R:1 /w:[ 1 8 7 ] /ss:1

endmodule

module main;    //: root_module
wire w4;    //: /sn:0 {0}(260,255)(230,255)(230,239){1}
wire [3:0] w3;    //: /sn:0 /dp:1 {0}(150,255)(150,338)(307,338)(307,294){1}
wire [3:0] w0;    //: /sn:0 /dp:1 {0}(285,213)(285,185)(198,185)(198,95){1}
wire w1;    //: /sn:0 {0}(389,85)(410,85)(410,254)(352,254){1}
wire [3:0] w5;    //: /sn:0 {0}(292,95)(292,153)(328,153)(328,213){1}
//: enddecls

  led g4 (.I(w4));   //: @(230,232) /sn:0 /w:[ 1 ] /type:0
  //: switch g3 (w1) @(372,85) /sn:0 /w:[ 0 ] /st:0
  //: dip g2 (w0) @(198,85) /sn:0 /w:[ 1 ] /st:7
  //: dip g1 (w5) @(292,85) /sn:0 /w:[ 0 ] /st:7
  led g5 (.I(w3));   //: @(150,248) /sn:0 /w:[ 0 ] /type:3
  CPA g0 (.b(w5), .a(w0), .c_in(w1), .c_out(w4), .s(w3));   //: @(261, 214) /sz:(90, 79) /sn:0 /p:[ Ti0>1 Ti1>0 Ri0>1 Lo0<0 Bo0<1 ]

endmodule

module FA(c_out, s, c_in, b, a);
//: interface  /sz:(57, 40) /bd:[ Ti0>a(41/57) Ti1>b(21/57) Ri0>c_in(19/40) Lo0<c_out(19/40) Bo0<s(29/57) ]
input b;    //: /sn:0 {0}(193,35)(193,98){1}
//: {2}(195,100)(233,100){3}
//: {4}(193,102)(193,162)(300,162){5}
output c_out;    //: /sn:0 /dp:1 {0}(372,145)(398,145){1}
input c_in;    //: /sn:0 /dp:1 {0}(209,35)(209,116){1}
//: {2}(211,118)(282,118)(282,103)(299,103){3}
//: {4}(209,120)(209,144)(300,144){5}
output s;    //: /sn:0 /dp:1 {0}(320,101)(398,101){1}
input a;    //: /sn:0 {0}(177,35)(177,93){1}
//: {2}(179,95)(233,95){3}
//: {4}(177,97)(177,167)(300,167){5}
wire w14;    //: /sn:0 {0}(321,165)(334,165)(334,147)(351,147){1}
wire w2;    //: /sn:0 {0}(254,98)(265,98){1}
//: {2}(269,98)(299,98){3}
//: {4}(267,100)(267,139)(300,139){5}
wire w11;    //: /sn:0 {0}(321,142)(351,142){1}
//: enddecls

  //: output g4 (c_out) @(395,145) /sn:0 /w:[ 1 ]
  and g8 (.I0(w2), .I1(c_in), .Z(w11));   //: @(311,142) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: output g3 (s) @(395,101) /sn:0 /w:[ 1 ]
  //: input g2 (c_in) @(209,33) /sn:0 /R:3 /w:[ 0 ]
  //: input g1 (b) @(193,33) /sn:0 /R:3 /w:[ 0 ]
  //: joint g10 (a) @(177, 95) /w:[ 2 1 -1 4 ]
  xor g6 (.I0(w2), .I1(c_in), .Z(s));   //: @(310,101) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  or g7 (.I0(w11), .I1(w14), .Z(c_out));   //: @(362,145) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  and g9 (.I0(b), .I1(a), .Z(w14));   //: @(311,165) /sn:0 /delay:" 5" /w:[ 5 5 0 ]
  //: joint g12 (b) @(193, 100) /w:[ 2 1 -1 4 ]
  //: joint g11 (w2) @(267, 98) /w:[ 2 -1 1 4 ]
  xor g5 (.I0(a), .I1(b), .Z(w2));   //: @(244,98) /sn:0 /delay:" 6" /w:[ 3 3 0 ]
  //: input g0 (a) @(177,33) /sn:0 /R:3 /w:[ 0 ]
  //: joint g13 (c_in) @(209, 118) /w:[ 2 1 -1 4 ]

endmodule
