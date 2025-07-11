-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 184 04/29/2009 Service Pack 1 SJ Web Edition"

-- DATE "12/28/2024 23:01:30"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	small_computer IS
    PORT (
	output : OUT std_logic_vector(7 DOWNTO 0);
	clk : IN std_logic;
	input : IN std_logic_vector(7 DOWNTO 0)
	);
END small_computer;

ARCHITECTURE structure OF small_computer IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_input : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|Add1~10_combout\ : std_logic;
SIGNAL \inst13|Add1~15\ : std_logic;
SIGNAL \inst13|Add1~16_combout\ : std_logic;
SIGNAL \inst12|s[5]~28_combout\ : std_logic;
SIGNAL \inst12|d[0]~38_combout\ : std_logic;
SIGNAL \inst12|d[0]~39_combout\ : std_logic;
SIGNAL \inst1|_~1_combout\ : std_logic;
SIGNAL \inst5|gf~regout\ : std_logic;
SIGNAL \inst5|gf~0_combout\ : std_logic;
SIGNAL \inst9|y[4]~52_combout\ : std_logic;
SIGNAL \inst9|y[7]~55_combout\ : std_logic;
SIGNAL \inst3|movi~11_combout\ : std_logic;
SIGNAL \inst2|ram_re~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \inst8|c[0]~36_combout\ : std_logic;
SIGNAL \inst8|always0~5_combout\ : std_logic;
SIGNAL \inst8|always0~0_combout\ : std_logic;
SIGNAL \inst8|c~27_combout\ : std_logic;
SIGNAL \inst8|c~52_combout\ : std_logic;
SIGNAL \inst2|mux_s~11_combout\ : std_logic;
SIGNAL \inst3|Equal4~6_combout\ : std_logic;
SIGNAL \inst3|in1~9_combout\ : std_logic;
SIGNAL \inst3|Equal4~4_combout\ : std_logic;
SIGNAL \inst3|movc~3_combout\ : std_logic;
SIGNAL \inst2|reg_we~6_combout\ : std_logic;
SIGNAL \inst2|mux_s~10_combout\ : std_logic;
SIGNAL \inst20|y[0]~15_combout\ : std_logic;
SIGNAL \inst12|r3[0]~10_combout\ : std_logic;
SIGNAL \inst8|c[0]~37\ : std_logic;
SIGNAL \inst8|c[1]~39\ : std_logic;
SIGNAL \inst8|c[2]~40_combout\ : std_logic;
SIGNAL \inst9|y[0]~48_combout\ : std_logic;
SIGNAL \inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst9|y[0]~40_combout\ : std_logic;
SIGNAL \inst8|c[1]~38_combout\ : std_logic;
SIGNAL \inst20|y[1]~14_combout\ : std_logic;
SIGNAL \inst3|Equal4~5_combout\ : std_logic;
SIGNAL \inst2|reg_we~7_combout\ : std_logic;
SIGNAL \inst12|Equal5~0_combout\ : std_logic;
SIGNAL \inst12|Equal5~1_combout\ : std_logic;
SIGNAL \inst12|r0[7]~8_combout\ : std_logic;
SIGNAL \inst12|s[1]~36_combout\ : std_logic;
SIGNAL \inst12|r3[1]~9_combout\ : std_logic;
SIGNAL \inst12|s[1]~37_combout\ : std_logic;
SIGNAL \inst9|y[1]~49_combout\ : std_logic;
SIGNAL \inst9|y[1]~41_combout\ : std_logic;
SIGNAL \inst12|d[2]~34_combout\ : std_logic;
SIGNAL \inst12|d[2]~35_combout\ : std_logic;
SIGNAL \inst9|y[2]~50_combout\ : std_logic;
SIGNAL \inst9|y[2]~42_combout\ : std_logic;
SIGNAL \inst9|y[3]~51_combout\ : std_logic;
SIGNAL \inst7[2]~28_combout\ : std_logic;
SIGNAL \inst12|d[3]~32_combout\ : std_logic;
SIGNAL \inst12|d[3]~33_combout\ : std_logic;
SIGNAL \inst9|y[3]~43_combout\ : std_logic;
SIGNAL \inst8|c[3]~43\ : std_logic;
SIGNAL \inst8|c[4]~44_combout\ : std_logic;
SIGNAL \inst20|y[4]~11_combout\ : std_logic;
SIGNAL \inst12|d[4]~30_combout\ : std_logic;
SIGNAL \inst12|d[4]~31_combout\ : std_logic;
SIGNAL \inst9|y[4]~44_combout\ : std_logic;
SIGNAL \inst8|c[4]~45\ : std_logic;
SIGNAL \inst8|c[5]~46_combout\ : std_logic;
SIGNAL \inst12|s[5]~29_combout\ : std_logic;
SIGNAL \inst20|y[5]~10_combout\ : std_logic;
SIGNAL \inst12|d[5]~28_combout\ : std_logic;
SIGNAL \inst12|d[5]~29_combout\ : std_logic;
SIGNAL \inst9|y[5]~53_combout\ : std_logic;
SIGNAL \inst9|y[5]~45_combout\ : std_logic;
SIGNAL \inst8|c[5]~47\ : std_logic;
SIGNAL \inst8|c[6]~48_combout\ : std_logic;
SIGNAL \inst20|y[6]~9_combout\ : std_logic;
SIGNAL \inst12|s[6]~26_combout\ : std_logic;
SIGNAL \inst12|s[6]~27_combout\ : std_logic;
SIGNAL \inst9|y[6]~54_combout\ : std_logic;
SIGNAL \inst12|d[6]~26_combout\ : std_logic;
SIGNAL \inst12|d[6]~27_combout\ : std_logic;
SIGNAL \inst9|y[6]~46_combout\ : std_logic;
SIGNAL \inst8|c[6]~49\ : std_logic;
SIGNAL \inst8|c[7]~50_combout\ : std_logic;
SIGNAL \inst12|s[7]~24_combout\ : std_logic;
SIGNAL \inst12|s[7]~25_combout\ : std_logic;
SIGNAL \inst20|y[7]~8_combout\ : std_logic;
SIGNAL \inst12|d[7]~24_combout\ : std_logic;
SIGNAL \inst12|d[7]~25_combout\ : std_logic;
SIGNAL \inst9|y[7]~47_combout\ : std_logic;
SIGNAL \inst7[2]~16_combout\ : std_logic;
SIGNAL \inst3|Equal4~2_combout\ : std_logic;
SIGNAL \inst13|Add0~1_combout\ : std_logic;
SIGNAL \inst12|d[1]~36_combout\ : std_logic;
SIGNAL \inst12|d[1]~37_combout\ : std_logic;
SIGNAL \inst13|Add1~1\ : std_logic;
SIGNAL \inst13|Add1~3\ : std_logic;
SIGNAL \inst13|Add1~4_combout\ : std_logic;
SIGNAL \inst13|Add0~3\ : std_logic;
SIGNAL \inst13|Add0~5\ : std_logic;
SIGNAL \inst13|Add0~6_combout\ : std_logic;
SIGNAL \inst13|Add0~22_combout\ : std_logic;
SIGNAL \inst13|t[2]~43_combout\ : std_logic;
SIGNAL \inst7[2]~17_combout\ : std_logic;
SIGNAL \inst20|y[2]~13_combout\ : std_logic;
SIGNAL \inst12|r3[2]~8_combout\ : std_logic;
SIGNAL \inst12|s[2]~34_combout\ : std_logic;
SIGNAL \inst12|s[2]~35_combout\ : std_logic;
SIGNAL \inst8|c[2]~41\ : std_logic;
SIGNAL \inst8|c[3]~42_combout\ : std_logic;
SIGNAL \inst20|y[3]~12_combout\ : std_logic;
SIGNAL \inst12|s[3]~32_combout\ : std_logic;
SIGNAL \inst12|s[3]~33_combout\ : std_logic;
SIGNAL \inst13|Add1~5\ : std_logic;
SIGNAL \inst13|Add1~6_combout\ : std_logic;
SIGNAL \inst13|Add0~7\ : std_logic;
SIGNAL \inst13|Add0~8_combout\ : std_logic;
SIGNAL \inst13|Add0~21_combout\ : std_logic;
SIGNAL \inst13|t[3]~42_combout\ : std_logic;
SIGNAL \inst7[3]~14_combout\ : std_logic;
SIGNAL \inst7[3]~15_combout\ : std_logic;
SIGNAL \inst7[3]~29_combout\ : std_logic;
SIGNAL \inst12|Equal5~2_combout\ : std_logic;
SIGNAL \inst12|r0[0]~9_combout\ : std_logic;
SIGNAL \inst12|s[0]~38_combout\ : std_logic;
SIGNAL \inst12|s[0]~39_combout\ : std_logic;
SIGNAL \inst13|Add1~0_combout\ : std_logic;
SIGNAL \inst13|Add0~2_combout\ : std_logic;
SIGNAL \inst13|Add0~24_combout\ : std_logic;
SIGNAL \inst13|t[0]~45_combout\ : std_logic;
SIGNAL \inst7[0]~20_combout\ : std_logic;
SIGNAL \inst7[0]~21_combout\ : std_logic;
SIGNAL \inst7[0]~26_combout\ : std_logic;
SIGNAL \inst7[5]~10_combout\ : std_logic;
SIGNAL \inst13|Add0~9\ : std_logic;
SIGNAL \inst13|Add0~11\ : std_logic;
SIGNAL \inst13|Add0~12_combout\ : std_logic;
SIGNAL \inst13|Add0~19_combout\ : std_logic;
SIGNAL \inst13|t[5]~40_combout\ : std_logic;
SIGNAL \inst7[5]~11_combout\ : std_logic;
SIGNAL \inst7[5]~24_combout\ : std_logic;
SIGNAL \inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst13|Add0~13\ : std_logic;
SIGNAL \inst13|Add0~14_combout\ : std_logic;
SIGNAL \inst13|Add0~18_combout\ : std_logic;
SIGNAL \inst13|Add1~7\ : std_logic;
SIGNAL \inst13|Add1~9\ : std_logic;
SIGNAL \inst13|Add1~11\ : std_logic;
SIGNAL \inst13|Add1~12_combout\ : std_logic;
SIGNAL \inst13|t[6]~39_combout\ : std_logic;
SIGNAL \inst7[6]~8_combout\ : std_logic;
SIGNAL \inst7[6]~9_combout\ : std_logic;
SIGNAL \inst7[6]~23_combout\ : std_logic;
SIGNAL \inst7[7]~2_combout\ : std_logic;
SIGNAL \inst4|sm~0_combout\ : std_logic;
SIGNAL \inst4|sm~regout\ : std_logic;
SIGNAL \inst2|au_en~4_combout\ : std_logic;
SIGNAL \inst13|Add0~0_combout\ : std_logic;
SIGNAL \inst7[1]~18_combout\ : std_logic;
SIGNAL \inst13|Add1~2_combout\ : std_logic;
SIGNAL \inst13|Add0~4_combout\ : std_logic;
SIGNAL \inst13|Add0~23_combout\ : std_logic;
SIGNAL \inst13|t[1]~44_combout\ : std_logic;
SIGNAL \inst7[1]~19_combout\ : std_logic;
SIGNAL \inst7[1]~27_combout\ : std_logic;
SIGNAL \inst12|s[4]~30_combout\ : std_logic;
SIGNAL \inst12|s[4]~31_combout\ : std_logic;
SIGNAL \inst7[4]~12_combout\ : std_logic;
SIGNAL \inst13|Add0~10_combout\ : std_logic;
SIGNAL \inst13|Add0~20_combout\ : std_logic;
SIGNAL \inst13|Add1~8_combout\ : std_logic;
SIGNAL \inst13|t[4]~41_combout\ : std_logic;
SIGNAL \inst7[4]~13_combout\ : std_logic;
SIGNAL \inst7[4]~25_combout\ : std_logic;
SIGNAL \inst3|Equal4~3_combout\ : std_logic;
SIGNAL \inst7[7]~30_combout\ : std_logic;
SIGNAL \inst7[7]~22_combout\ : std_logic;
SIGNAL \inst13|t[7]~38_combout\ : std_logic;
SIGNAL \inst13|t[7]~18_combout\ : std_logic;
SIGNAL \inst13|Add1~13\ : std_logic;
SIGNAL \inst13|Add1~14_combout\ : std_logic;
SIGNAL \inst7[7]~3_combout\ : std_logic;
SIGNAL \inst13|Add0~15\ : std_logic;
SIGNAL \inst13|Add0~16_combout\ : std_logic;
SIGNAL \inst7[7]~5_combout\ : std_logic;
SIGNAL \inst7[7]~4_combout\ : std_logic;
SIGNAL \inst7[7]~6_combout\ : std_logic;
SIGNAL \inst7[7]~7_combout\ : std_logic;
SIGNAL \inst1|sram|ram_block|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|c\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|r0\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|r1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|r2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|r3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|x\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \input~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|ALT_INV_sm~regout\ : std_logic;
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

