--Copyright (C) 1991-2010 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


FUNCTION lpm_mux1 
(
	data0x[127..0],
	data100x[127..0],
	data101x[127..0],
	data102x[127..0],
	data103x[127..0],
	data104x[127..0],
	data105x[127..0],
	data106x[127..0],
	data107x[127..0],
	data108x[127..0],
	data109x[127..0],
	data10x[127..0],
	data110x[127..0],
	data111x[127..0],
	data112x[127..0],
	data113x[127..0],
	data114x[127..0],
	data115x[127..0],
	data116x[127..0],
	data117x[127..0],
	data118x[127..0],
	data119x[127..0],
	data11x[127..0],
	data120x[127..0],
	data121x[127..0],
	data122x[127..0],
	data123x[127..0],
	data124x[127..0],
	data125x[127..0],
	data126x[127..0],
	data127x[127..0],
	data128x[127..0],
	data129x[127..0],
	data12x[127..0],
	data130x[127..0],
	data131x[127..0],
	data132x[127..0],
	data133x[127..0],
	data134x[127..0],
	data135x[127..0],
	data136x[127..0],
	data137x[127..0],
	data138x[127..0],
	data139x[127..0],
	data13x[127..0],
	data140x[127..0],
	data141x[127..0],
	data142x[127..0],
	data143x[127..0],
	data144x[127..0],
	data145x[127..0],
	data146x[127..0],
	data147x[127..0],
	data148x[127..0],
	data149x[127..0],
	data14x[127..0],
	data150x[127..0],
	data151x[127..0],
	data152x[127..0],
	data153x[127..0],
	data154x[127..0],
	data155x[127..0],
	data156x[127..0],
	data157x[127..0],
	data158x[127..0],
	data159x[127..0],
	data15x[127..0],
	data160x[127..0],
	data161x[127..0],
	data162x[127..0],
	data163x[127..0],
	data164x[127..0],
	data165x[127..0],
	data166x[127..0],
	data167x[127..0],
	data168x[127..0],
	data169x[127..0],
	data16x[127..0],
	data170x[127..0],
	data171x[127..0],
	data172x[127..0],
	data173x[127..0],
	data174x[127..0],
	data175x[127..0],
	data176x[127..0],
	data177x[127..0],
	data178x[127..0],
	data179x[127..0],
	data17x[127..0],
	data180x[127..0],
	data181x[127..0],
	data182x[127..0],
	data183x[127..0],
	data184x[127..0],
	data185x[127..0],
	data186x[127..0],
	data187x[127..0],
	data188x[127..0],
	data189x[127..0],
	data18x[127..0],
	data190x[127..0],
	data191x[127..0],
	data192x[127..0],
	data193x[127..0],
	data194x[127..0],
	data195x[127..0],
	data196x[127..0],
	data197x[127..0],
	data198x[127..0],
	data199x[127..0],
	data19x[127..0],
	data1x[127..0],
	data200x[127..0],
	data201x[127..0],
	data202x[127..0],
	data203x[127..0],
	data204x[127..0],
	data205x[127..0],
	data206x[127..0],
	data207x[127..0],
	data208x[127..0],
	data209x[127..0],
	data20x[127..0],
	data210x[127..0],
	data211x[127..0],
	data212x[127..0],
	data213x[127..0],
	data214x[127..0],
	data215x[127..0],
	data216x[127..0],
	data217x[127..0],
	data218x[127..0],
	data219x[127..0],
	data21x[127..0],
	data220x[127..0],
	data221x[127..0],
	data222x[127..0],
	data223x[127..0],
	data224x[127..0],
	data225x[127..0],
	data226x[127..0],
	data227x[127..0],
	data228x[127..0],
	data229x[127..0],
	data22x[127..0],
	data230x[127..0],
	data231x[127..0],
	data232x[127..0],
	data233x[127..0],
	data234x[127..0],
	data235x[127..0],
	data236x[127..0],
	data237x[127..0],
	data238x[127..0],
	data239x[127..0],
	data23x[127..0],
	data240x[127..0],
	data241x[127..0],
	data242x[127..0],
	data243x[127..0],
	data244x[127..0],
	data245x[127..0],
	data246x[127..0],
	data247x[127..0],
	data248x[127..0],
	data249x[127..0],
	data24x[127..0],
	data250x[127..0],
	data251x[127..0],
	data252x[127..0],
	data253x[127..0],
	data254x[127..0],
	data255x[127..0],
	data25x[127..0],
	data26x[127..0],
	data27x[127..0],
	data28x[127..0],
	data29x[127..0],
	data2x[127..0],
	data30x[127..0],
	data31x[127..0],
	data32x[127..0],
	data33x[127..0],
	data34x[127..0],
	data35x[127..0],
	data36x[127..0],
	data37x[127..0],
	data38x[127..0],
	data39x[127..0],
	data3x[127..0],
	data40x[127..0],
	data41x[127..0],
	data42x[127..0],
	data43x[127..0],
	data44x[127..0],
	data45x[127..0],
	data46x[127..0],
	data47x[127..0],
	data48x[127..0],
	data49x[127..0],
	data4x[127..0],
	data50x[127..0],
	data51x[127..0],
	data52x[127..0],
	data53x[127..0],
	data54x[127..0],
	data55x[127..0],
	data56x[127..0],
	data57x[127..0],
	data58x[127..0],
	data59x[127..0],
	data5x[127..0],
	data60x[127..0],
	data61x[127..0],
	data62x[127..0],
	data63x[127..0],
	data64x[127..0],
	data65x[127..0],
	data66x[127..0],
	data67x[127..0],
	data68x[127..0],
	data69x[127..0],
	data6x[127..0],
	data70x[127..0],
	data71x[127..0],
	data72x[127..0],
	data73x[127..0],
	data74x[127..0],
	data75x[127..0],
	data76x[127..0],
	data77x[127..0],
	data78x[127..0],
	data79x[127..0],
	data7x[127..0],
	data80x[127..0],
	data81x[127..0],
	data82x[127..0],
	data83x[127..0],
	data84x[127..0],
	data85x[127..0],
	data86x[127..0],
	data87x[127..0],
	data88x[127..0],
	data89x[127..0],
	data8x[127..0],
	data90x[127..0],
	data91x[127..0],
	data92x[127..0],
	data93x[127..0],
	data94x[127..0],
	data95x[127..0],
	data96x[127..0],
	data97x[127..0],
	data98x[127..0],
	data99x[127..0],
	data9x[127..0],
	sel[7..0]
)

RETURNS (
	result[127..0]
);
