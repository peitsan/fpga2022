/* Quartus Prime Version 21.1.1 Build 850 06/23/2022 SJ Lite Edition */
JedecChain;
	FileRevision(JESD32A);
	DefaultMfr(6E);

	P ActionCode(Cfg)
		Device PartName(10M50DAF484ES) Path("D:/coding/fpga2022/s9/output_files/") File("dividefrequency.sof") MfrSpec(OpMask(1));
	P ActionCode(Cfg)
		Device PartName(10M02SCM153) Path("D:/coding/fpga2022/s7/output_files/") File("voter_33.pof") MfrSpec(OpMask(1) Child_OpMask(2 1 1));

ChainEnd;

AlteraBegin;
	ChainType(JTAG);
AlteraEnd;