output <= ww_output;
ww_clk <= clk;
ww_input <= input;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst7[7]~22_combout\ & \inst7[6]~23_combout\ & \inst7[5]~24_combout\ & \inst7[4]~25_combout\ & \inst7[3]~29_combout\ & \inst7[2]~28_combout\ & \inst7[1]~27_combout\ & 
\inst7[0]~26_combout\);

\inst1|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst9|y[7]~47_combout\ & \inst9|y[6]~46_combout\ & \inst9|y[5]~45_combout\ & \inst9|y[4]~44_combout\ & \inst9|y[3]~43_combout\ & \inst9|y[2]~42_combout\ & \inst9|y[1]~41_combout\ & 
\inst9|y[0]~40_combout\);

\inst1|sram|ram_block|auto_generated|q_a\(0) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|sram|ram_block|auto_generated|q_a\(1) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|sram|ram_block|auto_generated|q_a\(2) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|sram|ram_block|auto_generated|q_a\(3) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|sram|ram_block|auto_generated|q_a\(4) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|sram|ram_block|auto_generated|q_a\(5) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|sram|ram_block|auto_generated|q_a\(6) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|sram|ram_block|auto_generated|q_a\(7) <= \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\inst4|ALT_INV_sm~regout\ <= NOT \inst4|sm~regout\;
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

\inst13|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~10_combout\ = \inst12|d[5]~29_combout\ & (\inst12|s[5]~29_combout\ & !\inst13|Add1~9\ # !\inst12|s[5]~29_combout\ & \inst13|Add1~9\ & VCC) # !\inst12|d[5]~29_combout\ & (\inst12|s[5]~29_combout\ & (\inst13|Add1~9\ # GND) # 
-- !\inst12|s[5]~29_combout\ & !\inst13|Add1~9\)
-- \inst13|Add1~11\ = CARRY(\inst12|d[5]~29_combout\ & \inst12|s[5]~29_combout\ & !\inst13|Add1~9\ # !\inst12|d[5]~29_combout\ & (\inst12|s[5]~29_combout\ # !\inst13|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[5]~29_combout\,
	datab => \inst12|s[5]~29_combout\,
	datad => VCC,
	cin => \inst13|Add1~9\,
	combout => \inst13|Add1~10_combout\,
	cout => \inst13|Add1~11\);

\inst13|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~14_combout\ = \inst12|s[7]~25_combout\ & (\inst12|d[7]~25_combout\ & !\inst13|Add1~13\ # !\inst12|d[7]~25_combout\ & (\inst13|Add1~13\ # GND)) # !\inst12|s[7]~25_combout\ & (\inst12|d[7]~25_combout\ & \inst13|Add1~13\ & VCC # 
-- !\inst12|d[7]~25_combout\ & !\inst13|Add1~13\)
-- \inst13|Add1~15\ = CARRY(\inst12|s[7]~25_combout\ & (!\inst13|Add1~13\ # !\inst12|d[7]~25_combout\) # !\inst12|s[7]~25_combout\ & !\inst12|d[7]~25_combout\ & !\inst13|Add1~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[7]~25_combout\,
	datab => \inst12|d[7]~25_combout\,
	datad => VCC,
	cin => \inst13|Add1~13\,
	combout => \inst13|Add1~14_combout\,
	cout => \inst13|Add1~15\);

\inst13|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~16_combout\ = !\inst13|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst13|Add1~15\,
	combout => \inst13|Add1~16_combout\);

\inst12|r3[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst20|y[6]~9_combout\,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(6));

\inst12|s[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[5]~28_combout\ = \inst|x\(1) & (\inst|x\(0) # \inst12|r2\(5)) # !\inst|x\(1) & !\inst|x\(0) & (\inst12|r0\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(1),
	datab => \inst|x\(0),
	datac => \inst12|r2\(5),
	datad => \inst12|r0\(5),
	combout => \inst12|s[5]~28_combout\);

\inst12|r1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[4]~11_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(4));

\inst12|r2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[2]~13_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(2));

\inst12|r2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[0]~15_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(0));

\inst12|d[0]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[0]~38_combout\ = \inst|x\(2) & (\inst|x\(3) # \inst12|r1\(0)) # !\inst|x\(2) & !\inst|x\(3) & !\inst12|r0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst|x\(3),
	datac => \inst12|r0\(0),
	datad => \inst12|r1\(0),
	combout => \inst12|d[0]~38_combout\);

\inst12|d[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[0]~39_combout\ = \inst|x\(3) & (\inst12|d[0]~38_combout\ & !\inst12|r3\(0) # !\inst12|d[0]~38_combout\ & (\inst12|r2\(0))) # !\inst|x\(3) & (\inst12|d[0]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(3),
	datab => \inst12|r3\(0),
	datac => \inst12|r2\(0),
	datad => \inst12|d[0]~38_combout\,
	combout => \inst12|d[0]~39_combout\);

\inst1|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|_~1_combout\ = \inst4|sm~regout\ & !\inst2|ram_re~combout\ & \inst3|Equal4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst2|ram_re~combout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst1|_~1_combout\);

\inst5|gf\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst5|gf~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|gf~regout\);

\inst5|gf~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|gf~0_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~2_combout\ & \inst13|Add1~16_combout\ # !\inst3|Equal4~2_combout\ & (\inst5|gf~regout\)) # !\inst4|sm~regout\ & (\inst5|gf~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add1~16_combout\,
	datab => \inst4|sm~regout\,
	datac => \inst5|gf~regout\,
	datad => \inst3|Equal4~2_combout\,
	combout => \inst5|gf~0_combout\);

\inst9|y[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[4]~52_combout\ = \inst3|Equal4~4_combout\ & (\inst4|sm~regout\ & (\inst12|s[4]~31_combout\) # !\inst4|sm~regout\ & \inst8|c\(4)) # !\inst3|Equal4~4_combout\ & \inst8|c\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~4_combout\,
	datab => \inst8|c\(4),
	datac => \inst4|sm~regout\,
	datad => \inst12|s[4]~31_combout\,
	combout => \inst9|y[4]~52_combout\);

\inst9|y[7]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[7]~55_combout\ = \inst3|Equal4~4_combout\ & (\inst4|sm~regout\ & (\inst12|s[7]~25_combout\) # !\inst4|sm~regout\ & \inst8|c\(7)) # !\inst3|Equal4~4_combout\ & \inst8|c\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~4_combout\,
	datab => \inst8|c\(7),
	datac => \inst4|sm~regout\,
	datad => \inst12|s[7]~25_combout\,
	combout => \inst9|y[7]~55_combout\);

\inst3|movi~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|movi~11_combout\ = \inst|x\(5) & \inst|x\(7) & \inst4|sm~regout\ & \inst|x\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(5),
	datab => \inst|x\(7),
	datac => \inst4|sm~regout\,
	datad => \inst|x\(6),
	combout => \inst3|movi~11_combout\);

\input[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(7),
	combout => \input~combout\(7));

\input[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(6),
	combout => \input~combout\(6));

\input[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(5),
	combout => \input~combout\(5));

\input[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(4),
	combout => \input~combout\(4));

\input[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(3),
	combout => \input~combout\(3));

\input[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(2),
	combout => \input~combout\(2));

\input[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(1),
	combout => \input~combout\(1));

\inst2|ram_re\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|ram_re~combout\ = \inst|x\(6) & !\inst|x\(4) & \inst|x\(5) # !\inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst|x\(6),
	datac => \inst|x\(4),
	datad => \inst|x\(5),
	combout => \inst2|ram_re~combout\);

\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

\inst8|c[0]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[0]~36_combout\ = \inst8|c\(0) $ VCC
-- \inst8|c[0]~37\ = CARRY(\inst8|c\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|c\(0),
	datad => VCC,
	combout => \inst8|c[0]~36_combout\,
	cout => \inst8|c[0]~37\);

