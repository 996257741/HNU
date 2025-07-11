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

-- DATE "11/26/2024 22:28:42"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, cycloneii;
USE IEEE.std_logic_1164.all;
USE cycloneii.cycloneii_components.all;

ENTITY 	ins_decode IS
    PORT (
	en : IN std_logic;
	ir : IN std_logic_vector(7 DOWNTO 0);
	mova : OUT std_logic;
	movb : OUT std_logic;
	movc : OUT std_logic;
	movd : OUT std_logic;
	movi : OUT std_logic;
	add : OUT std_logic;
	sub : OUT std_logic;
	jmp : OUT std_logic;
	jg : OUT std_logic;
	in1 : OUT std_logic;
	out1 : OUT std_logic;
	halt : OUT std_logic
	);
END ins_decode;

ARCHITECTURE structure OF ins_decode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_ir : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mova : std_logic;
SIGNAL ww_movb : std_logic;
SIGNAL ww_movc : std_logic;
SIGNAL ww_movd : std_logic;
SIGNAL ww_movi : std_logic;
SIGNAL ww_add : std_logic;
SIGNAL ww_sub : std_logic;
SIGNAL ww_jmp : std_logic;
SIGNAL ww_jg : std_logic;
SIGNAL ww_in1 : std_logic;
SIGNAL ww_out1 : std_logic;
SIGNAL ww_halt : std_logic;
SIGNAL \movd~4_combout\ : std_logic;
SIGNAL \mova~1_combout\ : std_logic;
SIGNAL \movb~2_combout\ : std_logic;
SIGNAL \movb~3_combout\ : std_logic;
SIGNAL \movc~3_combout\ : std_logic;
SIGNAL \jg~12_combout\ : std_logic;
SIGNAL \movd~5_combout\ : std_logic;
SIGNAL \movi~11_combout\ : std_logic;
SIGNAL \en~combout\ : std_logic;
SIGNAL \movi~12_combout\ : std_logic;
SIGNAL \out1~10_combout\ : std_logic;
SIGNAL \add~5_combout\ : std_logic;
SIGNAL \sub~6_combout\ : std_logic;
SIGNAL \jmp~7_combout\ : std_logic;
SIGNAL \jg~13_combout\ : std_logic;
SIGNAL \in1~9_combout\ : std_logic;
SIGNAL \out1~11_combout\ : std_logic;
SIGNAL \halt~13_combout\ : std_logic;
SIGNAL \halt~12_combout\ : std_logic;
SIGNAL \halt~14_combout\ : std_logic;
SIGNAL \ir~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_en <= en;
ww_ir <= ir;
mova <= ww_mova;
movb <= ww_movb;
movc <= ww_movc;
movd <= ww_movd;
movi <= ww_movi;
add <= ww_add;
sub <= ww_sub;
jmp <= ww_jmp;
jg <= ww_jg;
in1 <= ww_in1;
out1 <= ww_out1;
halt <= ww_halt;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ir[7]~I\ : cycloneii_io
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
	padio => ww_ir(7),
	combout => \ir~combout\(7));

\ir[6]~I\ : cycloneii_io
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
	padio => ww_ir(6),
	combout => \ir~combout\(6));

\movd~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \movd~4_combout\ = \en~combout\ & !\ir~combout\(7) & \ir~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datac => \ir~combout\(7),
	datad => \ir~combout\(6),
	combout => \movd~4_combout\);

\ir[5]~I\ : cycloneii_io
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
	padio => ww_ir(5),
	combout => \ir~combout\(5));

\ir[4]~I\ : cycloneii_io
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
	padio => ww_ir(4),
	combout => \ir~combout\(4));

\mova~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mova~1_combout\ = \movd~4_combout\ & !\ir~combout\(5) & !\ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movd~4_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \mova~1_combout\);

\ir[2]~I\ : cycloneii_io
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
	padio => ww_ir(2),
	combout => \ir~combout\(2));

\ir[3]~I\ : cycloneii_io
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
	padio => ww_ir(3),
	combout => \ir~combout\(3));

\movb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \movb~2_combout\ = !\ir~combout\(2) & !\ir~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir~combout\(2),
	datad => \ir~combout\(3),
	combout => \movb~2_combout\);

\movb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \movb~3_combout\ = \ir~combout\(4) & \movb~2_combout\ & !\ir~combout\(5) & \movd~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(4),
	datab => \movb~2_combout\,
	datac => \ir~combout\(5),
	datad => \movd~4_combout\,
	combout => \movb~3_combout\);

