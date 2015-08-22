unit x64.evex_wig1;

// This unit was generated by d2p.pl script.
// Source : gas/x86-64-evex-wig1-intel.d

interface

uses
  uTestCase,
  UnivDisasm.Cnsts;

procedure Test();

implementation

procedure Test();
var
  TestCase:TTestCase;
begin
  TestCase := TTestCase.Create('x64.evex_wig1');
  TestCase.Start();	
  TestCase.Arch := CPUX64;

  TestCase.testcase(0, [$62,$63,$FD,$08,$17,$E8,$AB                       ] , 'vextractps  rax,xmm29,0xab'                       );
  TestCase.testcase(1, [$62,$63,$FD,$08,$17,$E8,$7B                       ] , 'vextractps  rax,xmm29,0x7b'                       );
  TestCase.testcase(2, [$62,$43,$FD,$08,$17,$E8,$7B                       ] , 'vextractps  r8,xmm29,0x7b'                        );
  TestCase.testcase(3, [$62,$63,$FD,$08,$17,$29,$7B                       ] , 'vextractps  dword [rcx],xmm29,0x7b'               );
  TestCase.testcase(4, [$62,$23,$FD,$08,$17,$AC,$F0,$23,$01,$00,$00,$7B   ] , 'vextractps  dword [rax+r14*8+0x123],xmm29,0x7b'   );
  TestCase.testcase(5, [$62,$63,$FD,$08,$17,$6A,$7F,$7B                   ] , 'vextractps  dword [rdx+0x1fc],xmm29,0x7b'         );
  TestCase.testcase(6, [$62,$63,$FD,$08,$17,$AA,$00,$02,$00,$00,$7B       ] , 'vextractps  dword [rdx+0x200],xmm29,0x7b'         );
  TestCase.testcase(7, [$62,$63,$FD,$08,$17,$6A,$80,$7B                   ] , 'vextractps  dword [rdx-0x200],xmm29,0x7b'         );
  TestCase.testcase(8, [$62,$63,$FD,$08,$17,$AA,$FC,$FD,$FF,$FF,$7B       ] , 'vextractps  dword [rdx-0x204],xmm29,0x7b'         );
  TestCase.testcase(9, [$62,$02,$FD,$4F,$21,$F5                           ] , 'vpmovsxbd  zmm30{k7},xmm29'                       );
  TestCase.testcase(10, [$62,$02,$FD,$CF,$21,$F5                           ] , 'vpmovsxbd  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(11, [$62,$62,$FD,$4F,$21,$31                           ] , 'vpmovsxbd  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(12, [$62,$22,$FD,$4F,$21,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovsxbd  zmm30{k7},oword [rax+r14*8+0x123]'     );
  TestCase.testcase(13, [$62,$62,$FD,$4F,$21,$72,$7F                       ] , 'vpmovsxbd  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(14, [$62,$62,$FD,$4F,$21,$B2,$00,$08,$00,$00           ] , 'vpmovsxbd  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(15, [$62,$62,$FD,$4F,$21,$72,$80                       ] , 'vpmovsxbd  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(16, [$62,$62,$FD,$4F,$21,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovsxbd  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(17, [$62,$02,$FD,$4F,$22,$F5                           ] , 'vpmovsxbq  zmm30{k7},xmm29'                       );
  TestCase.testcase(18, [$62,$02,$FD,$CF,$22,$F5                           ] , 'vpmovsxbq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(19, [$62,$62,$FD,$4F,$22,$31                           ] , 'vpmovsxbq  zmm30{k7},qword [rcx]'                 );
  TestCase.testcase(20, [$62,$22,$FD,$4F,$22,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovsxbq  zmm30{k7},qword [rax+r14*8+0x123]'     );
  TestCase.testcase(21, [$62,$62,$FD,$4F,$22,$72,$7F                       ] , 'vpmovsxbq  zmm30{k7},qword [rdx+0x3f8]'           );
  TestCase.testcase(22, [$62,$62,$FD,$4F,$22,$B2,$00,$04,$00,$00           ] , 'vpmovsxbq  zmm30{k7},qword [rdx+0x400]'           );
  TestCase.testcase(23, [$62,$62,$FD,$4F,$22,$72,$80                       ] , 'vpmovsxbq  zmm30{k7},qword [rdx-0x400]'           );
  TestCase.testcase(24, [$62,$62,$FD,$4F,$22,$B2,$F8,$FB,$FF,$FF           ] , 'vpmovsxbq  zmm30{k7},qword [rdx-0x408]'           );
  TestCase.testcase(25, [$62,$02,$FD,$4F,$23,$F5                           ] , 'vpmovsxwd  zmm30{k7},ymm29'                       );
  TestCase.testcase(26, [$62,$02,$FD,$CF,$23,$F5                           ] , 'vpmovsxwd  zmm30{k7}{z},ymm29'                    );
  TestCase.testcase(27, [$62,$62,$FD,$4F,$23,$31                           ] , 'vpmovsxwd  zmm30{k7},yword [rcx]'                 );
  TestCase.testcase(28, [$62,$22,$FD,$4F,$23,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovsxwd  zmm30{k7},yword [rax+r14*8+0x123]'     );
  TestCase.testcase(29, [$62,$62,$FD,$4F,$23,$72,$7F                       ] , 'vpmovsxwd  zmm30{k7},yword [rdx+0xfe0]'           );
  TestCase.testcase(30, [$62,$62,$FD,$4F,$23,$B2,$00,$10,$00,$00           ] , 'vpmovsxwd  zmm30{k7},yword [rdx+0x1000]'          );
  TestCase.testcase(31, [$62,$62,$FD,$4F,$23,$72,$80                       ] , 'vpmovsxwd  zmm30{k7},yword [rdx-0x1000]'          );
  TestCase.testcase(32, [$62,$62,$FD,$4F,$23,$B2,$E0,$EF,$FF,$FF           ] , 'vpmovsxwd  zmm30{k7},yword [rdx-0x1020]'          );
  TestCase.testcase(33, [$62,$02,$FD,$4F,$24,$F5                           ] , 'vpmovsxwq  zmm30{k7},xmm29'                       );
  TestCase.testcase(34, [$62,$02,$FD,$CF,$24,$F5                           ] , 'vpmovsxwq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(35, [$62,$62,$FD,$4F,$24,$31                           ] , 'vpmovsxwq  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(36, [$62,$22,$FD,$4F,$24,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovsxwq  zmm30{k7},oword [rax+r14*8+0x123]'     );
  TestCase.testcase(37, [$62,$62,$FD,$4F,$24,$72,$7F                       ] , 'vpmovsxwq  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(38, [$62,$62,$FD,$4F,$24,$B2,$00,$08,$00,$00           ] , 'vpmovsxwq  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(39, [$62,$62,$FD,$4F,$24,$72,$80                       ] , 'vpmovsxwq  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(40, [$62,$62,$FD,$4F,$24,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovsxwq  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(41, [$62,$02,$FD,$4F,$31,$F5                           ] , 'vpmovzxbd  zmm30{k7},xmm29'                       );
  TestCase.testcase(42, [$62,$02,$FD,$CF,$31,$F5                           ] , 'vpmovzxbd  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(43, [$62,$62,$FD,$4F,$31,$31                           ] , 'vpmovzxbd  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(44, [$62,$22,$FD,$4F,$31,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovzxbd  zmm30{k7},oword [rax+r14*8+0x123]'     );
  TestCase.testcase(45, [$62,$62,$FD,$4F,$31,$72,$7F                       ] , 'vpmovzxbd  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(46, [$62,$62,$FD,$4F,$31,$B2,$00,$08,$00,$00           ] , 'vpmovzxbd  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(47, [$62,$62,$FD,$4F,$31,$72,$80                       ] , 'vpmovzxbd  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(48, [$62,$62,$FD,$4F,$31,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovzxbd  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(49, [$62,$02,$FD,$4F,$32,$F5                           ] , 'vpmovzxbq  zmm30{k7},xmm29'                       );
  TestCase.testcase(50, [$62,$02,$FD,$CF,$32,$F5                           ] , 'vpmovzxbq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(51, [$62,$62,$FD,$4F,$32,$31                           ] , 'vpmovzxbq  zmm30{k7},qword [rcx]'                 );
  TestCase.testcase(52, [$62,$22,$FD,$4F,$32,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovzxbq  zmm30{k7},qword [rax+r14*8+0x123]'     );
  TestCase.testcase(53, [$62,$62,$FD,$4F,$32,$72,$7F                       ] , 'vpmovzxbq  zmm30{k7},qword [rdx+0x3f8]'           );
  TestCase.testcase(54, [$62,$62,$FD,$4F,$32,$B2,$00,$04,$00,$00           ] , 'vpmovzxbq  zmm30{k7},qword [rdx+0x400]'           );
  TestCase.testcase(55, [$62,$62,$FD,$4F,$32,$72,$80                       ] , 'vpmovzxbq  zmm30{k7},qword [rdx-0x400]'           );
  TestCase.testcase(56, [$62,$62,$FD,$4F,$32,$B2,$F8,$FB,$FF,$FF           ] , 'vpmovzxbq  zmm30{k7},qword [rdx-0x408]'           );
  TestCase.testcase(57, [$62,$02,$FD,$4F,$33,$F5                           ] , 'vpmovzxwd  zmm30{k7},ymm29'                       );
  TestCase.testcase(58, [$62,$02,$FD,$CF,$33,$F5                           ] , 'vpmovzxwd  zmm30{k7}{z},ymm29'                    );
  TestCase.testcase(59, [$62,$62,$FD,$4F,$33,$31                           ] , 'vpmovzxwd  zmm30{k7},yword [rcx]'                 );
  TestCase.testcase(60, [$62,$22,$FD,$4F,$33,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovzxwd  zmm30{k7},yword [rax+r14*8+0x123]'     );
  TestCase.testcase(61, [$62,$62,$FD,$4F,$33,$72,$7F                       ] , 'vpmovzxwd  zmm30{k7},yword [rdx+0xfe0]'           );
  TestCase.testcase(62, [$62,$62,$FD,$4F,$33,$B2,$00,$10,$00,$00           ] , 'vpmovzxwd  zmm30{k7},yword [rdx+0x1000]'          );
  TestCase.testcase(63, [$62,$62,$FD,$4F,$33,$72,$80                       ] , 'vpmovzxwd  zmm30{k7},yword [rdx-0x1000]'          );
  TestCase.testcase(64, [$62,$62,$FD,$4F,$33,$B2,$E0,$EF,$FF,$FF           ] , 'vpmovzxwd  zmm30{k7},yword [rdx-0x1020]'          );
  TestCase.testcase(65, [$62,$02,$FD,$4F,$34,$F5                           ] , 'vpmovzxwq  zmm30{k7},xmm29'                       );
  TestCase.testcase(66, [$62,$02,$FD,$CF,$34,$F5                           ] , 'vpmovzxwq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(67, [$62,$62,$FD,$4F,$34,$31                           ] , 'vpmovzxwq  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(68, [$62,$22,$FD,$4F,$34,$B4,$F0,$23,$01,$00,$00       ] , 'vpmovzxwq  zmm30{k7},oword [rax+r14*8+0x123]'     );
  TestCase.testcase(69, [$62,$62,$FD,$4F,$34,$72,$7F                       ] , 'vpmovzxwq  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(70, [$62,$62,$FD,$4F,$34,$B2,$00,$08,$00,$00           ] , 'vpmovzxwq  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(71, [$62,$62,$FD,$4F,$34,$72,$80                       ] , 'vpmovzxwq  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(72, [$62,$62,$FD,$4F,$34,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovzxwq  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(73, [$62,$63,$FD,$08,$17,$E8,$AB                       ] , 'vextractps  rax,xmm29,0xab'                       );
  TestCase.testcase(74, [$62,$63,$FD,$08,$17,$E8,$7B                       ] , 'vextractps  rax,xmm29,0x7b'                       );
  TestCase.testcase(75, [$62,$43,$FD,$08,$17,$E8,$7B                       ] , 'vextractps  r8,xmm29,0x7b'                        );
  TestCase.testcase(76, [$62,$63,$FD,$08,$17,$29,$7B                       ] , 'vextractps  dword [rcx],xmm29,0x7b'               );
  TestCase.testcase(77, [$62,$23,$FD,$08,$17,$AC,$F0,$34,$12,$00,$00,$7B   ] , 'vextractps  dword [rax+r14*8+0x1234],xmm29,0x7b'  );
  TestCase.testcase(78, [$62,$63,$FD,$08,$17,$6A,$7F,$7B                   ] , 'vextractps  dword [rdx+0x1fc],xmm29,0x7b'         );
  TestCase.testcase(79, [$62,$63,$FD,$08,$17,$AA,$00,$02,$00,$00,$7B       ] , 'vextractps  dword [rdx+0x200],xmm29,0x7b'         );
  TestCase.testcase(80, [$62,$63,$FD,$08,$17,$6A,$80,$7B                   ] , 'vextractps  dword [rdx-0x200],xmm29,0x7b'         );
  TestCase.testcase(81, [$62,$63,$FD,$08,$17,$AA,$FC,$FD,$FF,$FF,$7B       ] , 'vextractps  dword [rdx-0x204],xmm29,0x7b'         );
  TestCase.testcase(82, [$62,$02,$FD,$4F,$21,$F5                           ] , 'vpmovsxbd  zmm30{k7},xmm29'                       );
  TestCase.testcase(83, [$62,$02,$FD,$CF,$21,$F5                           ] , 'vpmovsxbd  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(84, [$62,$62,$FD,$4F,$21,$31                           ] , 'vpmovsxbd  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(85, [$62,$22,$FD,$4F,$21,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovsxbd  zmm30{k7},oword [rax+r14*8+0x1234]'    );
  TestCase.testcase(86, [$62,$62,$FD,$4F,$21,$72,$7F                       ] , 'vpmovsxbd  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(87, [$62,$62,$FD,$4F,$21,$B2,$00,$08,$00,$00           ] , 'vpmovsxbd  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(88, [$62,$62,$FD,$4F,$21,$72,$80                       ] , 'vpmovsxbd  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(89, [$62,$62,$FD,$4F,$21,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovsxbd  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(90, [$62,$02,$FD,$4F,$22,$F5                           ] , 'vpmovsxbq  zmm30{k7},xmm29'                       );
  TestCase.testcase(91, [$62,$02,$FD,$CF,$22,$F5                           ] , 'vpmovsxbq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(92, [$62,$62,$FD,$4F,$22,$31                           ] , 'vpmovsxbq  zmm30{k7},qword [rcx]'                 );
  TestCase.testcase(93, [$62,$22,$FD,$4F,$22,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovsxbq  zmm30{k7},qword [rax+r14*8+0x1234]'    );
  TestCase.testcase(94, [$62,$62,$FD,$4F,$22,$72,$7F                       ] , 'vpmovsxbq  zmm30{k7},qword [rdx+0x3f8]'           );
  TestCase.testcase(95, [$62,$62,$FD,$4F,$22,$B2,$00,$04,$00,$00           ] , 'vpmovsxbq  zmm30{k7},qword [rdx+0x400]'           );
  TestCase.testcase(96, [$62,$62,$FD,$4F,$22,$72,$80                       ] , 'vpmovsxbq  zmm30{k7},qword [rdx-0x400]'           );
  TestCase.testcase(97, [$62,$62,$FD,$4F,$22,$B2,$F8,$FB,$FF,$FF           ] , 'vpmovsxbq  zmm30{k7},qword [rdx-0x408]'           );
  TestCase.testcase(98, [$62,$02,$FD,$4F,$23,$F5                           ] , 'vpmovsxwd  zmm30{k7},ymm29'                       );
  TestCase.testcase(99, [$62,$02,$FD,$CF,$23,$F5                           ] , 'vpmovsxwd  zmm30{k7}{z},ymm29'                    );
  TestCase.testcase(100, [$62,$62,$FD,$4F,$23,$31                           ] , 'vpmovsxwd  zmm30{k7},yword [rcx]'                 );
  TestCase.testcase(101, [$62,$22,$FD,$4F,$23,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovsxwd  zmm30{k7},yword [rax+r14*8+0x1234]'    );
  TestCase.testcase(102, [$62,$62,$FD,$4F,$23,$72,$7F                       ] , 'vpmovsxwd  zmm30{k7},yword [rdx+0xfe0]'           );
  TestCase.testcase(103, [$62,$62,$FD,$4F,$23,$B2,$00,$10,$00,$00           ] , 'vpmovsxwd  zmm30{k7},yword [rdx+0x1000]'          );
  TestCase.testcase(104, [$62,$62,$FD,$4F,$23,$72,$80                       ] , 'vpmovsxwd  zmm30{k7},yword [rdx-0x1000]'          );
  TestCase.testcase(105, [$62,$62,$FD,$4F,$23,$B2,$E0,$EF,$FF,$FF           ] , 'vpmovsxwd  zmm30{k7},yword [rdx-0x1020]'          );
  TestCase.testcase(106, [$62,$02,$FD,$4F,$24,$F5                           ] , 'vpmovsxwq  zmm30{k7},xmm29'                       );
  TestCase.testcase(107, [$62,$02,$FD,$CF,$24,$F5                           ] , 'vpmovsxwq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(108, [$62,$62,$FD,$4F,$24,$31                           ] , 'vpmovsxwq  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(109, [$62,$22,$FD,$4F,$24,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovsxwq  zmm30{k7},oword [rax+r14*8+0x1234]'    );
  TestCase.testcase(110, [$62,$62,$FD,$4F,$24,$72,$7F                       ] , 'vpmovsxwq  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(111, [$62,$62,$FD,$4F,$24,$B2,$00,$08,$00,$00           ] , 'vpmovsxwq  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(112, [$62,$62,$FD,$4F,$24,$72,$80                       ] , 'vpmovsxwq  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(113, [$62,$62,$FD,$4F,$24,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovsxwq  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(114, [$62,$02,$FD,$4F,$31,$F5                           ] , 'vpmovzxbd  zmm30{k7},xmm29'                       );
  TestCase.testcase(115, [$62,$02,$FD,$CF,$31,$F5                           ] , 'vpmovzxbd  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(116, [$62,$62,$FD,$4F,$31,$31                           ] , 'vpmovzxbd  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(117, [$62,$22,$FD,$4F,$31,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovzxbd  zmm30{k7},oword [rax+r14*8+0x1234]'    );
  TestCase.testcase(118, [$62,$62,$FD,$4F,$31,$72,$7F                       ] , 'vpmovzxbd  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(119, [$62,$62,$FD,$4F,$31,$B2,$00,$08,$00,$00           ] , 'vpmovzxbd  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(120, [$62,$62,$FD,$4F,$31,$72,$80                       ] , 'vpmovzxbd  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(121, [$62,$62,$FD,$4F,$31,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovzxbd  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.testcase(122, [$62,$02,$FD,$4F,$32,$F5                           ] , 'vpmovzxbq  zmm30{k7},xmm29'                       );
  TestCase.testcase(123, [$62,$02,$FD,$CF,$32,$F5                           ] , 'vpmovzxbq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(124, [$62,$62,$FD,$4F,$32,$31                           ] , 'vpmovzxbq  zmm30{k7},qword [rcx]'                 );
  TestCase.testcase(125, [$62,$22,$FD,$4F,$32,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovzxbq  zmm30{k7},qword [rax+r14*8+0x1234]'    );
  TestCase.testcase(126, [$62,$62,$FD,$4F,$32,$72,$7F                       ] , 'vpmovzxbq  zmm30{k7},qword [rdx+0x3f8]'           );
  TestCase.testcase(127, [$62,$62,$FD,$4F,$32,$B2,$00,$04,$00,$00           ] , 'vpmovzxbq  zmm30{k7},qword [rdx+0x400]'           );
  TestCase.testcase(128, [$62,$62,$FD,$4F,$32,$72,$80                       ] , 'vpmovzxbq  zmm30{k7},qword [rdx-0x400]'           );
  TestCase.testcase(129, [$62,$62,$FD,$4F,$32,$B2,$F8,$FB,$FF,$FF           ] , 'vpmovzxbq  zmm30{k7},qword [rdx-0x408]'           );
  TestCase.testcase(130, [$62,$02,$FD,$4F,$33,$F5                           ] , 'vpmovzxwd  zmm30{k7},ymm29'                       );
  TestCase.testcase(131, [$62,$02,$FD,$CF,$33,$F5                           ] , 'vpmovzxwd  zmm30{k7}{z},ymm29'                    );
  TestCase.testcase(132, [$62,$62,$FD,$4F,$33,$31                           ] , 'vpmovzxwd  zmm30{k7},yword [rcx]'                 );
  TestCase.testcase(133, [$62,$22,$FD,$4F,$33,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovzxwd  zmm30{k7},yword [rax+r14*8+0x1234]'    );
  TestCase.testcase(134, [$62,$62,$FD,$4F,$33,$72,$7F                       ] , 'vpmovzxwd  zmm30{k7},yword [rdx+0xfe0]'           );
  TestCase.testcase(135, [$62,$62,$FD,$4F,$33,$B2,$00,$10,$00,$00           ] , 'vpmovzxwd  zmm30{k7},yword [rdx+0x1000]'          );
  TestCase.testcase(136, [$62,$62,$FD,$4F,$33,$72,$80                       ] , 'vpmovzxwd  zmm30{k7},yword [rdx-0x1000]'          );
  TestCase.testcase(137, [$62,$62,$FD,$4F,$33,$B2,$E0,$EF,$FF,$FF           ] , 'vpmovzxwd  zmm30{k7},yword [rdx-0x1020]'          );
  TestCase.testcase(138, [$62,$02,$FD,$4F,$34,$F5                           ] , 'vpmovzxwq  zmm30{k7},xmm29'                       );
  TestCase.testcase(139, [$62,$02,$FD,$CF,$34,$F5                           ] , 'vpmovzxwq  zmm30{k7}{z},xmm29'                    );
  TestCase.testcase(140, [$62,$62,$FD,$4F,$34,$31                           ] , 'vpmovzxwq  zmm30{k7},oword [rcx]'                 );
  TestCase.testcase(141, [$62,$22,$FD,$4F,$34,$B4,$F0,$34,$12,$00,$00       ] , 'vpmovzxwq  zmm30{k7},oword [rax+r14*8+0x1234]'    );
  TestCase.testcase(142, [$62,$62,$FD,$4F,$34,$72,$7F                       ] , 'vpmovzxwq  zmm30{k7},oword [rdx+0x7f0]'           );
  TestCase.testcase(143, [$62,$62,$FD,$4F,$34,$B2,$00,$08,$00,$00           ] , 'vpmovzxwq  zmm30{k7},oword [rdx+0x800]'           );
  TestCase.testcase(144, [$62,$62,$FD,$4F,$34,$72,$80                       ] , 'vpmovzxwq  zmm30{k7},oword [rdx-0x800]'           );
  TestCase.testcase(145, [$62,$62,$FD,$4F,$34,$B2,$F0,$F7,$FF,$FF           ] , 'vpmovzxwq  zmm30{k7},oword [rdx-0x810]'           );
  TestCase.Stop();
  TestCase.SaveToFile('../../../log/x64.evex_wig1.log');
end;

end.