\inst8|always0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|always0~5_combout\ = !\inst|x\(4) & \inst|x\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|x\(4),
	datad => \inst|x\(5),
	combout => \inst8|always0~5_combout\);

\inst8|always0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|always0~0_combout\ = \inst4|sm~regout\ & (!\inst|x\(7) # !\inst|x\(6) # !\inst8|always0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst8|always0~5_combout\,
	datac => \inst|x\(6),
	datad => \inst|x\(7),
	combout => \inst8|always0~0_combout\);

\inst8|c~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c~27_combout\ = \inst5|gf~regout\ & !\inst|x\(6) # !\inst|x\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|gf~regout\,
	datab => \inst|x\(6),
	datad => \inst|x\(4),
	combout => \inst8|c~27_combout\);

\inst8|c~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c~52_combout\ = \inst8|c~27_combout\ & \inst|x\(7) & \inst|x\(5) # !\inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst8|c~27_combout\,
	datac => \inst|x\(7),
	datad => \inst|x\(5),
	combout => \inst8|c~52_combout\);

\inst8|c[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[0]~36_combout\,
	sdata => \inst12|s[0]~39_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(0));

\inst2|mux_s~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|mux_s~11_combout\ = \inst|x\(5) # \inst|x\(7) & (\inst|x\(6)) # !\inst|x\(7) & (\inst|x\(4) # !\inst|x\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(5),
	datab => \inst|x\(7),
	datac => \inst|x\(4),
	datad => \inst|x\(6),
	combout => \inst2|mux_s~11_combout\);

\inst3|Equal4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~6_combout\ = !\inst|x\(4) & \inst|x\(5) & \inst|x\(6) & \inst|x\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(4),
	datab => \inst|x\(5),
	datac => \inst|x\(6),
	datad => \inst|x\(7),
	combout => \inst3|Equal4~6_combout\);

\inst3|in1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|in1~9_combout\ = \inst3|Equal4~3_combout\ & \inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Equal4~3_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst3|in1~9_combout\);

\inst3|Equal4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~4_combout\ = !\inst|x\(7) & !\inst|x\(4) & \inst|x\(6) & \inst|x\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(7),
	datab => \inst|x\(4),
	datac => \inst|x\(6),
	datad => \inst|x\(5),
	combout => \inst3|Equal4~4_combout\);

\inst3|movc~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|movc~3_combout\ = \inst4|sm~regout\ & \inst3|Equal4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datad => \inst3|Equal4~4_combout\,
	combout => \inst3|movc~3_combout\);

\inst2|reg_we~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|reg_we~6_combout\ = !\inst3|in1~9_combout\ & !\inst3|movc~3_combout\ & (!\inst3|Equal4~6_combout\ # !\inst3|movi~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|movi~11_combout\,
	datab => \inst3|Equal4~6_combout\,
	datac => \inst3|in1~9_combout\,
	datad => \inst3|movc~3_combout\,
	combout => \inst2|reg_we~6_combout\);

\inst2|mux_s~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|mux_s~10_combout\ = \inst4|sm~regout\ & !\inst2|mux_s~11_combout\ # !\inst2|reg_we~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst2|mux_s~11_combout\,
	datad => \inst2|reg_we~6_combout\,
	combout => \inst2|mux_s~10_combout\);

\inst20|y[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[0]~15_combout\ = \inst2|mux_s~10_combout\ & (\inst7[0]~21_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & (\inst8|c\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[0]~21_combout\,
	datab => \inst7[7]~30_combout\,
	datac => \inst8|c\(0),
	datad => \inst2|mux_s~10_combout\,
	combout => \inst20|y[0]~15_combout\);

\inst12|r3[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|r3[0]~10_combout\ = !\inst20|y[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|y[0]~15_combout\,
	combout => \inst12|r3[0]~10_combout\);

\inst8|c[1]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[1]~38_combout\ = \inst8|c\(1) & !\inst8|c[0]~37\ # !\inst8|c\(1) & (\inst8|c[0]~37\ # GND)
-- \inst8|c[1]~39\ = CARRY(!\inst8|c[0]~37\ # !\inst8|c\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|c\(1),
	datad => VCC,
	cin => \inst8|c[0]~37\,
	combout => \inst8|c[1]~38_combout\,
	cout => \inst8|c[1]~39\);

\inst8|c[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[2]~40_combout\ = \inst8|c\(2) & (\inst8|c[1]~39\ $ GND) # !\inst8|c\(2) & !\inst8|c[1]~39\ & VCC
-- \inst8|c[2]~41\ = CARRY(\inst8|c\(2) & !\inst8|c[1]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|c\(2),
	datad => VCC,
	cin => \inst8|c[1]~39\,
	combout => \inst8|c[2]~40_combout\,
	cout => \inst8|c[2]~41\);

\inst9|y[0]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[0]~48_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~4_combout\ & (\inst12|s[0]~39_combout\) # !\inst3|Equal4~4_combout\ & \inst8|c\(0)) # !\inst4|sm~regout\ & (\inst8|c\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst3|Equal4~4_combout\,
	datac => \inst8|c\(0),
	datad => \inst12|s[0]~39_combout\,
	combout => \inst9|y[0]~48_combout\);

\inst3|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~0_combout\ = !\inst|x\(5) & !\inst|x\(7) & \inst|x\(4) & \inst|x\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(5),
	datab => \inst|x\(7),
	datac => \inst|x\(4),
	datad => \inst|x\(6),
	combout => \inst3|Equal4~0_combout\);

\inst9|y[0]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[0]~40_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & \inst12|d[0]~39_combout\ # !\inst3|Equal4~0_combout\ & (\inst9|y[0]~48_combout\)) # !\inst4|sm~regout\ & (\inst9|y[0]~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[0]~39_combout\,
	datab => \inst9|y[0]~48_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst9|y[0]~40_combout\);

\inst20|y[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[1]~14_combout\ = \inst2|mux_s~10_combout\ & (\inst7[1]~19_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & \inst8|c\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~10_combout\,
	datab => \inst8|c\(1),
	datac => \inst7[7]~30_combout\,
	datad => \inst7[1]~19_combout\,
	combout => \inst20|y[1]~14_combout\);

\inst3|Equal4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~5_combout\ = \inst|x\(4) & \inst|x\(5) & \inst|x\(6) & !\inst|x\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(4),
	datab => \inst|x\(5),
	datac => \inst|x\(6),
	datad => \inst|x\(7),
	combout => \inst3|Equal4~5_combout\);

\inst2|reg_we~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|reg_we~7_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~5_combout\ # !\inst2|mux_s~11_combout\) # !\inst2|reg_we~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|reg_we~6_combout\,
	datab => \inst3|Equal4~5_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst2|mux_s~11_combout\,
	combout => \inst2|reg_we~7_combout\);

\inst12|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Equal5~0_combout\ = \inst|x\(2) & !\inst|x\(3) & \inst2|reg_we~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst|x\(3),
	datad => \inst2|reg_we~7_combout\,
	combout => \inst12|Equal5~0_combout\);

\inst12|r1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[1]~14_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(1));

\inst12|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Equal5~1_combout\ = !\inst|x\(2) & \inst|x\(3) & \inst2|reg_we~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst|x\(3),
	datad => \inst2|reg_we~7_combout\,
	combout => \inst12|Equal5~1_combout\);

\inst12|r2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[1]~14_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(1));

\inst12|r0[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|r0[7]~8_combout\ = !\inst|x\(2) & !\inst|x\(3) & \inst2|reg_we~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst|x\(3),
	datad => \inst2|reg_we~7_combout\,
	combout => \inst12|r0[7]~8_combout\);

\inst12|r0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst20|y[1]~14_combout\,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(1));

\inst12|s[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[1]~36_combout\ = \inst|x\(0) & (\inst|x\(1)) # !\inst|x\(0) & (\inst|x\(1) & \inst12|r2\(1) # !\inst|x\(1) & (\inst12|r0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(0),
	datab => \inst12|r2\(1),
	datac => \inst|x\(1),
	datad => \inst12|r0\(1),
	combout => \inst12|s[1]~36_combout\);

\inst12|r3[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|r3[1]~9_combout\ = !\inst20|y[1]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|y[1]~14_combout\,
	combout => \inst12|r3[1]~9_combout\);

\inst12|r3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst12|r3[1]~9_combout\,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(1));

\inst12|s[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[1]~37_combout\ = \inst|x\(0) & (\inst12|s[1]~36_combout\ & (!\inst12|r3\(1)) # !\inst12|s[1]~36_combout\ & \inst12|r1\(1)) # !\inst|x\(0) & (\inst12|s[1]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(0),
	datab => \inst12|r1\(1),
	datac => \inst12|s[1]~36_combout\,
	datad => \inst12|r3\(1),
	combout => \inst12|s[1]~37_combout\);

\inst8|c[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[1]~38_combout\,
	sdata => \inst12|s[1]~37_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(1));

\inst9|y[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[1]~49_combout\ = \inst3|Equal4~4_combout\ & (\inst4|sm~regout\ & \inst12|s[1]~37_combout\ # !\inst4|sm~regout\ & (\inst8|c\(1))) # !\inst3|Equal4~4_combout\ & (\inst8|c\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[1]~37_combout\,
	datab => \inst8|c\(1),
	datac => \inst3|Equal4~4_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst9|y[1]~49_combout\);

\inst9|y[1]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[1]~41_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & \inst12|d[1]~37_combout\ # !\inst3|Equal4~0_combout\ & (\inst9|y[1]~49_combout\)) # !\inst4|sm~regout\ & (\inst9|y[1]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[1]~37_combout\,
	datab => \inst9|y[1]~49_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst9|y[1]~41_combout\);

\inst12|r1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[2]~13_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(2));

\inst12|r0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst20|y[2]~13_combout\,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(2));

