//////////////////////////////////////////////////////////////////////////////////
// Engineer:       Rafael Waldo Delgado Doblas
// 
// Create Date:    00:43:35 12/23/2017
// Project Name:   BusBlasterV3_Passthrough
// Target Devices: XC2C32A_VQ44
// Tool versions:  ISE 14.7
// Description:    BusBlasterV3 Passthrough Buffer
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BusBlasterV3_Passthrough(

	// FT AD BUS	
	input  FT_AD0_TCK, FT_AD1_TDI, FT_AD3_TMS,
	output FT_AD2_TDO,
	inout  FT_AD4_GPIOL0, FT_AD5_GPIOL1, FT_AD6_GPIOL2, FT_AD7_GPIOL3,
	
	// FT AC BUS
	inout  FT_AC0_GPIOH0, FT_AC1_GPIOH1, FT_AC2_GPIOH2, FT_AC3_GPIOH3, FT_AC4_GPIOH4, FT_AC5_GPIOH5, FT_AC6_GPIOH6, FT_AC7_GPIOH7,

	// JTAG Connector
	output TCK, TDI, TMS, nTRST, DBGRQ,
	input  TDO, DBGACK, RTCK,
	inout  nSRST,

	// JP2 Connector
	inout  JP2_P20, JP2_P21, JP2_P22, JP2_P23, JP2_P27, JP2_P28,
	output JP2_P19_LED,

	// Others
	input  BUTTON

);

	assign TCK = FT_AD0_TCK;
	assign TDI = FT_AD1_TDI;
	assign TMS = FT_AD3_TMS;
	assign FT_AD2_TDO = TDO;

	assign JP2_P19_LED = FT_AC0_GPIOH0;
	assign FT_AC1_GPIOH1 = BUTTON;

endmodule
