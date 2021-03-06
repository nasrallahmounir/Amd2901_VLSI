--
-- Generated by VASY
--
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

library cells;
use cells.all;

ENTITY accu IS
PORT(
  accu	: INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
  alu_out	: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
  cke	: IN STD_LOGIC;
  i	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
  q0_from	: IN STD_LOGIC;
  q0_to	: OUT STD_LOGIC;
  q3_from	: IN STD_LOGIC;
  q3_to	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
);
END accu;

ARCHITECTURE RTL OF accu IS
  SIGNAL accu_reg	: STD_LOGIC_VECTOR(3 DOWNTO 0);
  SIGNAL not_accu_reg	: STD_LOGIC_VECTOR(3 DOWNTO 1);
  SIGNAL not_i	: STD_LOGIC_VECTOR(2 DOWNTO 1);
  SIGNAL oa22_x2_sig	: STD_LOGIC;
  SIGNAL oa22_x2_4_sig	: STD_LOGIC;
  SIGNAL oa22_x2_3_sig	: STD_LOGIC;
  SIGNAL oa22_x2_2_sig	: STD_LOGIC;
  SIGNAL o3_x2_sig	: STD_LOGIC;
  SIGNAL o3_x2_4_sig	: STD_LOGIC;
  SIGNAL o3_x2_3_sig	: STD_LOGIC;
  SIGNAL o3_x2_2_sig	: STD_LOGIC;
  SIGNAL o2_x2_sig	: STD_LOGIC;
  SIGNAL o2_x2_2_sig	: STD_LOGIC;
  SIGNAL not_aux4	: STD_LOGIC;
  SIGNAL not_aux3	: STD_LOGIC;
  SIGNAL not_aux2	: STD_LOGIC;
  SIGNAL not_aux1	: STD_LOGIC;
  SIGNAL not_aux0	: STD_LOGIC;
  SIGNAL no2_x1_sig	: STD_LOGIC;
  SIGNAL no2_x1_5_sig	: STD_LOGIC;
  SIGNAL no2_x1_4_sig	: STD_LOGIC;
  SIGNAL no2_x1_3_sig	: STD_LOGIC;
  SIGNAL no2_x1_2_sig	: STD_LOGIC;
  SIGNAL nao22_x1_sig	: STD_LOGIC;
  SIGNAL nao22_x1_2_sig	: STD_LOGIC;
  SIGNAL na3_x1_sig	: STD_LOGIC;
  SIGNAL na3_x1_4_sig	: STD_LOGIC;
  SIGNAL na3_x1_3_sig	: STD_LOGIC;
  SIGNAL na3_x1_2_sig	: STD_LOGIC;
  SIGNAL na2_x1_sig	: STD_LOGIC;
  SIGNAL na2_x1_4_sig	: STD_LOGIC;
  SIGNAL na2_x1_3_sig	: STD_LOGIC;
  SIGNAL na2_x1_2_sig	: STD_LOGIC;
  SIGNAL inv_x2_sig	: STD_LOGIC;
  SIGNAL inv_x2_2_sig	: STD_LOGIC;
  SIGNAL a2_x2_sig	: STD_LOGIC;

  COMPONENT ts_x8
  PORT(
  cmd	: IN STD_LOGIC;
  i	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT no2_x1
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  nq	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT a2_x2
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT buf_x2
  PORT(
  i	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT sff1_x4
  PORT(
  ck	: IN STD_LOGIC;
  i	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT na3_x1
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  nq	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT o3_x2
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT na2_x1
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  nq	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT oa22_x2
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT nao22_x1
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  i2	: IN STD_LOGIC;
  nq	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT inv_x2
  PORT(
  i	: IN STD_LOGIC;
  nq	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT o2_x2
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

  COMPONENT an12_x1
  PORT(
  i0	: IN STD_LOGIC;
  i1	: IN STD_LOGIC;
  q	: OUT STD_LOGIC;
  vdd	: IN STD_LOGIC;
  vss	: IN STD_LOGIC
   );
  END COMPONENT;

BEGIN
  q0_to_ins : ts_x8
  PORT MAP (
    cmd => no2_x1_5_sig,
    i => accu_reg(0),
    q => q0_to,
    vdd => vdd,
    vss => vss
  );
  no2_x1_5_ins : no2_x1
  PORT MAP (
    i0 => i(1),
    i1 => not_i(2),
    nq => no2_x1_5_sig,
    vdd => vdd,
    vss => vss
  );
  q3_to_ins : ts_x8
  PORT MAP (
    cmd => a2_x2_sig,
    i => accu_reg(3),
    q => q3_to,
    vdd => vdd,
    vss => vss
  );
  a2_x2_ins : a2_x2
  PORT MAP (
    i0 => i(2),
    i1 => i(1),
    q => a2_x2_sig,
    vdd => vdd,
    vss => vss
  );
  accu_3_ins : buf_x2
  PORT MAP (
    i => accu_reg(3),
    q => accu(3),
    vdd => vdd,
    vss => vss
  );
  accu_2_ins : buf_x2
  PORT MAP (
    i => accu_reg(2),
    q => accu(2),
    vdd => vdd,
    vss => vss
  );
  accu_1_ins : buf_x2
  PORT MAP (
    i => accu_reg(1),
    q => accu(1),
    vdd => vdd,
    vss => vss
  );
  accu_0_ins : buf_x2
  PORT MAP (
    i => accu_reg(0),
    q => accu(0),
    vdd => vdd,
    vss => vss
  );
  accu_reg_3_ins : sff1_x4
  PORT MAP (
    ck => cke,
    i => na3_x1_4_sig,
    q => accu_reg(3),
    vdd => vdd,
    vss => vss
  );
  na3_x1_4_ins : na3_x1
  PORT MAP (
    i0 => o3_x2_4_sig,
    i1 => na2_x1_4_sig,
    i2 => oa22_x2_4_sig,
    nq => na3_x1_4_sig,
    vdd => vdd,
    vss => vss
  );
  o3_x2_4_ins : o3_x2
  PORT MAP (
    i0 => not_aux3,
    i1 => not_aux2,
    i2 => no2_x1_4_sig,
    q => o3_x2_4_sig,
    vdd => vdd,
    vss => vss
  );
  no2_x1_4_ins : no2_x1
  PORT MAP (
    i0 => q3_from,
    i1 => i(1),
    nq => no2_x1_4_sig,
    vdd => vdd,
    vss => vss
  );
  na2_x1_4_ins : na2_x1
  PORT MAP (
    i0 => i(0),
    i1 => accu_reg(3),
    nq => na2_x1_4_sig,
    vdd => vdd,
    vss => vss
  );
  oa22_x2_4_ins : oa22_x2
  PORT MAP (
    i0 => not_accu_reg(3),
    i1 => i(1),
    i2 => nao22_x1_2_sig,
    q => oa22_x2_4_sig,
    vdd => vdd,
    vss => vss
  );
  nao22_x1_2_ins : nao22_x1
  PORT MAP (
    i0 => i(1),
    i1 => alu_out(3),
    i2 => inv_x2_2_sig,
    nq => nao22_x1_2_sig,
    vdd => vdd,
    vss => vss
  );
  inv_x2_2_ins : inv_x2
  PORT MAP (
    i => not_aux4,
    nq => inv_x2_2_sig,
    vdd => vdd,
    vss => vss
  );
  accu_reg_2_ins : sff1_x4
  PORT MAP (
    ck => cke,
    i => na3_x1_3_sig,
    q => accu_reg(2),
    vdd => vdd,
    vss => vss
  );
  na3_x1_3_ins : na3_x1
  PORT MAP (
    i0 => o3_x2_3_sig,
    i1 => na2_x1_3_sig,
    i2 => oa22_x2_3_sig,
    nq => na3_x1_3_sig,
    vdd => vdd,
    vss => vss
  );
  o3_x2_3_ins : o3_x2
  PORT MAP (
    i0 => not_aux4,
    i1 => not_aux2,
    i2 => no2_x1_3_sig,
    q => o3_x2_3_sig,
    vdd => vdd,
    vss => vss
  );
  no2_x1_3_ins : no2_x1
  PORT MAP (
    i0 => i(1),
    i1 => alu_out(2),
    nq => no2_x1_3_sig,
    vdd => vdd,
    vss => vss
  );
  na2_x1_3_ins : na2_x1
  PORT MAP (
    i0 => i(0),
    i1 => accu_reg(2),
    nq => na2_x1_3_sig,
    vdd => vdd,
    vss => vss
  );
  oa22_x2_3_ins : oa22_x2
  PORT MAP (
    i0 => not_accu_reg(3),
    i1 => not_i(1),
    i2 => o2_x2_2_sig,
    q => oa22_x2_3_sig,
    vdd => vdd,
    vss => vss
  );
  o2_x2_2_ins : o2_x2
  PORT MAP (
    i0 => not_aux3,
    i1 => not_aux1,
    q => o2_x2_2_sig,
    vdd => vdd,
    vss => vss
  );
  accu_reg_1_ins : sff1_x4
  PORT MAP (
    ck => cke,
    i => na3_x1_2_sig,
    q => accu_reg(1),
    vdd => vdd,
    vss => vss
  );
  na3_x1_2_ins : na3_x1
  PORT MAP (
    i0 => o3_x2_2_sig,
    i1 => na2_x1_2_sig,
    i2 => oa22_x2_2_sig,
    nq => na3_x1_2_sig,
    vdd => vdd,
    vss => vss
  );
  o3_x2_2_ins : o3_x2
  PORT MAP (
    i0 => not_aux4,
    i1 => not_aux1,
    i2 => no2_x1_2_sig,
    q => o3_x2_2_sig,
    vdd => vdd,
    vss => vss
  );
  no2_x1_2_ins : no2_x1
  PORT MAP (
    i0 => alu_out(1),
    i1 => i(1),
    nq => no2_x1_2_sig,
    vdd => vdd,
    vss => vss
  );
  na2_x1_2_ins : na2_x1
  PORT MAP (
    i0 => i(0),
    i1 => accu_reg(1),
    nq => na2_x1_2_sig,
    vdd => vdd,
    vss => vss
  );
  oa22_x2_2_ins : oa22_x2
  PORT MAP (
    i0 => not_accu_reg(2),
    i1 => not_i(1),
    i2 => o2_x2_sig,
    q => oa22_x2_2_sig,
    vdd => vdd,
    vss => vss
  );
  o2_x2_ins : o2_x2
  PORT MAP (
    i0 => not_aux3,
    i1 => not_aux0,
    q => o2_x2_sig,
    vdd => vdd,
    vss => vss
  );
  accu_reg_0_ins : sff1_x4
  PORT MAP (
    ck => cke,
    i => na3_x1_sig,
    q => accu_reg(0),
    vdd => vdd,
    vss => vss
  );
  na3_x1_ins : na3_x1
  PORT MAP (
    i0 => o3_x2_sig,
    i1 => na2_x1_sig,
    i2 => oa22_x2_sig,
    nq => na3_x1_sig,
    vdd => vdd,
    vss => vss
  );
  o3_x2_ins : o3_x2
  PORT MAP (
    i0 => not_aux4,
    i1 => not_aux0,
    i2 => no2_x1_sig,
    q => o3_x2_sig,
    vdd => vdd,
    vss => vss
  );
  no2_x1_ins : no2_x1
  PORT MAP (
    i0 => alu_out(0),
    i1 => i(1),
    nq => no2_x1_sig,
    vdd => vdd,
    vss => vss
  );
  na2_x1_ins : na2_x1
  PORT MAP (
    i0 => i(0),
    i1 => accu_reg(0),
    nq => na2_x1_sig,
    vdd => vdd,
    vss => vss
  );
  oa22_x2_ins : oa22_x2
  PORT MAP (
    i0 => not_accu_reg(1),
    i1 => not_i(1),
    i2 => nao22_x1_sig,
    q => oa22_x2_sig,
    vdd => vdd,
    vss => vss
  );
  nao22_x1_ins : nao22_x1
  PORT MAP (
    i0 => not_i(1),
    i1 => q0_from,
    i2 => inv_x2_sig,
    nq => nao22_x1_sig,
    vdd => vdd,
    vss => vss
  );
  inv_x2_ins : inv_x2
  PORT MAP (
    i => not_aux3,
    nq => inv_x2_sig,
    vdd => vdd,
    vss => vss
  );
  not_i_1_ins : inv_x2
  PORT MAP (
    i => i(1),
    nq => not_i(1),
    vdd => vdd,
    vss => vss
  );
  not_i_2_ins : inv_x2
  PORT MAP (
    i => i(2),
    nq => not_i(2),
    vdd => vdd,
    vss => vss
  );
  not_accu_reg_1_ins : inv_x2
  PORT MAP (
    i => accu_reg(1),
    nq => not_accu_reg(1),
    vdd => vdd,
    vss => vss
  );
  not_aux3_ins : o2_x2
  PORT MAP (
    i0 => i(0),
    i1 => not_i(2),
    q => not_aux3,
    vdd => vdd,
    vss => vss
  );
  not_aux0_ins : an12_x1
  PORT MAP (
    i0 => accu_reg(0),
    i1 => i(1),
    q => not_aux0,
    vdd => vdd,
    vss => vss
  );
  not_aux4_ins : o2_x2
  PORT MAP (
    i0 => i(2),
    i1 => i(0),
    q => not_aux4,
    vdd => vdd,
    vss => vss
  );
  not_accu_reg_2_ins : inv_x2
  PORT MAP (
    i => accu_reg(2),
    nq => not_accu_reg(2),
    vdd => vdd,
    vss => vss
  );
  not_aux1_ins : a2_x2
  PORT MAP (
    i0 => i(1),
    i1 => not_accu_reg(1),
    q => not_aux1,
    vdd => vdd,
    vss => vss
  );
  not_accu_reg_3_ins : inv_x2
  PORT MAP (
    i => accu_reg(3),
    nq => not_accu_reg(3),
    vdd => vdd,
    vss => vss
  );
  not_aux2_ins : a2_x2
  PORT MAP (
    i0 => i(1),
    i1 => not_accu_reg(2),
    q => not_aux2,
    vdd => vdd,
    vss => vss
  );
END RTL;