\inst12|d[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[2]~34_combout\ = \inst|x\(2) & (\inst12|r1\(2) # \inst|x\(3)) # !\inst|x\(2) & (!\inst|x\(3) & \inst12|r0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst12|r1\(2),
	datac => \inst|x\(3),
	datad => \inst12|r0\(2),
	combout => \inst12|d[2]~34_combout\);

\inst12|d[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[2]~35_combout\ = \inst|x\(3) & (\inst12|d[2]~34_combout\ & (!\inst12|r3\(2)) # !\inst12|d[2]~34_combout\ & \inst12|r2\(2)) # !\inst|x\(3) & (\inst12|d[2]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r2\(2),
	datab => \inst12|r3\(2),
	datac => \inst|x\(3),
	datad => \inst12|d[2]~34_combout\,
	combout => \inst12|d[2]~35_combout\);

\inst9|y[2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[2]~50_combout\ = \inst3|Equal4~4_combout\ & (\inst4|sm~regout\ & (\inst12|s[2]~35_combout\) # !\inst4|sm~regout\ & \inst8|c\(2)) # !\inst3|Equal4~4_combout\ & (\inst8|c\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~4_combout\,
	datab => \inst4|sm~regout\,
	datac => \inst8|c\(2),
	datad => \inst12|s[2]~35_combout\,
	combout => \inst9|y[2]~50_combout\);

\inst9|y[2]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[2]~42_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & \inst12|d[2]~35_combout\ # !\inst3|Equal4~0_combout\ & (\inst9|y[2]~50_combout\)) # !\inst4|sm~regout\ & (\inst9|y[2]~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst3|Equal4~0_combout\,
	datac => \inst12|d[2]~35_combout\,
	datad => \inst9|y[2]~50_combout\,
	combout => \inst9|y[2]~42_combout\);

\inst9|y[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[3]~51_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~4_combout\ & (\inst12|s[3]~33_combout\) # !\inst3|Equal4~4_combout\ & \inst8|c\(3)) # !\inst4|sm~regout\ & \inst8|c\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst8|c\(3),
	datac => \inst3|Equal4~4_combout\,
	datad => \inst12|s[3]~33_combout\,
	combout => \inst9|y[3]~51_combout\);

\inst7[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[2]~28_combout\ = \inst7[2]~17_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7[7]~30_combout\,
	datad => \inst7[2]~17_combout\,
	combout => \inst7[2]~28_combout\);

\inst|x[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[2]~28_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(2));

\inst12|r2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[3]~12_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(3));

\inst12|d[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[3]~32_combout\ = \inst|x\(2) & (\inst|x\(3)) # !\inst|x\(2) & (\inst|x\(3) & (\inst12|r2\(3)) # !\inst|x\(3) & \inst12|r0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r0\(3),
	datab => \inst12|r2\(3),
	datac => \inst|x\(2),
	datad => \inst|x\(3),
	combout => \inst12|d[3]~32_combout\);

\inst12|d[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[3]~33_combout\ = \inst|x\(2) & (\inst12|d[3]~32_combout\ & \inst12|r3\(3) # !\inst12|d[3]~32_combout\ & (\inst12|r1\(3))) # !\inst|x\(2) & (\inst12|d[3]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r3\(3),
	datab => \inst12|r1\(3),
	datac => \inst|x\(2),
	datad => \inst12|d[3]~32_combout\,
	combout => \inst12|d[3]~33_combout\);

\inst9|y[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[3]~43_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & (\inst12|d[3]~33_combout\) # !\inst3|Equal4~0_combout\ & \inst9|y[3]~51_combout\) # !\inst4|sm~regout\ & \inst9|y[3]~51_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst9|y[3]~51_combout\,
	datac => \inst12|d[3]~33_combout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst9|y[3]~43_combout\);

\inst8|c[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[3]~42_combout\ = \inst8|c\(3) & !\inst8|c[2]~41\ # !\inst8|c\(3) & (\inst8|c[2]~41\ # GND)
-- \inst8|c[3]~43\ = CARRY(!\inst8|c[2]~41\ # !\inst8|c\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|c\(3),
	datad => VCC,
	cin => \inst8|c[2]~41\,
	combout => \inst8|c[3]~42_combout\,
	cout => \inst8|c[3]~43\);

\inst8|c[4]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[4]~44_combout\ = \inst8|c\(4) & (\inst8|c[3]~43\ $ GND) # !\inst8|c\(4) & !\inst8|c[3]~43\ & VCC
-- \inst8|c[4]~45\ = CARRY(\inst8|c\(4) & !\inst8|c[3]~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|c\(4),
	datad => VCC,
	cin => \inst8|c[3]~43\,
	combout => \inst8|c[4]~44_combout\,
	cout => \inst8|c[4]~45\);

\inst8|c[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[4]~44_combout\,
	sdata => \inst12|s[4]~31_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(4));

\inst20|y[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[4]~11_combout\ = \inst2|mux_s~10_combout\ & (\inst7[4]~13_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & (\inst8|c\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~10_combout\,
	datab => \inst7[7]~30_combout\,
	datac => \inst8|c\(4),
	datad => \inst7[4]~13_combout\,
	combout => \inst20|y[4]~11_combout\);

\inst12|r2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[4]~11_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(4));

\inst12|r0[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[4]~11_combout\,
	sload => VCC,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(4));

\inst12|d[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[4]~30_combout\ = \inst|x\(3) & (\inst|x\(2)) # !\inst|x\(3) & (\inst|x\(2) & \inst12|r1\(4) # !\inst|x\(2) & (\inst12|r0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r1\(4),
	datab => \inst|x\(3),
	datac => \inst12|r0\(4),
	datad => \inst|x\(2),
	combout => \inst12|d[4]~30_combout\);

\inst12|d[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[4]~31_combout\ = \inst|x\(3) & (\inst12|d[4]~30_combout\ & \inst12|r3\(4) # !\inst12|d[4]~30_combout\ & (\inst12|r2\(4))) # !\inst|x\(3) & (\inst12|d[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r3\(4),
	datab => \inst|x\(3),
	datac => \inst12|r2\(4),
	datad => \inst12|d[4]~30_combout\,
	combout => \inst12|d[4]~31_combout\);

\inst9|y[4]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[4]~44_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & (\inst12|d[4]~31_combout\) # !\inst3|Equal4~0_combout\ & \inst9|y[4]~52_combout\) # !\inst4|sm~regout\ & \inst9|y[4]~52_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|y[4]~52_combout\,
	datab => \inst12|d[4]~31_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst9|y[4]~44_combout\);

\inst8|c[5]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[5]~46_combout\ = \inst8|c\(5) & !\inst8|c[4]~45\ # !\inst8|c\(5) & (\inst8|c[4]~45\ # GND)
-- \inst8|c[5]~47\ = CARRY(!\inst8|c[4]~45\ # !\inst8|c\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|c\(5),
	datad => VCC,
	cin => \inst8|c[4]~45\,
	combout => \inst8|c[5]~46_combout\,
	cout => \inst8|c[5]~47\);

\inst|x[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[0]~26_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(0));

\inst12|r3[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst20|y[5]~10_combout\,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(5));

\inst12|s[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[5]~29_combout\ = \inst12|s[5]~28_combout\ & (\inst12|r3\(5) # !\inst|x\(0)) # !\inst12|s[5]~28_combout\ & \inst|x\(0) & \inst12|r1\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[5]~28_combout\,
	datab => \inst|x\(0),
	datac => \inst12|r1\(5),
	datad => \inst12|r3\(5),
	combout => \inst12|s[5]~29_combout\);

\inst8|c[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[5]~46_combout\,
	sdata => \inst12|s[5]~29_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(5));

\inst20|y[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[5]~10_combout\ = \inst2|mux_s~10_combout\ & (\inst7[5]~11_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & \inst8|c\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~10_combout\,
	datab => \inst8|c\(5),
	datac => \inst7[7]~30_combout\,
	datad => \inst7[5]~11_combout\,
	combout => \inst20|y[5]~10_combout\);

\inst12|r1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[5]~10_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(5));

\inst12|r0[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[5]~10_combout\,
	sload => VCC,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(5));

\inst12|r2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[5]~10_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(5));

\inst12|d[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[5]~28_combout\ = \inst|x\(3) & (\inst|x\(2) # \inst12|r2\(5)) # !\inst|x\(3) & !\inst|x\(2) & \inst12|r0\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(3),
	datab => \inst|x\(2),
	datac => \inst12|r0\(5),
	datad => \inst12|r2\(5),
	combout => \inst12|d[5]~28_combout\);

\inst12|d[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[5]~29_combout\ = \inst|x\(2) & (\inst12|d[5]~28_combout\ & (\inst12|r3\(5)) # !\inst12|d[5]~28_combout\ & \inst12|r1\(5)) # !\inst|x\(2) & (\inst12|d[5]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst12|r1\(5),
	datac => \inst12|d[5]~28_combout\,
	datad => \inst12|r3\(5),
	combout => \inst12|d[5]~29_combout\);

\inst9|y[5]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[5]~53_combout\ = \inst3|Equal4~4_combout\ & (\inst4|sm~regout\ & \inst12|s[5]~29_combout\ # !\inst4|sm~regout\ & (\inst8|c\(5))) # !\inst3|Equal4~4_combout\ & (\inst8|c\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[5]~29_combout\,
	datab => \inst8|c\(5),
	datac => \inst3|Equal4~4_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst9|y[5]~53_combout\);

\inst9|y[5]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[5]~45_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & \inst12|d[5]~29_combout\ # !\inst3|Equal4~0_combout\ & (\inst9|y[5]~53_combout\)) # !\inst4|sm~regout\ & (\inst9|y[5]~53_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst12|d[5]~29_combout\,
	datac => \inst9|y[5]~53_combout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst9|y[5]~45_combout\);

\inst8|c[6]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[6]~48_combout\ = \inst8|c\(6) & (\inst8|c[5]~47\ $ GND) # !\inst8|c\(6) & !\inst8|c[5]~47\ & VCC
-- \inst8|c[6]~49\ = CARRY(\inst8|c\(6) & !\inst8|c[5]~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|c\(6),
	datad => VCC,
	cin => \inst8|c[5]~47\,
	combout => \inst8|c[6]~48_combout\,
	cout => \inst8|c[6]~49\);

\inst20|y[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[6]~9_combout\ = \inst2|mux_s~10_combout\ & (\inst7[6]~9_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & (\inst8|c\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[7]~30_combout\,
	datab => \inst8|c\(6),
	datac => \inst2|mux_s~10_combout\,
	datad => \inst7[6]~9_combout\,
	combout => \inst20|y[6]~9_combout\);

\inst12|r2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[6]~9_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(6));

\inst12|r1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[6]~9_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(6));

\inst12|r0[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[6]~9_combout\,
	sload => VCC,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(6));

\inst12|s[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[6]~26_combout\ = \inst|x\(0) & (\inst12|r1\(6) # \inst|x\(1)) # !\inst|x\(0) & (\inst12|r0\(6) & !\inst|x\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(0),
	datab => \inst12|r1\(6),
	datac => \inst12|r0\(6),
	datad => \inst|x\(1),
	combout => \inst12|s[6]~26_combout\);

\inst12|s[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[6]~27_combout\ = \inst|x\(1) & (\inst12|s[6]~26_combout\ & \inst12|r3\(6) # !\inst12|s[6]~26_combout\ & (\inst12|r2\(6))) # !\inst|x\(1) & (\inst12|s[6]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r3\(6),
	datab => \inst12|r2\(6),
	datac => \inst|x\(1),
	datad => \inst12|s[6]~26_combout\,
	combout => \inst12|s[6]~27_combout\);

\inst8|c[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[6]~48_combout\,
	sdata => \inst12|s[6]~27_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(6));

\inst9|y[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[6]~54_combout\ = \inst3|Equal4~4_combout\ & (\inst4|sm~regout\ & (\inst12|s[6]~27_combout\) # !\inst4|sm~regout\ & \inst8|c\(6)) # !\inst3|Equal4~4_combout\ & \inst8|c\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~4_combout\,
	datab => \inst8|c\(6),
	datac => \inst12|s[6]~27_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst9|y[6]~54_combout\);

\inst12|d[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[6]~26_combout\ = \inst|x\(3) & (\inst|x\(2)) # !\inst|x\(3) & (\inst|x\(2) & \inst12|r1\(6) # !\inst|x\(2) & (\inst12|r0\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r1\(6),
	datab => \inst12|r0\(6),
	datac => \inst|x\(3),
	datad => \inst|x\(2),
	combout => \inst12|d[6]~26_combout\);

\inst12|d[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[6]~27_combout\ = \inst|x\(3) & (\inst12|d[6]~26_combout\ & \inst12|r3\(6) # !\inst12|d[6]~26_combout\ & (\inst12|r2\(6))) # !\inst|x\(3) & (\inst12|d[6]~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r3\(6),
	datab => \inst|x\(3),
	datac => \inst12|r2\(6),
	datad => \inst12|d[6]~26_combout\,
	combout => \inst12|d[6]~27_combout\);

\inst9|y[6]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[6]~46_combout\ = \inst4|sm~regout\ & (\inst3|Equal4~0_combout\ & (\inst12|d[6]~27_combout\) # !\inst3|Equal4~0_combout\ & \inst9|y[6]~54_combout\) # !\inst4|sm~regout\ & (\inst9|y[6]~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datab => \inst3|Equal4~0_combout\,
	datac => \inst9|y[6]~54_combout\,
	datad => \inst12|d[6]~27_combout\,
	combout => \inst9|y[6]~46_combout\);

\inst8|c[7]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst8|c[7]~50_combout\ = \inst8|c[6]~49\ $ \inst8|c\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst8|c\(7),
	cin => \inst8|c[6]~49\,
	combout => \inst8|c[7]~50_combout\);

\inst12|r2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[7]~8_combout\,
	sload => VCC,
	ena => \inst12|Equal5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r2\(7));

\inst12|r0[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[7]~8_combout\,
	sload => VCC,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(7));

\inst12|s[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[7]~24_combout\ = \inst|x\(0) & (\inst|x\(1)) # !\inst|x\(0) & (\inst|x\(1) & \inst12|r2\(7) # !\inst|x\(1) & (\inst12|r0\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(0),
	datab => \inst12|r2\(7),
	datac => \inst12|r0\(7),
	datad => \inst|x\(1),
	combout => \inst12|s[7]~24_combout\);

\inst12|r3[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[7]~8_combout\,
	sload => VCC,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(7));

\inst12|s[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[7]~25_combout\ = \inst12|s[7]~24_combout\ & (\inst12|r3\(7) # !\inst|x\(0)) # !\inst12|s[7]~24_combout\ & \inst12|r1\(7) & (\inst|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r1\(7),
	datab => \inst12|s[7]~24_combout\,
	datac => \inst12|r3\(7),
	datad => \inst|x\(0),
	combout => \inst12|s[7]~25_combout\);

\inst8|c[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[7]~50_combout\,
	sdata => \inst12|s[7]~25_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(7));

\inst20|y[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[7]~8_combout\ = \inst2|mux_s~10_combout\ & (\inst7[7]~6_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & (\inst8|c\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~10_combout\,
	datab => \inst7[7]~30_combout\,
	datac => \inst8|c\(7),
	datad => \inst7[7]~6_combout\,
	combout => \inst20|y[7]~8_combout\);

\inst12|r1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst20|y[7]~8_combout\,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(7));

\inst12|d[7]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[7]~24_combout\ = \inst|x\(2) & (\inst|x\(3)) # !\inst|x\(2) & (\inst|x\(3) & (\inst12|r2\(7)) # !\inst|x\(3) & \inst12|r0\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst12|r0\(7),
	datac => \inst12|r2\(7),
	datad => \inst|x\(3),
	combout => \inst12|d[7]~24_combout\);

\inst12|d[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[7]~25_combout\ = \inst|x\(2) & (\inst12|d[7]~24_combout\ & (\inst12|r3\(7)) # !\inst12|d[7]~24_combout\ & \inst12|r1\(7)) # !\inst|x\(2) & (\inst12|d[7]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst12|r1\(7),
	datac => \inst12|r3\(7),
	datad => \inst12|d[7]~24_combout\,
	combout => \inst12|d[7]~25_combout\);

\inst9|y[7]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst9|y[7]~47_combout\ = \inst3|Equal4~0_combout\ & (\inst4|sm~regout\ & (\inst12|d[7]~25_combout\) # !\inst4|sm~regout\ & \inst9|y[7]~55_combout\) # !\inst3|Equal4~0_combout\ & \inst9|y[7]~55_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|y[7]~55_combout\,
	datab => \inst3|Equal4~0_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst12|d[7]~25_combout\,
	combout => \inst9|y[7]~47_combout\);

\inst1|sram|ram_block|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000A301E04C07E0D0B39109E064530000000000000000000000F0B302E08D7C966449C4000000000011A3",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => ".//small_computer.mif",
	init_file_layout => "port_a",
	logical_ram_name => "lpm_ram_io:inst1|altram:sram|altsyncram:ram_block|altsyncram_9ma1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst1|_~1_combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|sram|ram_block|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

\inst7[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[2]~16_combout\ = \input~combout\(2) & (\inst1|sram|ram_block|auto_generated|q_a\(2) # !\inst2|ram_re~combout\) # !\input~combout\(2) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(2) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(2),
	datab => \inst3|in1~9_combout\,
	datac => \inst2|ram_re~combout\,
	datad => \inst1|sram|ram_block|auto_generated|q_a\(2),
	combout => \inst7[2]~16_combout\);

\inst3|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~2_combout\ = \inst|x\(7) & \inst|x\(4) & !\inst|x\(6) & !\inst|x\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(7),
	datab => \inst|x\(4),
	datac => \inst|x\(6),
	datad => \inst|x\(5),
	combout => \inst3|Equal4~2_combout\);

\inst13|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~1_combout\ = !\inst3|Equal4~1_combout\ & \inst4|sm~regout\ & \inst3|Equal4~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~1_combout\,
	datab => \inst4|sm~regout\,
	datad => \inst3|Equal4~2_combout\,
	combout => \inst13|Add0~1_combout\);

\inst12|d[1]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[1]~36_combout\ = \inst|x\(2) & \inst|x\(3) # !\inst|x\(2) & (\inst|x\(3) & \inst12|r2\(1) # !\inst|x\(3) & (\inst12|r0\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst|x\(3),
	datac => \inst12|r2\(1),
	datad => \inst12|r0\(1),
	combout => \inst12|d[1]~36_combout\);

\inst12|d[1]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|d[1]~37_combout\ = \inst|x\(2) & (\inst12|d[1]~36_combout\ & (!\inst12|r3\(1)) # !\inst12|d[1]~36_combout\ & \inst12|r1\(1)) # !\inst|x\(2) & (\inst12|d[1]~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r1\(1),
	datab => \inst|x\(2),
	datac => \inst12|r3\(1),
	datad => \inst12|d[1]~36_combout\,
	combout => \inst12|d[1]~37_combout\);

\inst13|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~0_combout\ = \inst12|d[0]~39_combout\ & (GND # !\inst12|s[0]~39_combout\) # !\inst12|d[0]~39_combout\ & (\inst12|s[0]~39_combout\ $ GND)
-- \inst13|Add1~1\ = CARRY(\inst12|d[0]~39_combout\ # !\inst12|s[0]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[0]~39_combout\,
	datab => \inst12|s[0]~39_combout\,
	datad => VCC,
	combout => \inst13|Add1~0_combout\,
	cout => \inst13|Add1~1\);

\inst13|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~2_combout\ = \inst12|s[1]~37_combout\ & (\inst12|d[1]~37_combout\ & !\inst13|Add1~1\ # !\inst12|d[1]~37_combout\ & (\inst13|Add1~1\ # GND)) # !\inst12|s[1]~37_combout\ & (\inst12|d[1]~37_combout\ & \inst13|Add1~1\ & VCC # 
-- !\inst12|d[1]~37_combout\ & !\inst13|Add1~1\)
-- \inst13|Add1~3\ = CARRY(\inst12|s[1]~37_combout\ & (!\inst13|Add1~1\ # !\inst12|d[1]~37_combout\) # !\inst12|s[1]~37_combout\ & !\inst12|d[1]~37_combout\ & !\inst13|Add1~1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[1]~37_combout\,
	datab => \inst12|d[1]~37_combout\,
	datad => VCC,
	cin => \inst13|Add1~1\,
	combout => \inst13|Add1~2_combout\,
	cout => \inst13|Add1~3\);

\inst13|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~4_combout\ = (\inst12|d[2]~35_combout\ $ \inst12|s[2]~35_combout\ $ \inst13|Add1~3\) # GND
-- \inst13|Add1~5\ = CARRY(\inst12|d[2]~35_combout\ & (!\inst13|Add1~3\ # !\inst12|s[2]~35_combout\) # !\inst12|d[2]~35_combout\ & !\inst12|s[2]~35_combout\ & !\inst13|Add1~3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[2]~35_combout\,
	datab => \inst12|s[2]~35_combout\,
	datad => VCC,
	cin => \inst13|Add1~3\,
	combout => \inst13|Add1~4_combout\,
	cout => \inst13|Add1~5\);

\inst13|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~2_combout\ = \inst12|d[0]~39_combout\ & (\inst12|s[0]~39_combout\ $ VCC) # !\inst12|d[0]~39_combout\ & \inst12|s[0]~39_combout\ & VCC
-- \inst13|Add0~3\ = CARRY(\inst12|d[0]~39_combout\ & \inst12|s[0]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[0]~39_combout\,
	datab => \inst12|s[0]~39_combout\,
	datad => VCC,
	combout => \inst13|Add0~2_combout\,
	cout => \inst13|Add0~3\);

\inst13|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~4_combout\ = \inst12|s[1]~37_combout\ & (\inst12|d[1]~37_combout\ & \inst13|Add0~3\ & VCC # !\inst12|d[1]~37_combout\ & !\inst13|Add0~3\) # !\inst12|s[1]~37_combout\ & (\inst12|d[1]~37_combout\ & !\inst13|Add0~3\ # !\inst12|d[1]~37_combout\ & 
-- (\inst13|Add0~3\ # GND))
-- \inst13|Add0~5\ = CARRY(\inst12|s[1]~37_combout\ & !\inst12|d[1]~37_combout\ & !\inst13|Add0~3\ # !\inst12|s[1]~37_combout\ & (!\inst13|Add0~3\ # !\inst12|d[1]~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[1]~37_combout\,
	datab => \inst12|d[1]~37_combout\,
	datad => VCC,
	cin => \inst13|Add0~3\,
	combout => \inst13|Add0~4_combout\,
	cout => \inst13|Add0~5\);

\inst13|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~6_combout\ = (\inst12|d[2]~35_combout\ $ \inst12|s[2]~35_combout\ $ !\inst13|Add0~5\) # GND
-- \inst13|Add0~7\ = CARRY(\inst12|d[2]~35_combout\ & (\inst12|s[2]~35_combout\ # !\inst13|Add0~5\) # !\inst12|d[2]~35_combout\ & \inst12|s[2]~35_combout\ & !\inst13|Add0~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[2]~35_combout\,
	datab => \inst12|s[2]~35_combout\,
	datad => VCC,
	cin => \inst13|Add0~5\,
	combout => \inst13|Add0~6_combout\,
	cout => \inst13|Add0~7\);

\inst13|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~22_combout\ = \inst3|Equal4~1_combout\ & \inst13|Add0~6_combout\ & \inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal4~1_combout\,
	datac => \inst13|Add0~6_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst13|Add0~22_combout\);

\inst13|t[2]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[2]~43_combout\ = \inst13|Add0~22_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~4_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|t[7]~18_combout\,
	datab => \inst13|Add0~1_combout\,
	datac => \inst13|Add1~4_combout\,
	datad => \inst13|Add0~22_combout\,
	combout => \inst13|t[2]~43_combout\);

\inst7[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[2]~17_combout\ = \inst7[2]~16_combout\ & (\inst13|t[2]~43_combout\ # \inst13|Add0~0_combout\ & \inst12|s[2]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~0_combout\,
	datab => \inst12|s[2]~35_combout\,
	datac => \inst7[2]~16_combout\,
	datad => \inst13|t[2]~43_combout\,
	combout => \inst7[2]~17_combout\);

\inst20|y[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[2]~13_combout\ = \inst2|mux_s~10_combout\ & (\inst7[2]~17_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & \inst8|c\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~10_combout\,
	datab => \inst8|c\(2),
	datac => \inst7[7]~30_combout\,
	datad => \inst7[2]~17_combout\,
	combout => \inst20|y[2]~13_combout\);

\inst12|r3[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|r3[2]~8_combout\ = !\inst20|y[2]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|y[2]~13_combout\,
	combout => \inst12|r3[2]~8_combout\);

\inst12|r3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst12|r3[2]~8_combout\,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(2));

\inst12|s[2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[2]~34_combout\ = \inst|x\(1) & (\inst|x\(0)) # !\inst|x\(1) & (\inst|x\(0) & (\inst12|r1\(2)) # !\inst|x\(0) & \inst12|r0\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r0\(2),
	datab => \inst12|r1\(2),
	datac => \inst|x\(1),
	datad => \inst|x\(0),
	combout => \inst12|s[2]~34_combout\);

\inst12|s[2]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[2]~35_combout\ = \inst|x\(1) & (\inst12|s[2]~34_combout\ & (!\inst12|r3\(2)) # !\inst12|s[2]~34_combout\ & \inst12|r2\(2)) # !\inst|x\(1) & (\inst12|s[2]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r2\(2),
	datab => \inst12|r3\(2),
	datac => \inst|x\(1),
	datad => \inst12|s[2]~34_combout\,
	combout => \inst12|s[2]~35_combout\);

\inst8|c[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[2]~40_combout\,
	sdata => \inst12|s[2]~35_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(2));

\inst8|c[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst8|c[3]~42_combout\,
	sdata => \inst12|s[3]~33_combout\,
	sload => \inst8|always0~0_combout\,
	ena => \inst8|c~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst8|c\(3));

\inst20|y[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|y[3]~12_combout\ = \inst2|mux_s~10_combout\ & (\inst7[3]~15_combout\ # !\inst7[7]~30_combout\) # !\inst2|mux_s~10_combout\ & \inst8|c\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~10_combout\,
	datab => \inst8|c\(3),
	datac => \inst7[7]~30_combout\,
	datad => \inst7[3]~15_combout\,
	combout => \inst20|y[3]~12_combout\);

\inst12|r1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[3]~12_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(3));

\inst12|r3[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst20|y[3]~12_combout\,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(3));

\inst12|r0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[3]~12_combout\,
	sload => VCC,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(3));

\inst12|s[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[3]~32_combout\ = \inst|x\(1) & (\inst|x\(0) # \inst12|r2\(3)) # !\inst|x\(1) & !\inst|x\(0) & (\inst12|r0\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(1),
	datab => \inst|x\(0),
	datac => \inst12|r2\(3),
	datad => \inst12|r0\(3),
	combout => \inst12|s[3]~32_combout\);

\inst12|s[3]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[3]~33_combout\ = \inst|x\(0) & (\inst12|s[3]~32_combout\ & (\inst12|r3\(3)) # !\inst12|s[3]~32_combout\ & \inst12|r1\(3)) # !\inst|x\(0) & (\inst12|s[3]~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(0),
	datab => \inst12|r1\(3),
	datac => \inst12|r3\(3),
	datad => \inst12|s[3]~32_combout\,
	combout => \inst12|s[3]~33_combout\);

\inst13|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~6_combout\ = \inst12|s[3]~33_combout\ & (\inst12|d[3]~33_combout\ & !\inst13|Add1~5\ # !\inst12|d[3]~33_combout\ & (\inst13|Add1~5\ # GND)) # !\inst12|s[3]~33_combout\ & (\inst12|d[3]~33_combout\ & \inst13|Add1~5\ & VCC # 
-- !\inst12|d[3]~33_combout\ & !\inst13|Add1~5\)
-- \inst13|Add1~7\ = CARRY(\inst12|s[3]~33_combout\ & (!\inst13|Add1~5\ # !\inst12|d[3]~33_combout\) # !\inst12|s[3]~33_combout\ & !\inst12|d[3]~33_combout\ & !\inst13|Add1~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[3]~33_combout\,
	datab => \inst12|d[3]~33_combout\,
	datad => VCC,
	cin => \inst13|Add1~5\,
	combout => \inst13|Add1~6_combout\,
	cout => \inst13|Add1~7\);

\inst13|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~8_combout\ = \inst12|d[3]~33_combout\ & (\inst12|s[3]~33_combout\ & \inst13|Add0~7\ & VCC # !\inst12|s[3]~33_combout\ & !\inst13|Add0~7\) # !\inst12|d[3]~33_combout\ & (\inst12|s[3]~33_combout\ & !\inst13|Add0~7\ # !\inst12|s[3]~33_combout\ & 
-- (\inst13|Add0~7\ # GND))
-- \inst13|Add0~9\ = CARRY(\inst12|d[3]~33_combout\ & !\inst12|s[3]~33_combout\ & !\inst13|Add0~7\ # !\inst12|d[3]~33_combout\ & (!\inst13|Add0~7\ # !\inst12|s[3]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[3]~33_combout\,
	datab => \inst12|s[3]~33_combout\,
	datad => VCC,
	cin => \inst13|Add0~7\,
	combout => \inst13|Add0~8_combout\,
	cout => \inst13|Add0~9\);

\inst13|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~21_combout\ = \inst3|Equal4~1_combout\ & \inst13|Add0~8_combout\ & \inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal4~1_combout\,
	datac => \inst13|Add0~8_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst13|Add0~21_combout\);

\inst13|t[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[3]~42_combout\ = \inst13|Add0~21_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~6_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|t[7]~18_combout\,
	datab => \inst13|Add0~1_combout\,
	datac => \inst13|Add1~6_combout\,
	datad => \inst13|Add0~21_combout\,
	combout => \inst13|t[3]~42_combout\);

\inst7[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[3]~14_combout\ = \input~combout\(3) & (\inst1|sram|ram_block|auto_generated|q_a\(3) # !\inst2|ram_re~combout\) # !\input~combout\(3) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(3) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(3),
	datab => \inst3|in1~9_combout\,
	datac => \inst2|ram_re~combout\,
	datad => \inst1|sram|ram_block|auto_generated|q_a\(3),
	combout => \inst7[3]~14_combout\);

\inst7[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[3]~15_combout\ = \inst7[3]~14_combout\ & (\inst13|t[3]~42_combout\ # \inst13|Add0~0_combout\ & \inst12|s[3]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~0_combout\,
	datab => \inst12|s[3]~33_combout\,
	datac => \inst13|t[3]~42_combout\,
	datad => \inst7[3]~14_combout\,
	combout => \inst7[3]~15_combout\);

\inst7[3]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[3]~29_combout\ = \inst7[3]~15_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7[7]~30_combout\,
	datac => \inst7[3]~15_combout\,
	combout => \inst7[3]~29_combout\);

\inst|x[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[3]~29_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(3));

\inst12|Equal5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|Equal5~2_combout\ = \inst|x\(2) & \inst|x\(3) & \inst2|reg_we~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(2),
	datab => \inst|x\(3),
	datad => \inst2|reg_we~7_combout\,
	combout => \inst12|Equal5~2_combout\);

\inst12|r3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst12|r3[0]~10_combout\,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(0));

\inst12|r0[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|r0[0]~9_combout\ = !\inst20|y[0]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|y[0]~15_combout\,
	combout => \inst12|r0[0]~9_combout\);

\inst12|r0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst12|r0[0]~9_combout\,
	ena => \inst12|r0[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r0\(0));

\inst12|r1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[0]~15_combout\,
	sload => VCC,
	ena => \inst12|Equal5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r1\(0));

\inst12|s[0]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[0]~38_combout\ = \inst|x\(0) & (\inst|x\(1) # \inst12|r1\(0)) # !\inst|x\(0) & !\inst|x\(1) & !\inst12|r0\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(0),
	datab => \inst|x\(1),
	datac => \inst12|r0\(0),
	datad => \inst12|r1\(0),
	combout => \inst12|s[0]~38_combout\);

\inst12|s[0]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[0]~39_combout\ = \inst|x\(1) & (\inst12|s[0]~38_combout\ & (!\inst12|r3\(0)) # !\inst12|s[0]~38_combout\ & \inst12|r2\(0)) # !\inst|x\(1) & (\inst12|s[0]~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r2\(0),
	datab => \inst12|r3\(0),
	datac => \inst|x\(1),
	datad => \inst12|s[0]~38_combout\,
	combout => \inst12|s[0]~39_combout\);

\inst13|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~24_combout\ = \inst4|sm~regout\ & \inst3|Equal4~1_combout\ & \inst13|Add0~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datac => \inst3|Equal4~1_combout\,
	datad => \inst13|Add0~2_combout\,
	combout => \inst13|Add0~24_combout\);

\inst13|t[0]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[0]~45_combout\ = \inst13|Add0~24_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~0_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~1_combout\,
	datab => \inst13|t[7]~18_combout\,
	datac => \inst13|Add1~0_combout\,
	datad => \inst13|Add0~24_combout\,
	combout => \inst13|t[0]~45_combout\);

\input[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_input(0),
	combout => \input~combout\(0));

\inst7[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[0]~20_combout\ = \inst2|ram_re~combout\ & \inst1|sram|ram_block|auto_generated|q_a\(0) & (\input~combout\(0) # !\inst3|in1~9_combout\) # !\inst2|ram_re~combout\ & (\input~combout\(0) # !\inst3|in1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ram_re~combout\,
	datab => \input~combout\(0),
	datac => \inst1|sram|ram_block|auto_generated|q_a\(0),
	datad => \inst3|in1~9_combout\,
	combout => \inst7[0]~20_combout\);

\inst7[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[0]~21_combout\ = \inst7[0]~20_combout\ & (\inst13|t[0]~45_combout\ # \inst12|s[0]~39_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[0]~39_combout\,
	datab => \inst13|Add0~0_combout\,
	datac => \inst13|t[0]~45_combout\,
	datad => \inst7[0]~20_combout\,
	combout => \inst7[0]~21_combout\);

\inst7[0]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[0]~26_combout\ = \inst7[0]~21_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7[7]~30_combout\,
	datad => \inst7[0]~21_combout\,
	combout => \inst7[0]~26_combout\);

\inst7[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[5]~10_combout\ = \input~combout\(5) & (\inst1|sram|ram_block|auto_generated|q_a\(5) # !\inst2|ram_re~combout\) # !\input~combout\(5) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(5) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(5),
	datab => \inst2|ram_re~combout\,
	datac => \inst1|sram|ram_block|auto_generated|q_a\(5),
	datad => \inst3|in1~9_combout\,
	combout => \inst7[5]~10_combout\);

\inst13|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~10_combout\ = (\inst12|s[4]~31_combout\ $ \inst12|d[4]~31_combout\ $ !\inst13|Add0~9\) # GND
-- \inst13|Add0~11\ = CARRY(\inst12|s[4]~31_combout\ & (\inst12|d[4]~31_combout\ # !\inst13|Add0~9\) # !\inst12|s[4]~31_combout\ & \inst12|d[4]~31_combout\ & !\inst13|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[4]~31_combout\,
	datab => \inst12|d[4]~31_combout\,
	datad => VCC,
	cin => \inst13|Add0~9\,
	combout => \inst13|Add0~10_combout\,
	cout => \inst13|Add0~11\);

\inst13|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~12_combout\ = \inst12|s[5]~29_combout\ & (\inst12|d[5]~29_combout\ & \inst13|Add0~11\ & VCC # !\inst12|d[5]~29_combout\ & !\inst13|Add0~11\) # !\inst12|s[5]~29_combout\ & (\inst12|d[5]~29_combout\ & !\inst13|Add0~11\ # 
-- !\inst12|d[5]~29_combout\ & (\inst13|Add0~11\ # GND))
-- \inst13|Add0~13\ = CARRY(\inst12|s[5]~29_combout\ & !\inst12|d[5]~29_combout\ & !\inst13|Add0~11\ # !\inst12|s[5]~29_combout\ & (!\inst13|Add0~11\ # !\inst12|d[5]~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[5]~29_combout\,
	datab => \inst12|d[5]~29_combout\,
	datad => VCC,
	cin => \inst13|Add0~11\,
	combout => \inst13|Add0~12_combout\,
	cout => \inst13|Add0~13\);

\inst13|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~19_combout\ = \inst4|sm~regout\ & \inst3|Equal4~1_combout\ & \inst13|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sm~regout\,
	datac => \inst3|Equal4~1_combout\,
	datad => \inst13|Add0~12_combout\,
	combout => \inst13|Add0~19_combout\);

\inst13|t[5]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[5]~40_combout\ = \inst13|Add0~19_combout\ # \inst13|Add1~10_combout\ & \inst13|Add0~1_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add1~10_combout\,
	datab => \inst13|t[7]~18_combout\,
	datac => \inst13|Add0~1_combout\,
	datad => \inst13|Add0~19_combout\,
	combout => \inst13|t[5]~40_combout\);

\inst7[5]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[5]~11_combout\ = \inst7[5]~10_combout\ & (\inst13|t[5]~40_combout\ # \inst12|s[5]~29_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[5]~29_combout\,
	datab => \inst13|Add0~0_combout\,
	datac => \inst7[5]~10_combout\,
	datad => \inst13|t[5]~40_combout\,
	combout => \inst7[5]~11_combout\);

\inst7[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[5]~24_combout\ = \inst7[5]~11_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7[7]~30_combout\,
	datad => \inst7[5]~11_combout\,
	combout => \inst7[5]~24_combout\);

\inst|x[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[5]~24_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(5));

\inst3|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~1_combout\ = \inst|x\(7) & !\inst|x\(6) & !\inst|x\(4) & !\inst|x\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(7),
	datab => \inst|x\(6),
	datac => \inst|x\(4),
	datad => \inst|x\(5),
	combout => \inst3|Equal4~1_combout\);

\inst13|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~14_combout\ = (\inst12|d[6]~27_combout\ $ \inst12|s[6]~27_combout\ $ !\inst13|Add0~13\) # GND
-- \inst13|Add0~15\ = CARRY(\inst12|d[6]~27_combout\ & (\inst12|s[6]~27_combout\ # !\inst13|Add0~13\) # !\inst12|d[6]~27_combout\ & \inst12|s[6]~27_combout\ & !\inst13|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[6]~27_combout\,
	datab => \inst12|s[6]~27_combout\,
	datad => VCC,
	cin => \inst13|Add0~13\,
	combout => \inst13|Add0~14_combout\,
	cout => \inst13|Add0~15\);

\inst13|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~18_combout\ = \inst4|sm~regout\ & \inst3|Equal4~1_combout\ & \inst13|Add0~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|sm~regout\,
	datac => \inst3|Equal4~1_combout\,
	datad => \inst13|Add0~14_combout\,
	combout => \inst13|Add0~18_combout\);

\inst13|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~8_combout\ = (\inst12|s[4]~31_combout\ $ \inst12|d[4]~31_combout\ $ \inst13|Add1~7\) # GND
-- \inst13|Add1~9\ = CARRY(\inst12|s[4]~31_combout\ & \inst12|d[4]~31_combout\ & !\inst13|Add1~7\ # !\inst12|s[4]~31_combout\ & (\inst12|d[4]~31_combout\ # !\inst13|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[4]~31_combout\,
	datab => \inst12|d[4]~31_combout\,
	datad => VCC,
	cin => \inst13|Add1~7\,
	combout => \inst13|Add1~8_combout\,
	cout => \inst13|Add1~9\);

\inst13|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add1~12_combout\ = (\inst12|d[6]~27_combout\ $ \inst12|s[6]~27_combout\ $ \inst13|Add1~11\) # GND
-- \inst13|Add1~13\ = CARRY(\inst12|d[6]~27_combout\ & (!\inst13|Add1~11\ # !\inst12|s[6]~27_combout\) # !\inst12|d[6]~27_combout\ & !\inst12|s[6]~27_combout\ & !\inst13|Add1~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|d[6]~27_combout\,
	datab => \inst12|s[6]~27_combout\,
	datad => VCC,
	cin => \inst13|Add1~11\,
	combout => \inst13|Add1~12_combout\,
	cout => \inst13|Add1~13\);

\inst13|t[6]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[6]~39_combout\ = \inst13|Add0~18_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~12_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~1_combout\,
	datab => \inst13|t[7]~18_combout\,
	datac => \inst13|Add0~18_combout\,
	datad => \inst13|Add1~12_combout\,
	combout => \inst13|t[6]~39_combout\);

\inst7[6]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[6]~8_combout\ = \input~combout\(6) & (\inst1|sram|ram_block|auto_generated|q_a\(6) # !\inst2|ram_re~combout\) # !\input~combout\(6) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(6) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(6),
	datab => \inst2|ram_re~combout\,
	datac => \inst1|sram|ram_block|auto_generated|q_a\(6),
	datad => \inst3|in1~9_combout\,
	combout => \inst7[6]~8_combout\);

\inst7[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[6]~9_combout\ = \inst7[6]~8_combout\ & (\inst13|t[6]~39_combout\ # \inst12|s[6]~27_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[6]~27_combout\,
	datab => \inst13|Add0~0_combout\,
	datac => \inst13|t[6]~39_combout\,
	datad => \inst7[6]~8_combout\,
	combout => \inst7[6]~9_combout\);

\inst7[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[6]~23_combout\ = \inst7[6]~9_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7[7]~30_combout\,
	datad => \inst7[6]~9_combout\,
	combout => \inst7[6]~23_combout\);

\inst|x[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[6]~23_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(6));

\inst7[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~2_combout\ = \inst|x\(4) & \inst|x\(7) & \inst|x\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(4),
	datab => \inst|x\(7),
	datad => \inst|x\(6),
	combout => \inst7[7]~2_combout\);

\inst4|sm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|sm~0_combout\ = \inst|x\(5) & \inst7[7]~2_combout\ # !\inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(5),
	datac => \inst4|sm~regout\,
	datad => \inst7[7]~2_combout\,
	combout => \inst4|sm~0_combout\);

\inst4|sm\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst4|sm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|sm~regout\);

\inst2|au_en~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|au_en~4_combout\ = \inst3|Equal4~0_combout\ # \inst7[7]~2_combout\ & !\inst|x\(5) # !\inst2|mux_s~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|mux_s~11_combout\,
	datab => \inst3|Equal4~0_combout\,
	datac => \inst7[7]~2_combout\,
	datad => \inst|x\(5),
	combout => \inst2|au_en~4_combout\);

\inst13|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~0_combout\ = !\inst3|Equal4~1_combout\ & \inst4|sm~regout\ & \inst2|au_en~4_combout\ & !\inst3|Equal4~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~1_combout\,
	datab => \inst4|sm~regout\,
	datac => \inst2|au_en~4_combout\,
	datad => \inst3|Equal4~2_combout\,
	combout => \inst13|Add0~0_combout\);

\inst7[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[1]~18_combout\ = \input~combout\(1) & (\inst1|sram|ram_block|auto_generated|q_a\(1) # !\inst2|ram_re~combout\) # !\input~combout\(1) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(1) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(1),
	datab => \inst2|ram_re~combout\,
	datac => \inst1|sram|ram_block|auto_generated|q_a\(1),
	datad => \inst3|in1~9_combout\,
	combout => \inst7[1]~18_combout\);

\inst13|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~23_combout\ = \inst3|Equal4~1_combout\ & \inst13|Add0~4_combout\ & \inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal4~1_combout\,
	datac => \inst13|Add0~4_combout\,
	datad => \inst4|sm~regout\,
	combout => \inst13|Add0~23_combout\);

\inst13|t[1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[1]~44_combout\ = \inst13|Add0~23_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~2_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~1_combout\,
	datab => \inst13|t[7]~18_combout\,
	datac => \inst13|Add1~2_combout\,
	datad => \inst13|Add0~23_combout\,
	combout => \inst13|t[1]~44_combout\);

\inst7[1]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[1]~19_combout\ = \inst7[1]~18_combout\ & (\inst13|t[1]~44_combout\ # \inst12|s[1]~37_combout\ & \inst13|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[1]~37_combout\,
	datab => \inst13|Add0~0_combout\,
	datac => \inst7[1]~18_combout\,
	datad => \inst13|t[1]~44_combout\,
	combout => \inst7[1]~19_combout\);

\inst7[1]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[1]~27_combout\ = \inst7[1]~19_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7[7]~30_combout\,
	datad => \inst7[1]~19_combout\,
	combout => \inst7[1]~27_combout\);

\inst|x[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[1]~27_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(1));

\inst12|r3[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst20|y[4]~11_combout\,
	sload => VCC,
	ena => \inst12|Equal5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|r3\(4));

\inst12|s[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[4]~30_combout\ = \inst|x\(1) & (\inst|x\(0)) # !\inst|x\(1) & (\inst|x\(0) & \inst12|r1\(4) # !\inst|x\(0) & (\inst12|r0\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r1\(4),
	datab => \inst|x\(1),
	datac => \inst12|r0\(4),
	datad => \inst|x\(0),
	combout => \inst12|s[4]~30_combout\);

\inst12|s[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst12|s[4]~31_combout\ = \inst|x\(1) & (\inst12|s[4]~30_combout\ & (\inst12|r3\(4)) # !\inst12|s[4]~30_combout\ & \inst12|r2\(4)) # !\inst|x\(1) & (\inst12|s[4]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|r2\(4),
	datab => \inst|x\(1),
	datac => \inst12|r3\(4),
	datad => \inst12|s[4]~30_combout\,
	combout => \inst12|s[4]~31_combout\);

\inst7[4]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[4]~12_combout\ = \input~combout\(4) & (\inst1|sram|ram_block|auto_generated|q_a\(4) # !\inst2|ram_re~combout\) # !\input~combout\(4) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(4) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(4),
	datab => \inst3|in1~9_combout\,
	datac => \inst1|sram|ram_block|auto_generated|q_a\(4),
	datad => \inst2|ram_re~combout\,
	combout => \inst7[4]~12_combout\);

\inst13|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~20_combout\ = \inst4|sm~regout\ & \inst3|Equal4~1_combout\ & \inst13|Add0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sm~regout\,
	datac => \inst3|Equal4~1_combout\,
	datad => \inst13|Add0~10_combout\,
	combout => \inst13|Add0~20_combout\);

\inst13|t[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[4]~41_combout\ = \inst13|Add0~20_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~8_combout\ # !\inst13|t[7]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~1_combout\,
	datab => \inst13|t[7]~18_combout\,
	datac => \inst13|Add0~20_combout\,
	datad => \inst13|Add1~8_combout\,
	combout => \inst13|t[4]~41_combout\);

\inst7[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[4]~13_combout\ = \inst7[4]~12_combout\ & (\inst13|t[4]~41_combout\ # \inst13|Add0~0_combout\ & \inst12|s[4]~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|Add0~0_combout\,
	datab => \inst12|s[4]~31_combout\,
	datac => \inst7[4]~12_combout\,
	datad => \inst13|t[4]~41_combout\,
	combout => \inst7[4]~13_combout\);

\inst7[4]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[4]~25_combout\ = \inst7[4]~13_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7[7]~30_combout\,
	datad => \inst7[4]~13_combout\,
	combout => \inst7[4]~25_combout\);

\inst|x[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	sdata => \inst7[4]~25_combout\,
	sload => VCC,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(4));

\inst3|Equal4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Equal4~3_combout\ = !\inst|x\(5) & \inst|x\(7) & !\inst|x\(4) & \inst|x\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(5),
	datab => \inst|x\(7),
	datac => \inst|x\(4),
	datad => \inst|x\(6),
	combout => \inst3|Equal4~3_combout\);

\inst7[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~30_combout\ = \inst13|t[7]~18_combout\ # \inst2|ram_re~combout\ # \inst3|Equal4~3_combout\ & \inst4|sm~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|t[7]~18_combout\,
	datab => \inst3|Equal4~3_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst2|ram_re~combout\,
	combout => \inst7[7]~30_combout\);

\inst7[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~22_combout\ = \inst7[7]~6_combout\ # !\inst7[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7[7]~30_combout\,
	datad => \inst7[7]~6_combout\,
	combout => \inst7[7]~22_combout\);

\inst|x[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \inst7[7]~22_combout\,
	ena => \inst4|ALT_INV_sm~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|x\(7));

\inst13|t[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[7]~38_combout\ = !\inst|x\(5) & (\inst|x\(6) & (\inst|x\(4) # !\inst|x\(7)) # !\inst|x\(6) & \inst|x\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|x\(6),
	datab => \inst|x\(7),
	datac => \inst|x\(4),
	datad => \inst|x\(5),
	combout => \inst13|t[7]~38_combout\);

\inst13|t[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|t[7]~18_combout\ = \inst13|t[7]~38_combout\ & \inst4|sm~regout\ & \inst2|au_en~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|t[7]~38_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst2|au_en~4_combout\,
	combout => \inst13|t[7]~18_combout\);

\inst7[7]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~3_combout\ = \inst12|s[7]~25_combout\ & (\inst13|Add0~0_combout\ # \inst13|Add0~1_combout\ & \inst13|Add1~14_combout\) # !\inst12|s[7]~25_combout\ & \inst13|Add0~1_combout\ & \inst13|Add1~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[7]~25_combout\,
	datab => \inst13|Add0~1_combout\,
	datac => \inst13|Add1~14_combout\,
	datad => \inst13|Add0~0_combout\,
	combout => \inst7[7]~3_combout\);

\inst13|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst13|Add0~16_combout\ = \inst12|s[7]~25_combout\ $ \inst13|Add0~15\ $ \inst12|d[7]~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|s[7]~25_combout\,
	datad => \inst12|d[7]~25_combout\,
	cin => \inst13|Add0~15\,
	combout => \inst13|Add0~16_combout\);

\inst7[7]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~5_combout\ = \inst3|Equal4~1_combout\ & \inst4|sm~regout\ & \inst13|Add0~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Equal4~1_combout\,
	datac => \inst4|sm~regout\,
	datad => \inst13|Add0~16_combout\,
	combout => \inst7[7]~5_combout\);

\inst7[7]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~4_combout\ = \input~combout\(7) & (\inst1|sram|ram_block|auto_generated|q_a\(7) # !\inst2|ram_re~combout\) # !\input~combout\(7) & !\inst3|in1~9_combout\ & (\inst1|sram|ram_block|auto_generated|q_a\(7) # !\inst2|ram_re~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input~combout\(7),
	datab => \inst3|in1~9_combout\,
	datac => \inst2|ram_re~combout\,
	datad => \inst1|sram|ram_block|auto_generated|q_a\(7),
	combout => \inst7[7]~4_combout\);

\inst7[7]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~6_combout\ = \inst7[7]~4_combout\ & (\inst7[7]~3_combout\ # \inst7[7]~5_combout\ # !\inst13|t[7]~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|t[7]~18_combout\,
	datab => \inst7[7]~3_combout\,
	datac => \inst7[7]~5_combout\,
	datad => \inst7[7]~4_combout\,
	combout => \inst7[7]~6_combout\);

\inst7[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7[7]~7_combout\ = \inst7[7]~30_combout\ & \inst4|sm~regout\ & \inst7[7]~2_combout\ & !\inst|x\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7[7]~30_combout\,
	datab => \inst4|sm~regout\,
	datac => \inst7[7]~2_combout\,
	datad => \inst|x\(5),
	combout => \inst7[7]~7_combout\);

\output[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[7]~6_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(7));

\output[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[6]~9_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(6));

\output[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[5]~11_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(5));

\output[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[4]~13_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(4));

\output[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[3]~15_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(3));

\output[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[2]~17_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(2));

\output[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[1]~19_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(1));

\output[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7[0]~21_combout\,
	oe => \inst7[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_output(0));
END structure;