\movc~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \movc~3_combout\ = \movd~4_combout\ & \ir~combout\(5) & !\ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \movd~4_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \movc~3_combout\);

\jg~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \jg~12_combout\ = \ir~combout\(5) & \ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \jg~12_combout\);

\movd~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \movd~5_combout\ = \movd~4_combout\ & \jg~12_combout\ & \ir~combout\(2) & \ir~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movd~4_combout\,
	datab => \jg~12_combout\,
	datac => \ir~combout\(2),
	datad => \ir~combout\(3),
	combout => \movd~5_combout\);

\movi~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \movi~11_combout\ = \ir~combout\(6) & \ir~combout\(7) & \ir~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \ir~combout\(7),
	datac => \ir~combout\(5),
	combout => \movi~11_combout\);

\en~I\ : cycloneii_io
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
	padio => ww_en,
	combout => \en~combout\);

\movi~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \movi~12_combout\ = \movi~11_combout\ & \movb~2_combout\ & \en~combout\ & !\ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \movi~11_combout\,
	datab => \movb~2_combout\,
	datac => \en~combout\,
	datad => \ir~combout\(4),
	combout => \movi~12_combout\);

\out1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \out1~10_combout\ = \en~combout\ & \ir~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \en~combout\,
	datac => \ir~combout\(7),
	combout => \out1~10_combout\);

\add~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \add~5_combout\ = !\ir~combout\(6) & \out1~10_combout\ & !\ir~combout\(5) & !\ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \out1~10_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \add~5_combout\);

\sub~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub~6_combout\ = !\ir~combout\(6) & \out1~10_combout\ & !\ir~combout\(5) & \ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \out1~10_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \sub~6_combout\);

\jmp~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \jmp~7_combout\ = !\ir~combout\(6) & \out1~10_combout\ & \ir~combout\(5) & !\ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \out1~10_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \jmp~7_combout\);

\jg~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \jg~13_combout\ = !\ir~combout\(6) & \out1~10_combout\ & \ir~combout\(5) & \ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \out1~10_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \jg~13_combout\);

\in1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \in1~9_combout\ = \ir~combout\(6) & \out1~10_combout\ & !\ir~combout\(5) & !\ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \out1~10_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \in1~9_combout\);

\out1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \out1~11_combout\ = \ir~combout\(6) & \out1~10_combout\ & !\ir~combout\(5) & \ir~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \out1~10_combout\,
	datac => \ir~combout\(5),
	datad => \ir~combout\(4),
	combout => \out1~11_combout\);

\halt~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \halt~13_combout\ = \ir~combout\(5) & \en~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(5),
	datac => \en~combout\,
	combout => \halt~13_combout\);

\ir[0]~I\ : cycloneii_io
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
	padio => ww_ir(0),
	combout => \ir~combout\(0));

\ir[1]~I\ : cycloneii_io
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
	padio => ww_ir(1),
	combout => \ir~combout\(1));

\halt~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \halt~12_combout\ = \ir~combout\(6) & !\ir~combout\(0) & \ir~combout\(7) & !\ir~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(6),
	datab => \ir~combout\(0),
	datac => \ir~combout\(7),
	datad => \ir~combout\(1),
	combout => \halt~12_combout\);

\halt~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \halt~14_combout\ = \ir~combout\(4) & \halt~13_combout\ & \halt~12_combout\ & \movb~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ir~combout\(4),
	datab => \halt~13_combout\,
	datac => \halt~12_combout\,
	datad => \movb~2_combout\,
	combout => \halt~14_combout\);

\mova~I\ : cycloneii_io
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
	datain => \mova~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_mova);

\movb~I\ : cycloneii_io
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
	datain => \movb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_movb);

\movc~I\ : cycloneii_io
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
	datain => \movc~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_movc);

\movd~I\ : cycloneii_io
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
	datain => \movd~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_movd);

\movi~I\ : cycloneii_io
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
	datain => \movi~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_movi);

\add~I\ : cycloneii_io
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
	datain => \add~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_add);

\sub~I\ : cycloneii_io
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
	datain => \sub~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sub);

\jmp~I\ : cycloneii_io
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
	datain => \jmp~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_jmp);

\jg~I\ : cycloneii_io
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
	datain => \jg~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_jg);

\in1~I\ : cycloneii_io
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
	datain => \in1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_in1);

\out1~I\ : cycloneii_io
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
	datain => \out1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_out1);

\halt~I\ : cycloneii_io
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
	datain => \halt~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_halt);
END structure;


