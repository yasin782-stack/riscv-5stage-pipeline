#! /data/data/com.termux/files/usr/bin/vvp
:ivl_version "12.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/system.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/vhdl_sys.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/vhdl_textio.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/v2005_math.vpi";
:vpi_module "/data/data/com.termux/files/usr/lib/ivl/va_math.vpi";
S_0xb400007a0c401790 .scope module, "decoder_tb" "decoder_tb" 2 3;
 .timescale -9 -12;
v0xb4000079cc3f98d0_0 .net "funct3", 2 0, L_0xb4000079cc3f8b10;  1 drivers
v0xb4000079cc3f9140_0 .net "funct7", 6 0, L_0xb4000079cc3fa320;  1 drivers
v0xb4000079cc3f9b90_0 .var "instruction", 31 0;
v0xb4000079cc3f87a0_0 .net "opcode", 6 0, L_0xb4000079cc3f82d0;  1 drivers
v0xb4000079cc3f91f0_0 .net "rd", 4 0, L_0xb4000079cc3f89b0;  1 drivers
v0xb4000079cc3fa060_0 .net "rs1", 4 0, L_0xb4000079cc3f92a0;  1 drivers
v0xb4000079cc3f86f0_0 .net "rs2", 4 0, L_0xb4000079cc3f8170;  1 drivers
S_0xb400007a0c3fc8d0 .scope module, "uut" "decoder" 2 14, 3 1 0, S_0xb400007a0c401790;
 .timescale 0 0;
    .port_info 0 /INPUT 32 "instruction";
    .port_info 1 /OUTPUT 7 "opcode";
    .port_info 2 /OUTPUT 5 "rd";
    .port_info 3 /OUTPUT 3 "funct3";
    .port_info 4 /OUTPUT 5 "rs1";
    .port_info 5 /OUTPUT 5 "rs2";
    .port_info 6 /OUTPUT 7 "funct7";
v0xb4000079cc3f8a60_0 .net "funct3", 2 0, L_0xb4000079cc3f8b10;  alias, 1 drivers
v0xb4000079cc3f9610_0 .net "funct7", 6 0, L_0xb4000079cc3fa320;  alias, 1 drivers
v0xb4000079cc3f8640_0 .net "instruction", 31 0, v0xb4000079cc3f9b90_0;  1 drivers
v0xb4000079cc3f84e0_0 .net "opcode", 6 0, L_0xb4000079cc3f82d0;  alias, 1 drivers
v0xb4000079cc3f9e50_0 .net "rd", 4 0, L_0xb4000079cc3f89b0;  alias, 1 drivers
v0xb4000079cc3f8380_0 .net "rs1", 4 0, L_0xb4000079cc3f92a0;  alias, 1 drivers
v0xb4000079cc3f9090_0 .net "rs2", 4 0, L_0xb4000079cc3f8170;  alias, 1 drivers
L_0xb4000079cc3f82d0 .part v0xb4000079cc3f9b90_0, 0, 7;
L_0xb4000079cc3f89b0 .part v0xb4000079cc3f9b90_0, 7, 5;
L_0xb4000079cc3f8b10 .part v0xb4000079cc3f9b90_0, 12, 3;
L_0xb4000079cc3f92a0 .part v0xb4000079cc3f9b90_0, 15, 5;
L_0xb4000079cc3f8170 .part v0xb4000079cc3f9b90_0, 20, 5;
L_0xb4000079cc3fa320 .part v0xb4000079cc3f9b90_0, 25, 7;
    .scope S_0xb400007a0c401790;
T_0 ;
    %pushi/vec4 2130355, 0, 32;
    %store/vec4 v0xb4000079cc3f9b90_0, 0, 32;
    %delay 10000, 0;
    %vpi_call 2 31 "$display", "Instruction = %b", v0xb4000079cc3f9b90_0 {0 0 0};
    %vpi_call 2 32 "$display", "opcode = %b", v0xb4000079cc3f87a0_0 {0 0 0};
    %vpi_call 2 33 "$display", "rd     = %d", v0xb4000079cc3f91f0_0 {0 0 0};
    %vpi_call 2 34 "$display", "funct3 = %b", v0xb4000079cc3f98d0_0 {0 0 0};
    %vpi_call 2 35 "$display", "rs1    = %d", v0xb4000079cc3fa060_0 {0 0 0};
    %vpi_call 2 36 "$display", "rs2    = %d", v0xb4000079cc3f86f0_0 {0 0 0};
    %vpi_call 2 37 "$display", "funct7 = %b", v0xb4000079cc3f9140_0 {0 0 0};
    %vpi_call 2 39 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "testbench/decoder_tb.v";
    "rtl/decoder.v";
