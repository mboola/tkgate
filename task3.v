//: version "1.8.7"

module FA(c_out, s, c_in, b, a);
//: interface  /sz:(85, 65) /bd:[ Ti0>a(19/85) Ti1>b(68/85) Ri0>c_in(33/65) Lo0<c_out(32/65) Bo0<s(43/85) ]
input b;    //: /sn:0 {0}(146,106)(188,106)(188,149){1}
//: {2}(190,151)(247,151){3}
//: {4}(188,153)(188,225){5}
//: {6}(190,227)(247,227){7}
//: {8}(188,229)(188,261)(247,261){9}
output c_out;    //: /sn:0 /dp:1 {0}(393,213)(423,213){1}
input c_in;    //: /sn:0 {0}(148,85)(206,85)(206,164){1}
//: {2}(208,166)(293,166)(293,154)(314,154){3}
//: {4}(206,168)(206,190){5}
//: {6}(208,192)(247,192){7}
//: {8}(206,194)(206,256)(247,256){9}
output s;    //: /sn:0 /dp:1 {0}(335,152)(423,152){1}
input a;    //: /sn:0 {0}(148,125)(171,125)(171,144){1}
//: {2}(173,146)(247,146){3}
//: {4}(171,148)(171,185){5}
//: {6}(173,187)(247,187){7}
//: {8}(171,189)(171,222)(247,222){9}
wire w7;    //: /sn:0 {0}(268,259)(362,259)(362,215)(372,215){1}
wire w4;    //: /sn:0 {0}(268,190)(305,190)(305,207)(315,207){1}
wire w0;    //: /sn:0 /dp:1 {0}(314,149)(268,149){1}
wire w8;    //: /sn:0 {0}(336,210)(372,210){1}
wire w5;    //: /sn:0 {0}(268,225)(305,225)(305,212)(315,212){1}
//: enddecls

  xor g8 (.I0(w0), .I1(c_in), .Z(s));   //: @(325,152) /sn:0 /delay:" 6" /w:[ 0 3 0 ]
  //: output g4 (c_out) @(420,213) /sn:0 /w:[ 1 ]
  or g16 (.I0(w4), .I1(w5), .Z(w8));   //: @(326,210) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  //: output g3 (s) @(420,152) /sn:0 /w:[ 1 ]
  or g17 (.I0(w8), .I1(w7), .Z(c_out));   //: @(383,213) /sn:0 /delay:" 5" /w:[ 1 1 0 ]
  //: input g2 (c_in) @(146,85) /sn:0 /w:[ 0 ]
  //: input g1 (b) @(144,106) /sn:0 /w:[ 0 ]
  and g10 (.I0(a), .I1(c_in), .Z(w4));   //: @(258,190) /sn:0 /delay:" 5" /w:[ 7 7 0 ]
  xor g6 (.I0(a), .I1(b), .Z(w0));   //: @(258,149) /sn:0 /delay:" 6" /w:[ 3 3 1 ]
  //: joint g7 (b) @(188, 151) /w:[ 2 1 -1 4 ]
  //: joint g9 (c_in) @(206, 166) /w:[ 2 1 -1 4 ]
  //: joint g12 (c_in) @(206, 192) /w:[ 6 5 -1 8 ]
  //: joint g14 (b) @(188, 227) /w:[ 6 5 -1 8 ]
  //: joint g11 (a) @(171, 187) /w:[ 6 5 -1 8 ]
  //: joint g5 (a) @(171, 146) /w:[ 2 1 -1 4 ]
  and g15 (.I0(c_in), .I1(b), .Z(w7));   //: @(258,259) /sn:0 /delay:" 5" /w:[ 9 9 0 ]
  //: input g0 (a) @(146,125) /sn:0 /w:[ 0 ]
  and g13 (.I0(a), .I1(b), .Z(w5));   //: @(258,225) /sn:0 /delay:" 5" /w:[ 9 7 0 ]

endmodule

module main;    //: root_module
wire w4;    //: /sn:0 {0}(281,308)(281,386)(385,386)(385,361){1}
wire w0;    //: /sn:0 {0}(320,151)(438,151)(438,328)(428,328){1}
wire w1;    //: /sn:0 {0}(316,247)(361,247)(361,294){1}
wire w2;    //: /sn:0 {0}(306,307)(306,327)(341,327){1}
wire w5;    //: /sn:0 {0}(317,203)(410,203)(410,294){1}
//: enddecls

  led g4 (.I(w2));   //: @(306,300) /sn:0 /w:[ 0 ] /type:0
  //: switch g3 (w0) @(303,151) /sn:0 /w:[ 0 ] /st:0
  //: switch g2 (w1) @(299,247) /sn:0 /w:[ 0 ] /st:0
  //: switch g1 (w5) @(300,203) /sn:0 /w:[ 0 ] /st:0
  led g5 (.I(w4));   //: @(281,301) /sn:0 /w:[ 0 ] /type:0
  FA g0 (.b(w5), .a(w1), .c_in(w0), .c_out(w2), .s(w4));   //: @(342, 295) /sz:(85, 65) /sn:0 /p:[ Ti0>1 Ti1>1 Ri0>1 Lo0<1 Bo0<1 ]

endmodule
