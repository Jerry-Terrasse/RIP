// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Jul 12 06:24:41 2023
// Host        : Mech-Win-Tera running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/proj_pipeline/proj_single_cycle.gen/sources_1/ip/Controller_ROM/Controller_ROM_sim_netlist.v
// Design      : Controller_ROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Controller_ROM,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module Controller_ROM
   (a,
    spo);
  input [10:0]a;
  output [18:0]spo;

  wire [10:0]a;
  wire [18:0]spo;
  wire [18:0]NLW_U0_dpo_UNCONNECTED;
  wire [18:0]NLW_U0_qdpo_UNCONNECTED;
  wire [18:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "11" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "2048" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "Controller_ROM.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "19" *) 
  (* is_du_within_envelope = "true" *) 
  Controller_ROM_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[18:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[18:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[18:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
M9ERyrMNmk2Jjyg6ZCGYQpTqx5C+74+ICn/vAQ5KoRuxJNbql8tHJjFcOe3FAJX14Nokq4wtfvZP
2sPXAs/eYYzjjbnt4nx8oZRRPy0XyDpvba/qxyqBSxjChIoPMDwpXnxi+chZJU5N1zCNt9FZPAep
nLCjMCkQTlKbP3cUJIY=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FBAg02qOh8M8uZkNvwWHoY3ELncwvHjjgL2y2qLN7xuxxaPQj3LdyD/IETTPdSjNCB/rhpJxbT1y
U5fbF28Hkp+bzDuxeTWPX251wMhiEmdm4jhyMl2z+GRf2Z6VJ4bVM5bieaJvsbjuyQ9Az6TDmueI
14citDEbyRCyJD9EiVckdS2mZcTl37oVFebKnIeJGmNjOc2XrcM84JVJIG5iv3ryS2hAG9/84hEr
u3DYC+xS2w5swJXVSf0zV+w8xZulS3PTPLELIM8O+SEFdHetZKnrgG1aJ7V5xu0RniGAsyVwVbgu
M1jPqNLyU+9kyETKfG9jcGEIM2I2gUfmOvRs+g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
TYvdYOtu2OcY/hp0LCFlgwGgJeLJ5MSBDPjuyI3760LiXtklDVs7CUFlvRRXMgAzbHlMXbiHp/Xl
cvmN035ayt8D8gPWRXxnbQf3kRlW6EIFwFMZ1inL9b5f47gsuvCP6MaKiTg0W7+/ZeHbM4jHXvRe
b8HXvQvK5kVwtayEwt0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GkcGg32vdV7ZS9x4Uw9v3hZEcxD5hMmQXUqa6shDPbzqUGIxrKpTOb9W4Sgi8rq+qw7QpAZp2JW/
MkYAH1WikFlf+XWG57y55EFV7oRoKQDh2Yz0sZEwVhwTGwSAqfnjrmPITofdG5eiey1ySGprEKsT
mqWAV+ZN7TkQkKup0Ukf1O+8giYKT/7UibTRqG/CT9dgU/4atPgYh2QjNMVrsAH/uzDxh7stQMYe
nkjZBkpLWOq7mxEXTKVtYAD/8G5qCJELRcvCuUKYz4Une1wDj+L/vwRK3IAdWKQ+/5mvj0q5XEm7
IKu5HYvalbySwRWzaB00uobXZorNhfwSv45jHg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JnT3Bfv/DUBx2mIm4+jpmHjzhKoX4mNpcc/lgscv3iYrJw8Uble396hMwPsVZ+kkAsmYtegNCiTG
Z7kqnoNeWHv+Grdizsq0QM9S2KJ5EoZhjelE+3Cii/ztNHf7Y3c0nBPnioUQ5YmWk7vgoQl3SJ3d
vwD3G0c+fGJBRpi14hTJOB2wtu4EeWcJ1f+01LjKINeucLlwacjnN0tElyRgCNKfsRDAQiMqwKqg
XCleeNY0cyLXGI30pXMpnbLizYlNKgVD6DSeNaby0dhW4phR0a+9xteo8l8eRVzTO+VSOcYSy8rU
6Uj2y0Up19vcq91C+/YeHlh24VwNI2TJeUEDwQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AWr8D+IaT/X0jMJSrwmWnhWOjt0+8oyULINYaH7QGBLgqKCVtf8rqo68R3/TZ8gTkN73fZOx0QCU
3WEp7Ga1gUsqEgy+2zGlncYhOzx62FJm4Pm7S6LbE1qdg3/9Pp55JLaf1ouYlZccQJ+yawj0HgL4
zR0T347Zg2aIFxQZ28icCuJbxAZsZgAT30scXsTMMvXlQQ9NI21OjirKgHRn3dldIjpkL+BrVBkQ
Q7MMiTBhpCn/c+WXk4H9BPc3vMrVoh6r5oo+e1858Hk7osyxNI9zuACaGwdAatsW756kQBMsQoUj
TmJksSfucjrHVSuLFffpztOARH3LXrhZcCZdoQ==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fPVwMHnHe1L8weZTnbBxjlAabwZZnO4DZSHaO7tHGHAw6U+w+7Rc3BwfQXtiTyGXP15rvoLhvVpo
i1Tzs4zrV1X8vlWrxhS6XA2VO4RFkpCjmnHpvdgnW9mpk7w90QOEZIWZQST/o15t0wDT/kv4J36r
Ho59mVFCGQQSSYx0209u6sG2rNpJ5HtWMM+tDEDHUArucrBmPOoZSq0VSQsTHtjJQxr3U5fv9l6q
aEBWkjnLJ6zqLkt12B3q7V3iFORPpz6XNMqA6wzArzWirzgTCw3CduiSAgbNgoGmV4eNrVb2DfOT
5V4ni19GigMG1fHCD9dNPWGiRCWpY6iiN6iE1w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NkQB16Pku9sdGFuAkY+DjFhWzKYvb26AsK/VO1//MS5ztnK+V9d/0K8nVee9kGDNC4zorSd1NjRc
Jkj/JJm1k/9QiQQwOSB/94zKWUyVH2Rvw3UOuaTu9pWRQsIdmPNwXBKCOF5L17HHGaNqYzvHF7YY
REIp6VR4HcyLq2beYXn09Mq0f84obUr7+CMgh8i1SaLa/ydMPS9xsm1i0NFB3qcEC0dDq6xklwsX
s198UBI5mBJTEUKi38eytWXzQPFTmqdlD3Qn4CgstxSdoLrFHchISqt+L62U4xU6aVyYXmVaeebF
I1F3MAXQZwZwGETW7RW9t/+3pJtkjPfPtdnqu/Sg+zP+vLjSV/NcONctKnTj86/z+TTehoSH8ccr
BsjV0PhAtR3+RTr3VGkKJoUNeE8yFQIHlES8UamuSNMh5XrbmcbFx22MZ9gLOa350ytm1N124jNF
V860l5gGbt/8NcGf8I3EVPrYblJ5ZLGsZkVg1cKBMUys1yMm6Ci2Mruc

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
JDELzo7luYHcwIl8sAAMR3hvm1tr+ZaD3VKTvYj1uwYFwuIPCkUfjVi8OMAgp3Hh/R1wDZSeoY7T
xpO0sKF9MsovKwwArnByLL8zZflfJIe5AmC+jE5a8qUxydp4liMdOypRTLu6U6EUYUwSj6VOR0Uj
deCoQCr/gVZ2GdNKF5sKZsGXZSvx1Wag70BiGs69qhgUvVVlpbqpNRSB0DR/2IuSKCHhkucLXiTk
zVS7zC7GiyNYE6l/Yu5Ov25Cl+lY5cMZkqKvIFm90UiTBNYk4No5ofXnH/E0rNcbydv0BvWDmgKt
NXVratbi0ztKLb27z2lw5ZZzXCihB41kx4VjqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14800)
`pragma protect data_block
xDghtxW8a7OzfZtOEZvlLFeSqRfAWjttSUqrhhl+DdlquGHMFrAjakvfmKQfXMHwM5Uxho2yb1yz
fQeifGOFAMCVy7mTXrSBoP1lSlPZUtBCcVgINqALbtHhEUQlSjqSUl5vGTKz43YTdV3sTZ3OyuuW
pjQXVusG4Wiritz2iHU5fKi3vfQnmOFBCaLGvDpPnJlfy2Jii1IXZiVsErcFy90DbSKmD5em+YTl
UDWQeI3u0yueadmGY5X6sAxUYR1h2y1jDmvyCYlNW5iiRqUAtSPCoAYmL1JZuFQT6PuvxyxaL6oo
eSYe/2LKwUQ0ct7MCJF4W//iWrINjruSwBM6MC39LjNK3D/qRQROqpaVDqKaiy38PVL/yPUnYrX5
oA17/DRY8JVTS2yhkVhhcBQmm2/seiYCxeMq1QGSS6XxWTuShFMmSQNowU/FbuDwSXJ1oY7JUtF4
ijLhBCvEqFYB3MiS+S+pfHNfl1isyrTUA4fx4eblwclPkCgFRjY/nTGOB8q1pzN71AUhhO47Z700
5kxvc7EclOLSwip7JEbeRFvmK2TjFXC8PQOufGjEqv6hReKVD55HIB6YIzCxknpFJa4Iq6O6+qp1
S3UMsC06u7+1YLI1wXEyII7xaIxY0E+1zAW8DZHTdALTiww19B6k0g50NeAfZRYjCw1beDLcJ5fI
5JmiwsVmz/XFSiSj6a5umgo8ArEDrwV+SBZvxp0VtQOVNrZwuc42tLYoHqHnaMWb7O7p9SStueSC
e8buh+h8V3Nk6YdBrdObjq/1n8xGknvC6E8UoBiP9jcSGTikCpi584pGHQAciNyWl3yjQ88OOAoO
dccZzCHLGbtRYixX3TQhVhNMG5egGiHpvje145n+TSbKoGkuiT8M/ld0Uye8cD3oNHcWnm60aF1Q
PhamZbLiQLQsaNua+RYSenG5nKrsRT4iayiJBBjDukSq9MAxNcTqTvbCH+GiFa2OjiJO2tB/VB4A
GMF0+Ryyw1d03x8frGNoV9knJytaYyH23UN/C6B0kITm/ufgDEYccnlANKCWhYIqShd6Sf0cZfVN
sQBZkNBV2jNca0RhRXdp6uF8r+wStARYmXFPkWKZiU4KYWeTZ+8Ganb/VTwaw+3hhFbVkwHkxB2b
68r6XSIAeqCnuiWfIsqiG3DZiug0qTeNMtn8/+FIAvXQ5W0WYmAqSegihBJdfNzwsxVT6QOy/AxE
sIL7Tq+WMtKZq19QZ8huJz9gMWAOxHEJrPYz/rToLb8ViO0xPlocfiXWHMWvg3VjkmwIO5xWg40J
ei9uVKJ1ESZ8cpuDdKryLW3ghkRSNGgJrcyw/JejFV6chC8rA/URfAgMaGlVE4Tdt3pRMIueisa+
Y3f/XcNMUnQ+f/CAx1eYP+jap9XqL7nxg6q6xVM5NK9b16S8Ht4SvWnQcrmAjXwOIxNdEWwJrJ/3
z2PWKni6nOtOzQHhfadi0WuQtOOGeaMqmN8q1m2RUGbl5gtDyj3EHVbXGaCBbu/rJfbbAXhX4ZS5
03vJKppffG1THLudStmcGkLojqqM5clpAuxeIF8X5z6DhoFGkX8V+D0gXatO6bX1P4AJ9liKOM0O
3AWhWxoNS9gdZzPdnn+HmJrKhZRbPV6HvMvQxeuxs96dY2enSmeW70d3fI+9jx9Pk9PAQGwFz4E/
8Z6RDk7ZJJ/ZUMPTUCKzKUo8My9WVPNHWA/Pt7zx8QtDvDf+4+r6xYkLLDK6z1L355TmrWkhcI1O
hP730pfhixc3S49SqdxHGs8rrFcRiLLuK3rqisa7dXUfdcRAoFHYMyrTHR5yn9qEln+4/kRtR1Ru
htR6n19awZBOXCfucYdbchBrBv/2PkeR4rFHNQSbSv1tvPIhrVVV5kGPgubBNiDU0g5PcoqVamuw
LN+/C0DJH//sHs6yUQ0Fak3e4REM1MafG1w/9BhuVouq99H80QYlP8wBaJS0LiqIH2DtdPXEDZX9
cHBg5L68LuVy0fgw7DpP5irufqsjWJaYeLmQE6oquidUefXKUrNMpEQ9UCLHWCfVPHqYOVO2maQS
DCFdvtZsP0tVYLf1n9PXlTg5XixTpFi6CfaxFe8Jfdx13x+Wns4T2elk0wa+OhhKj/pcNV4g8Dta
2WwOnZhEn0kzKr/eny0ulF/nSp4Z3bhEqGvmBf8U/tzJz43AyocRyOzgiPUwlWxx3eUgxin5XcN3
Nh8VAEtFiYpRlXlj+lncvvuc5cHAcyqcXb/07kG0xWkeNt9FtZJNzFyviHd+kwL6KvyiC6GjFNWS
3M09SQahixi5588lOoawY8O+0JbR2zZvbW0T0lAcTlOQSHPsbY/VxjOFaGhYdf39T+qXI65GxQqj
ap4IIKU4MdrjbNagKk95P6JWDxvKjc0AmTNCRPtb6tFkUBHx8pWCmIeYRcCVuh5WwxmJfqHC+5sC
7tOvRTmyl8vMDB+zahffqNoBLaboTUyCRoVoAZPgzb46cfmvA69W0SYQPd6rvhY/zF6evBFYXEYP
9JkmGYk7sFPrEbitYBVAH2EuAmkjoObgtGLWEqDQwT+55hMbyY56MGzqJl1iwFOcWehkTx4eqclN
PY9QPpkdNhOv7W9v4vHEfnVBvxrPHXF4wnHFhQYtzwka88ocN3vpj4EHcdfcVbx4TuQ5NEUZePYR
grH89Q751+WCOBLcUaH4mXkqSxXI5kBkaZpdmJ4ukHlc+oYtFF8Wn+WzBuOIDr6tZBwBad2+Ss3W
4CrZ7BD7PVVMLDozLysn/asZraVE0ADY8UNdPEEL4t1MBZnO/WB1I0GW4oApxsZ1v711SvBSwADH
jvVgx2iaMpHRXyuvRfswiFlcBRi4TLO8ISxNPzl27Vk4Tl6CSp3qo/XzfHMMvsBw+jHHCjDHa+rd
OTMut4lUYDCPKfqn0Bc0rz4wN7pIAo3YYSmYaeA1ZwsMyVRdYTQI+qeCoM9tSgLTtB6rcpFTLSbR
7guLGqm+99plh5vKfCB7shngHptQyV4wtihQNVZRoq1QCV2NKMZa40j3+U0IKs07lNc8+QUbBRXs
s7hSKh7dOuajsaYjrdB8PgWFkR+SwuzehehJGHKSIP3nmeUKHf1kUqUs5yorrRFTSPodM8NfCyAp
B2U0Ri7cxZMo/peemaCdsxgmibItEIqXStQt2bjRgJ54saa6BzGZV5dzBhiZHoi615lxJopggixO
6lIy/MV7G8fhuUGtJaclHoLYLYsxu0u2VUbClbdWpWY40OtLD3qWDCcWggtXkk35WG+0UPthnMTr
2WAB5MF5XdVU2RWQmwYzPS1i5R/1CSU7SFWOnEE78wqzsPWezB8Vl84ae96eX71RDXkX6Q9ADiu0
4uzeEXCubN8tzJDiiXMpxvqvpdAEX+AnC6NOqxGRbEypg6TJFUdl2sLBlbuOjiRB618NnjZFzG33
DMHjzyH+YAudBZTASjvWhDCNSUXLU8AY1ThKnFxE3QhG/5469bL6vNpUvx3wgu9HgPejiU0BW8ug
Duefem7++tBI8AjmgdZPf/yvOMqJ+Jk2LT0/iyjkUPZmGxPjoy4PCTdz/rBt4dYZy9BQ/9fHjt7L
YBydsXAaM50pISqPsD+loauTAl9UMs43BEAa7y6uGpIKsp+syXuIkvwd9m+oedXkiwfXJNhiiF2r
FL+vWPe5KbfZkHYX0BicYjvecDQ7n03ItNv4UMZfj7Szl60ev23SjmknQ6tQfny3XyWscM8ITKyd
UUM50ooOq7KV9AzRyRiC0qqHVBJbbIrt4s/MnMp2snVd5NXWjgveUsyxjqA8DR3mMHhdti/hGnE1
LkrfVU3s7t9pXMLrEjkelXuO7hhT/6dhc0BLvJlz3kaTtGH4QomGrY2iNJtdMMZBybB3A1jx0l0U
GILlAMIL2YfUV6BqgisU3pjuTKdl4jphmNxkx2uI5hM1zch/HUkNYKOcD5gxxwkn7guxm2a07dXG
dBhIkeqfV6d9/HeHO1VtFyv9HGR49cqjFWuMyUDY9rBT0OvRp7e5SD24s6WZ1fOmdsd8AU54XBqq
cqpRCOYtouEY/yFS15ugNhexeVELazGjr8qOeSDgauUjSyBZ5mf+yn4oLVXaDOfhWpQqZPScQ58e
VZ7pIVFUA+5e4mJPH83NHhai41h4pwEIlSmoLiCdh0fDuQjQ10FRGRrvAmVyRsJSPpYQPyzkteSu
j6G+3KGGISV5clSfTQBy8E2UWt5CvmMEcTZzzmw2f5Qi6FHqzduQOKL+r97nPTtNGQuwBk8y2uNJ
JCMZVQ27xfayf03IOV+Fv+5fjMnoNlGuvBQ7WsSILQXVkGeC0YGKyjxUE1Qd6vOpEwYq9Bg/L7sm
1MkUJ6z1WkrgTQjiCcDTs8Qj4UTtVeC7ybMac+MbXueBeHe72JbIM1U08rH8zGuzAQi5ippkgXYB
sbrqgMVtaLXdHMo2AohtuY5BND0A8EQVqgyoYoaKr6eNPZZCtPt/ON5S5saGb1CwzUA68OIAovml
uWF1iKRt7GjtT7nQp5JfhSmiw0cU9Kv+/IyNsXuK7ykgkvs3QKU8TCVvmJGO/SoGXxqQsOiH0vvF
igcMGBRVcj3weXfBSfeZjvg1EqMg8u94ifZKfcHLtOLQe31pk/GaiiU7rb+pIYwQrsW8C1bO2Yks
GvhLNNEeZMXGvutvuA/oYEYOi2EYgWL4FvZvf+mkePeIQ33UTZ0fLcOdks/KatEjuqKofpo368eG
JEgGRqvlPlJjeqjVnKAsKkDnFiDpW5lwJaeho31FC6N3cXvl53zOwlrRpLcNyhslbGSEF5hzuJDz
rnAxzkV30PbtccnNBsyzMfN7lCylD6cIHFko5puf6DBJa5WUW0pT6tqUPYYCyrXYJJ+6iCjzungl
kHMJTl63bOu11GnoMwoPztcWT4JZ7bLqen3wmvJ0tpjcUxle/zjNGJIBvb4MIRl8jqGDU6PLahs8
w5HNy2C4izVAgvqUfftWvqPe8MiQGurFgT1sCFEt++TqjpXnr4Xqc4gU+rgHK6indeaGHnBWhhS3
RUJEV2tCTYGkEaGZMxlTgfnF1AMwctduPFEuRbGYbLYCXgS9Q51XC9/Y33JlemN0eL3W40J+J9wj
draa5aUmDv5F5HWQeJMLnY0mgf5euE/qs24tW+rdrGycgcmnx5vF8k27GBco/OymviZLiUPyy0Ez
Aeti+KnlK3x4Qziw631/i/Ki/Ie3ZMOr4NSqBp1SgxGLux0TTSN1NRB1+zizuJAHaKZwk+xPDIg6
xdAtASAINwsmsWFr9uwLTc4BAfClYGqWgF7GIdhXJaTBQl0idsLl1i3Zcuf83IrBTWKG/QP08Q+Z
F1e4a7iliQ2F8rWroPBCxeAOOqgdYLrotDyPkDz6YwfGymTarBGf82CfmanJkeURPPh2wAyFUYiG
eZDNckfCE1H2NS0pmTGYT0kQTw9odkKS+lXv6+sflhEOf66+eTtr11LKT0+aeSoG03ITHFw+G0HI
nRn8hs9HvXy1x4TBCkfZQ00xxlRocQ7pewdCLF456VurWTlutiBwucM6N3mdsliOyzq9iQXAO3vt
n6zFpGqzsTsjNREK1HfsoM4xD1j5x8ahucMQp1XDCwDnXY9KUAnjLNxK4DxdSCD/CDhNwxvalV5e
ma0pp0RHmhmIyl71VnO8F6eQBTfjB7DQKPoL+tmZle6zHos4dmlD8yM52wd6HufhMOqSw2IFuFv9
Zz25m92I7T4FBk7mFHdouh1EXEo5NM57sFA5xsmWY89s8SEdaGJWuHQWTKIBM58yPNqBVSS5BRPl
yifsISb6D0n6A9+/De4OVuGwLts9O3rAv54qRz0m/raLzZwhI4axC8YFDm4KtrnRpb5g/dYwDIYA
mT7XRJ3a71bqCBMD3T6bSbVjlit/nYcIlMtirDr4qMwpOkYJkRYi2YsWRm3ZoXxU+F4gTnoYAhCs
L/pDG3pGR8JOeB5RS3cb6uB0LLufyjq5pkraNqzhaT9iHPPeZ5AShtcBKiNPlWBOuWO6+nPrBfWJ
y8X7XFVSbSTvPd3jI4HnkIfwJkQU5vL84H2cdmI+bKeiS756FJowzua+j4ay2AoBTBY1BN0Lw6wv
+dzM+hYkdOmmcgFpyB14dQTDGJuIJ0tan6+xha82jN0XUMAaRi+LhYv/EJaFLbTtJbkOEo2eqg2I
2K+bo4erlP8OMEpVgaY4GrHR1p+vogpd3SxECL5D6fxYr1Y08BccHmiByXZPpGWJbuBN7HIs3wd3
AuEVbaF5PWMk2Gt0AffgdLmTgNVrLtqXiZ3vDZM+P6Cfz+FXf0ejmdYFIMibCreCuF3sG5IzNrwT
NMRNCV60NX7emv9S+gBcQBl51DvwlHe74zCd26VPhRO5kkUXEEHHSioeFNXmaleWnkEieDMxoaqA
FFlD/0lI0vDEB+bST3RCKUQSX6Fb9rdX3XlkXnj7IcFKCkjgl/9YNSIPLkm6ShTZjaQqTwwLpv2S
tdDw3Ft7lFSWZnkiore9LVrBo4T0M2C1bqXp3vcVJ8lr0C8j9LsCv9tF8VPooM/Z7KhhxKDA73Kb
n2sMXcooDrSUd54wg0eD2uFJP6v7PzcnS88COZzA4v1pAVZ8klZ82l64wd9ZPnLknq9w1TSCWwcv
rdAoCrIJBnovFDBGm8kOxywOgF2XBb3VTJlYydGe+gzJRct3G4w/XF7iEsiz+yfBU/XxrU1WwGA4
HqiUx9kZjNdkq8uabcmIl5IPtRtLhmz6rz1GDdiTFR2RdzAlgxXfs85xEcM6WB1ihSM8loKn+n5K
nGNI59QDd7qG6OstrzUB3fndZn1x/qXGWmVxVRonv53L5kolOcYVUBaXTuRI0bNcRX+ZxBDbODfd
vBKnnhmGw1Yhvjdl87ePGimli6VTzKsRBxkbIuHY9qopvRqhpHlOx6jhql5AP5yGK+4DiNwlXOJu
80g0sG2H3p/LyuAdY2GmfK3IqJt9+KXKnJJ2L9LQuOVmLGIbhGAI0kbTvMIrYRCJx0/Q6spqVcli
GwJckwkE3A0bi5icHjoaekqPaDsTidS1njolyjqoDtS8jradXl24QC74IXAskvq8ww3hWF7imTfi
ku7ghf6tuQFQDEXZggw8CmJ++IiySNgLkABfCAPtWzi20xfn5euotd0DoaIbnFgVkHZ2HnPYS8fo
XAO4e30V7Mv4YJt3SVlnniRIzoKYBvSGg/+DP9VgEjxlJmQd0wn4zhS/zgFaHdnC6Pd4n3V+c3dp
0Nbp+85IYlOlyVYD7ZZbtux4DIyhQ4uCNRQbtVv8b7TQqHdEGzauzD3QmD/V4NfzRaCgyShrENpv
LcR211bJcF8eP4ifdFZKJ8EbTtLK9PKOe+Le0K25ehmeK8f/BRkTDSRy/6EZ/nQdGgcv8Xf63KNF
ha21uBxK5wlGETJv50D2HxUL0DCcY4EXwGI/TWZ//burN6KAp8qsmvKLmlSFmUgEpYrOeDCzyZ7+
GC9zlzbwolq7DcFYs1FhTOkwgFL/bLLX8iLJDPaUXDfIK+cA66U4HHYCANH1m2SISosiXhMzfp/a
xXsU7qFpiRFhmQKmHleEVmGGjNIswh++xUOnZocE8Lub0j0kT7ymJDIWq+eOlznbaVTz+8I1QB9E
LgrmEvGGaeQ/SaW1AcMHxz/3LOM3bnC202u5NThQ6DbNZuZ9myUD5R6cYzlCmMTpgT72vVUABnAY
zdebuT1wzclmYbtQf+vDXReVltQyIGiCQ24Hzri9z2b85k5aFAJTQgOZse9X4w9oUJwbmHScTW47
0LDw9QpSiXZBWVBDr3CCYaM2TVmNUCi/yG2AnuuKAFRgbb7yZ5tguYQzugltwkCIRtyUylCJ4kNT
Glu6Z+UYiVs3p2T33VzSzMkGhBuumRGUo+tA4SPduH1IEvtpn5vuLe57Ji3xinfKNe7ofZBluVHZ
vJXJyXJw9hCVy/a/S2jXnvZDyNVFs+EhH9lZiNFbGmc9sHDqRa6rmuxdYB6yzZ4opy6tst5UhvfM
k0Bhe8o73evtP20n4jY8slSqeSHVXlHlWKhKzpSILS1Syp6qnyKpJ7bk85ZJFB4QvjnIteDlCyJk
m3HXTyzCrmteAsI9hy+uF2FCee0dptOvLMh96QexzHOwuxMus524vj3Izgb3mBBg0avfTmK1QnEE
OpWqFIFHcfEhfIpRZbi68Hc7Kqt8mhUGBo2ET6gLqFsxvXU5xud4D4Xrnew35wPko6Iz78+h1k3F
prCtb5laeyT5PaSuMUkIyR8evCFtollgCS+mORfcO+qk/kvNiQfnXraoayjf9XFZr9i3ugQr7WwX
DEErvSwN2mvBLNF6bEyhCEcfb9EpTiF6+/6OhqGZWiVYd4soFBbcUddVkFKp+ZBvA0Cv24kj1wg5
RwvkfYB0hKUd0Ha707HSxYtQyT1/UpW3WuSzqrHdwDOW4wXl5wK6OXujY/rC10V6Rysb9XeOOJjM
UbtmYLFtZnHs8P+yL5n2eEN5TEkGDmYV6k0N8sf+zsldZUmYYJSXAlXtM36ZPdQx0q5pq2gO0s7y
vlM8TlcMEAq6D2GqRj4pC8REI0pgjoyadkOiI7eDpaC/8bZK4UOs0P9liQZe2ptEuA9i7wZkYHzv
yaKW6aoc5mYHVcO0lmv69HURgZdTwLkCBmhlbpgP1CPRbopTAmX1L7oHkWIfVm1zlP7OblDjf4QB
jJQdO5wXAQ+/8MGCuGApHrZIjiyVDkYVplGqgfL4y15u1x0Mjy6tY/rF7ukHu0ASkv1EpXDjVate
2Mc8ElX+frtCesXyh8ONN2Pa+q8nF0GgKjsaceTrVbxPGlrXbvEspLB5tPHovx1RLSbt3XzhZYF+
0pO8jl/oAUqmvaoBZhUrM9BX5FSxYlbQTFId7bOZs9bxjr/8au7WYk7NsH462NAqNP/b9Y1YaLqy
jrOj28t6TOK1wFd4WzavCWnjXd7dnPTg55uueD3ZJCRPULLrjac/Gg88NoIAsmTSl8KbeBB7r8MN
XTX7z3wzpBCI9rhj1g+kYwuRJTqDO9mQ0PePYcQmcWc4pq/naX5+Z/dY1MoiJc5LeKw9LA4C31Oe
QVcaCccwnQhrXT91pHAOjxekp4cU+OakfmrQTct+EbnYB4nNr+c/Hf0q7D5TbBTs8f7m4qThJ8aR
7vuP2C4T86mTmy/ihN1eO16pPSKbhJYAN1xMQqUNpj+IrFHlLtFt9GjspTeDEZA9mfOYkH3ocNkU
2cIsDgRA77patYoCr/RGQHPJui9YUVSxJXTr3+avcKHE71pmBmoAYUQfpQ1i2aWTtNoFoVuEVxqr
ui2o3fYz9VE4MUB2FMQc/azRCWo/+WxojHumVV4X4L34e/Mo9KB8BqzERRD/2u4KBNrFpzZLRpb0
3Mom2o4Yrf+QHWLlJeHX8q9vWtAB7iS2VbI0+q+7OVNkzO6rG9OsTMRKzc6QXVgNLhzhSSfS72Fm
+gJ3st/hWiczuemvE50A5AJaJnL1ZKLrowFl6EHkgw4w6JZkPyB/Awg2pnaa54Lig6CIxwrv78U/
d2GOsSL/cZQldUcVl2igb9wvZ0dEQp3zYcnupBYWyL6TPMAK4T6XXE3dAujGPnVM8Va3RKdIlgqV
LF9ClJHo/+3nhdWfFgSQ+LEL4yfCUXbiknnYLkXPlMvkx38vEOZxKa5uBnla/7994UtTCmlOg81T
GOvzw5OdnYaZIP2p+0cWOnyEe3eNGpTdqNW0lRBo7srDjPFBX0m0zkQZo4FKv6Nt9ul6P5m4skHJ
4LCOobs+7252gY63kRUokxYKNksOMBQmauz4XSZwjNDLQp/nQxKDAX5NWQCKXjPHO53uxvX9EWJb
Uk64gAeEb1nbXWM3MrWMUjKdgfLvZR4ELtTnG2VXVq70bRs5nq1VTr7y9C+nAxu0cSxHGZDkzqJK
aebbWVQT9VJrpHyCmRn0Ph7j+F8ONNuApIMxL5NtMfc8H5nFoYmls3MmqdiqX+dbIBT7kvjjQYtl
5eGzmFPCNPa0JMcRP2WHua+aGBZgnMFBhx9YgzHtZLRfpFe1OWQmwym2zf08i1ZD2VBImV5D56V4
ssRz/RyKeu4OippAmf4EoY24cOMjFXZzc5+W45BEtnGLMWHtIykkszPAGs7v+O+Wv4OQ7uto07ef
gJXr0/ft1qfMBgTarQ3ekhU7OyZj58sk2IJARHCN8wrY7EslioSD7F/W/hgejtUJ4YPJfPEgkaME
KuPomElKZRMKAAlqEEcLfTBC3sZPAx9PX9HaEW9tR+GO1aD/wznJruIoB8IEBbcjU8/u1v/wqbsu
VXmVL9z5a/MNG4pIm2wG6jtxS7PFjMuWuwtMMDWt0amgTbLpm4aq19gfuXAH6c1w/1pxv2EqZyyA
kOStv1xwutYDqu/hwYUu/SxgmbGqAt+T5ly3GxCaeAr6lD6s/VaAjH53KOXrn1gALn8Qd1qi1P0q
mhqIKFviAcv6LG9iCpEEUB/UAt8Z/JpyBkM1FZWAzhvHWLMwSW1S/3m9EV9hZ6Rh9N56sfXJ6Igv
iXO11AgIGpfwTnejhaRvs5XzofI9PKBdhiYDoSsGs+87QGrz9wHJRi0VTTue2+J8ToMUBGmqzHL2
VHSDicbYqb5J0t2PZtiVuwQZT/nXE7w+BPpPv5061DEMDQ3LqIVcpJn+9G7cg4uLr13kvfTXRlDH
6l6mbYDCS00R5pl5pj4D/2s+E3outhrelfLcMH+hzvfS3ztO5HOISC9M1Q+2EhzcrHD3O/kyLukT
ADzZNQNjIvHX71K5ofQdxnTjdUnl5Vu0VQfZyNMxuC5FrtCGC78YriCkEV3+xCP/8pirA1AEfA0u
KB33z8pVNL8505qqXGxBw4B8Jva7WNJEBuoLFYCbTIk3qS0PU4Lr1TYHPgDCPPJgHqU+kPF8fgRS
dd5OAvx1LovJOIjtePemveDQzrmT/gnsNJpVI3zwC6R2Vh8gLPZtgOgJ6ij6ySgR9Luezz+ZidMY
BQhkOjLp1qM+B11n4BmZ19dRbRF+F19kSPwhnFdnIDcRb3SQRMx6/pckKamY++0qdrmLeqd7sqYV
Ze17Pgo12VgPTjyDCxo4G9woUs27bPjNvQwUSQYfKR0CB/IklWcSxAHJzSOsfboAXAZBOa+tc+aM
xurIYHkV/P1eCroeKoG9Qhn113CFgm4xsjvzM48G1dx3ePIsEr0vAFRD04dZl9XSbpvhuNJzEF7r
Vsd6yX0+MTRqpWam5aB9fXwjd88qc8sY0ayz+KzvCH0f32KtvSz6D4fxjgjsjwkBMBNv0gc/LxL6
QZjJztCPTffn7JzG/hPucSLSWC/kb3xpHO2t4UIkBeLKK6/iFDQqxEogKX5/tRHfGgHIxSu6eJjG
j8E89H6O7VKRIYolN1lggnmmnbtoA0mtFjHxOwMmhCDn9cSJq/6CesQuPhJIhY2gRSobdvb8PG/f
aXyoow24X3Frbbxx8opMXyDmqg3aT2tozUYkBWuLXVulLYpt2Qci4YGEWWmOqpcz1bgsLgapv431
r1Lk1liMWwNafKwtUyaTZj/UHl1CBEQRDwesqG2mQOHoyM0H7gFjUM3HwmbqWJYiKVKxAgAmprq4
JANXDnf9qOApIR3Uf76e8sk8k0FWdRg3bWbDVM/Z9u03b0w0d7YWIdNsXojBjhcXPvLhQt1hhT5H
sI0n8U2tGF3f7mcv4n1wfECfE49eEm19AzRhoBBvUQFywjocwidBJqUBz1cJlAIsdT5uPXG8tUpL
IG+b6WM3abvDSfZfqhbkR9vEkXYCg9KVmTmgUZ3oPZ0sR2rOyaZ5D0wpuZAqnsGJ2Qv3ikZLpY54
AL4/Wm4hWYZXSX4z3/cVW3+awRf+a7A/lLHQYXLj24X6DEBzQIpN2Ngfe5rFxJxfcmFiewhWYEu/
pnaEjDVWcWc7cx6AtW8p/RhOfiPg+kNU4rY7vbVnj/AfRnVGurpBLp3B0+pdHLIYBOIMBtSr8wzN
RIFYTCcnpCU2+TXoxlMFUIagdBaC7v/SP+a17npuisMAFPGRXerkEhxfzHs8e3UOfGtjLjwT7HD4
uTBqyfImviN0UDDPPzl58m0mbWCEkPFjzZFZbE+TX4esBR4PLwcg2D4g+hAj/XUsCuTxU2pA1D7q
8BWQeQuUMTt2QrTKWdP9PNjs3sqJ3C0NlPMB2NMjKCZfOiWX/tJpQELtRpjspF3jKWF1NXsdMSKZ
nUVpGV27Q0jf+jtHoHb0l7+Bin0MOx93LPeE378sLGn6ATqXse6az6R96qmc8l3MS11XamqQSR2w
bI8T42T2Z+/knqQ/Mu2sjS3lZyxJgUSkgcss4stbTkos67JwQRZ+/ix5V/5uyX0auxdvKSV34ivb
5ZQEtCDOJerQV+feNPvGFe4ryJNdfvr7MfsFiL97vAaksOskFdLRg96NIEWLYG1o08Ou59IN9tv/
jEO1kVYS2mG8y+9r9GZpV8IBRgD269FhBHdLlElUBhhILhurmsOiott9icGXAY7MgqD49nLVdP0y
7s935HUwJ7/BOtrNtlwUuijrRx+i2xAn57rbWd2EkUYUqMzwAqP0au0kpCv9Ybq4w2HfP6LYMFAv
EIa0M4fAUApxhH2IqOETP43ppbT0IksyMpZghK919ODW1+JaOaNHk7Ui6pmoKr49hCIIzz0TyFnI
ek1i2zfdaD0Lh8gXiaZ0ElonffkP5rqcx3/ODDgWGBQVjXytB7Hab4bU1zYk5H2IbSR3yLlBZNc3
D36Kq6mjRiec1PaQqMmlB7d2DY3uPsDO60QiKhhnUzxrvt2gdcFjEO5LPt9J608y4GSrC0IRorRn
0sw3G1GBswiEupCbXTPT3N3LJGB1IFke5bZf2zu+0RtFp1NXoI8epT06xYUGhIm6XWgjP7jpvAXa
SgcsKH3ojTGuGeuQnMjw9o6tupBvYd39VQn3zaUAz+tTiiMcPpprnvsOk0XB10s7p0ytdWJO5luR
uxtAt/8bI9D7TsckQ1BESaiheIQmOJtpVzJDMhRYts3w9alRETphsCwJRLnKCGIjjlHxcfvAxszg
LlAvaofyLvzCnN8TOcvL+7pBGkME/Fg8OSkY3d/WFdKN8oOR3TO6CHFf5/0S+HEQCN4V9jsnoq/d
KNJlJ2Sy8U85P6q8/1AJp9zj0xJnhUNVbNZT7eLU2WuYb6s9u/HK7fnEdLWtjiyAOZ13RvSijp+y
M0s9SO/Wfyc8s10lEEu613DDJDkBVJxh2U6VQ2ISeS4bARdfPtV+SVNL6N08LqQADyl8eoDBH2zG
9olYU9X4H1cHgLfIu+huiShLloeiOohA5POz2IA7nLwyj967FrWfcDaJArjDJg0FvE0x0UImERws
UJknvMUV7ilqI1qjjQHO2w1NzeaxR1FHYVNf5viRvh0TDixWgLm5AotDtrwSgLJSHbV/AtEjLyXc
cqwlS/6DO8bEJluVSMZR8L1T2lXC0U8j4wap0y9ViWNxk68FrBIZahY3JfMcbWyY+L3yXzPQlz1O
5FSUjSj6jWBj2w6OpiljSU1TI9Wj+Y8PCV/3agS9mv6GOoPCbI/0NHVnB0kZGV/rpUMD0e/RWdFT
rcnB8OMN6lB6AhjH7tL5CaeHbgo+rd1IwKtzaJalgyYV2mobTmOAzzXejDyX0IKyzB7vQbRSruN+
uMGw3L/3tE5L1Q9HYuNCru/QcbX49THXuLWp09D3Y+bRMOKwDUT8MQ2IEkZbL3jFyQN6msU3nHGG
CFJFTJWuZrclXwxw+qgn48sIXTBEsJIvXcfW89qku+WnHBZFa3ZKD7QY2zqy/y3VwvIy9Y2o3osS
/3VfEh++3jKefm/+/A5lhx7AuR0Y2Y6O3JQUd5ANiX0MUbXitPx6OTmOaKOcHbNOazYdwW5BUYaJ
ZWLb07AOt1oDLdimBNXkKnv0QI6FALW0kyHH7P+doOUvyCTRSbCFNLC8zN0cKDOlvGORUNoh3LTF
EOe1cd10VYkXLOnNlwc/k1sRATL3uRpnI9Bjuqn1CQPYogDOppq93wEt+bb9RjJnHlJFnq5b+eF4
7nCnrojZxK0VVvBD4HSgmdYDRBnm229AxD/nur/vzJtZNOYlBklK/cF4aze+OY2DBBUTTKoGd4i3
IcuFCncoQgV5vkPE0XIY0tMtfHzvYTMj4zdKpi97GlTf9XvNwZtbYCGs7qmqOaI42WKKA87+8PD+
jYfxV0xeu3rm65ufiwOowPt0HYtd6Wiaol4sWWD6/xZpiTXOr5i/MI7/J3bBOzYN7wH4CT0TZdZZ
EVf8f9B+j7fFhEW+RqoXJQdeIMEXXgoZN2EdqjD5ma/Dd5PuZEK7ZmPXkUBSDN0nc5tw8HRFeCpe
WD6YJ0QgkUDn1qNibqonddcIWTKx8aoZrCWIyfVQalCElXcfpFh3NjYqKhBv0giw71ui42rX96NH
1lNwfbAb/1QggeCBKPeNDc54AIb5gKJUzSAXER44OxIeJIY6qn8OYN6bB4GxBa4mtZNUWG2rzuxP
H9rJRVxYPLkrkQJRFVECeFw9nee9bQVrTnsDMwXXxGU3n9ciXjQdKETxTmSuMu++fhmLJfG6crtD
XAadLR/fbpzn5mlx+IdebaJfqhSms8zpArOgKw9Qyg93iyDtgomECTIfADZfrOB8awK+muRRDyDl
FUB+wXknv9ENb8mQugpuk/UymN+abYNlnL35nuO+sYyTyNJw7+DNtPDSS5XqExB6L+pQ6qbQqkB2
ehV5JyNv9nDgf941GdqQfVwsMWn9/8XegUlHQU0enfKfRkd6rDFVi4bnf8+FsZl0IxuMkZzJaBZp
EXVr2ef8b6g/j7hlXC2/P3/ZQEQ0myzddIsf3wq/OOJ1Cc8A0jCcfvRRLDmqP3jxNYH4Blr0doDm
DjkBEwyby9egT34tQN5SUG/R8GkCCNpz5oK13CLHdNvsqocw8omjDGfVydJYLt8VoWts0yWokLBl
iCEeuhmhu/zSUwwZ2ux2SBMlL1SYCVcdskRG9NlDfofIimdL51Fd7ikw1+N1sVitmEmNo8/GUK0/
FFxl3j/CgPLWcO8xmWuDQZstm2UEA1h5zl1xHApphx86mU33NJwhFDs94JOJUAj1uR2bpjxAJKSq
QYwZH9zjoSukNC9l6X6szANRdOSc7/Skq1zn72LreWrwr/kpPTEjPXrZcitQ2sVjEz769W3iHw1A
fVXFK2hHWWLINdQdItS+fOgrA3tB9+m+C4/tiG4FDWZMhQXZSlN7UMqQcx5D8MkmUXgWLjX/vDKV
R9MAHaIu+vycm8hB+d/LVQYmOivyjm2z/ILz64OvdCzz0SWuxYyjoZ+DyD7i0aVIX/SrsSLZplDz
r7zjiB6UWfnIxtRHrYDwgRjfIsda2yAcrrLm8F5z/LaxQjasUluedpOWF/Y75ik4KX6jGd6LZWuu
77KYs9jgqzRcfk4DKTQMTAZqGpYjHsqQMZfyLr4OJX1YhuLeGu7+3uj7Szwt1xk0oV5VnyIhiPWh
tgYdT8Wl8mKmLlUf9g3QO4Mz4/hTRvl4l6vtWUHGZ6lsuQk+Iv8+GBYHFGbXBzf0cLBc4PW4K6A9
QQX90kAgrZSCTKZPQvDTO53xyG2QzBmcx3pvEETzyIY7I7WLMSY+NsVtFsMzcNWLHfQH+3LnIOWN
IxmJ4b1AAVWSi/h2XjzKPek4w4Ua5Tw/8HtrSqSokkoxmneN+mp+YLzZdsMTymhuduVI6u1nliwb
4RmdQtHczycEBIQdkQ/Au19TOS8sNNEzWhU4vjQRKgyJ/OKniDEOkDBKKCkI7GtMT8Ww68wR9c3P
T2YL2YLgVqT8dBvNXqyzZ6j6yuNDsl0MOYR/FbXwIPpDIUw2R66lbCpTbLTi2DpIwxFd9AeCsmU6
0pZOD//IJRZPD6YWAG4ze51P2ZBP/PuLHdLym7vh47YaY333H8eavrYtSnZtJqgw2auRKmVd60xf
CXa0QmrMnn8YmEqxzQaONRbHVsUt5/EDOal/lsHo12M1K8L07ft8VvHNR9CzG6U/0MP7pRjINQxi
zrvHs7EhH3P/4HOVR7ZLF/enY+Vhb99Jg3PZPxhXp0x37aWTdaOmbaNjbWyj6RpHzF1aZ8YYnje7
RP6ZEEq0FyAxvKD/ILDYZOu2b8+bAu/q/ZiMed+CQKoxd7K1arsbG5ESFAcAQaNGsjez3vSUcktX
TSZNugG2UNz+CKDH/Sc4u1xhdA0CjRXdp+yrlf1ZFxLfFLLUFwuuin9YmymjcjW1+BzLbzBlx8in
exzEmgHyUERuokx/IVyPlCycamClzunF4aTwI1Zim5YAzXIfIwJ097asgpI7QrbEi9hzH5tqXXcp
88EVwl0rjEhHfwHAgMPzF35VYSEz2jqpa5eaqeuhHy8JHvCD42pmccbMFDCy+UJDuGhTJxGqEZxw
DGS1OpJLHSB2IW8sSwXyN6fWY48RLyuOlTdQ1AbPXI+X3BVyEtXHQNMkOCUMi7vaOlibrrwF6Qxt
DQ2hQ5YTWAvk2E3rB8ygpCJXue2o79VnN+g5MYyXkTzNtfkLZCQlWLsTsejnyhCUfv3MwLpwLtwJ
47GxXMmDNsy6iMYVSaYn8eJz2H9vWJGMvvzI/VYzkj/XzsTTPM7HUU4/WOP5bAEFuQHfRXX0GekY
Dld8j2pSaRww0i4yYXdT3aAJ5wStCGoL64FvUxatRhf6XKVSF6zaSSlRxMy908+mCzkx6kM46G4z
DbmKZbrWlU//aMoYn1BHaCiXePpmpAtJcyD/7zEaSbq7KS5g/m2liJ/7POeRFxXZIDcBgxPLOMfi
TzDqjTWRzUjEQM1lBjCnlB27ZnNSXVQDvXAyUe7sqltWg1EgNpEhbXKEJtljXdvq9OpBV+oJwI93
pDOkiiRFv6m8bqYHkKwq/Ob9qJglXJOFXTrpaoDtCkmhQ8sDiuDMs3WuLbZtXtKOqt1f/PrI7Vba
QEGcyBon5cwTXJZJ/U/TlZX/R5I5DTNMELsXUB4g1Bu+0DA+2F0Ip0r27YEIxAYU+jcnoCap5kKd
6yqGQh1Yv7CKnewV54aZCcOiXdPEjy4HvnHq0BPC/CxepJeTwQNmARAPcdrU/M8laJ8yr4ptz0no
cN1WyEs37LP06BkBAesvUYpK2eG3LmbiykMT1/gvV+U78r6zEGtjzMB4OCy1HyYc7ngduCDF/TLC
J6qv2WVAAC1jBor4xFR3+xmOqc67tN5uo7J6FcVWW8ypNHCMqq1Zxrsx0A/I+umj9M25p0N1PTRO
ztwvbhQ/LgGH9tSbtuyQq0xhiYipUsjLu5brO9tr7DDF3ZzGD2jjSrzeelriLIBo2Fg7O3/1cBlF
ItoWd8L+K4LoPSp5CBJGSY94eZG5R5A/+s8yMm4e0Ua/4qP2gIrQ1dj6Mal5x7QN0aXwqe4ghlLg
SC1lwQJ/QtQHrpb7DF//r/fQrQoMT0qr3D/WhJWRk15rGb6dDm0iBwZYBHHtD+CCuqHkQufPVieY
hLCc+KIF2+Urnh0CVIyZ8Dsb5ChGsXVK7xVtclqaYqPT5Q3c1a19qWi9vBbo213WnfPAafj2CMjC
HKXf8TiN5jSWCaqnf8jDxThxDiNsXe27pvJSxGDowI/Bn+6A8GyIyguYRwF9fULtO6rBSpfBbFsV
gCkHV+pMYEJIbY43EvlQsnBuSCO6pGrerAvb0dVOV0eVtqO1sGTVfEz6PjsvILlDWKMJxpLV+8MZ
VfIk4sVo4MgR92LxvsMX3QhCh5mh5Tj0lpO6aCGqoW0MrXEryNG+VrPkvHxPuRX+JhTrY8Dn51h+
IxGo6CkjA3OCtYR0QHANPwQk2ibCBvmPsPJWnovL3Kvhx26GoFLRuPltaQFDlnvASOzIL+i3VfDf
sLXC8/axpIZdjc/ngetoKpFOcwddYaraZCHCX2QQh29pWUVbNWY3Tf3PbeEt+WA0Pw4DIC2OwD86
ibXVEVc1JgnzDjMk1BkN4A4+M10EGxD3ctejS9ILqo7k6UaS+lB+ys+gHE0av2m5NxlIVPYB7VRx
o5Tmrm8TsquLMf/twd5qxd3cLGHWUX+iZRYVbkB8cW0mqlIFfaHTxnqX4rVpAlgV0znPtVkqGk/s
r5fpUVL/j1+FNOhdx/BPKxk/HGkbISmEXlID87gLz1FOKS3uumHcqeDhY8AtahZnlDPp4hjXCm5E
rT8ndCxj44RHKYQ5cMKjCRIuirHKH4DPgdLGrG0ZR+tvnn4oGUNSWdxe4LMvCTfxupd79tovQtx7
a+dUzdCJ/QlXTo1FZVJILexUhH3ZnAKXmlv6g27lu6iR2Qu+BXk4Di63x/jVniRN7B2jGlFnVIt0
LTUNi83zpw2nSrWdq8xiSBovPkSVXEWQsB4lo0YIf0bahI7KYc7xIZtevkPOKPiyxaw6PjRYVyVV
8Bpxv5rGZUmcfb0xeo25JUT2DOPUnWw7t48BKteNAQuy0xy6RgOiTPkRc2lnxAOkV3Or2W8kU64p
ZDidnAvbcJHq/Zx9KusnJLduMlB7qOKFsc0bCBMH0zhYEA/kqOHAe43KqqZesNRiPHlRMAEE/M40
TOSD9p1CmKYniiziddEkme0kaelhzPx+dFdCoPOO6Kqda3sM+RWC2KLIT0n1Lvrc9jI6u8Y7PBW7
Y4ESF/jKhvqc5oqR2ztZWsSEKox8l/TTdWVrWWA3pblo6fVjp6gp8ZlfP237VP+i9yrvwjfl++se
d2o+n6kvJdHgNBVGHbKocwCTDw+A9YOLqeoO/MZSLM8mZo/pfWUdfuYEd/AE5iTwiyaPfZdQb2hP
8X2cthxREtcn10ocb4ZUiRs90vi3kjXWbVqFprkQMrK9ivj5QCj72UTWJM7ga9/0J6GsArXW+TvQ
ahplXCcf2VpVL4PV7ghJspLxQBkZL1yDlLe/6E6w0g85v597UiiscQGxuXIMu8chQNvEF/mH4St7
L+vi8cWuLD1ItoMlc4vk3pewnEo2/G7y3qJIdeYo308ZOmztMrQwpsXasRS5OfV3jBm1Bal4dqxi
ElH6k0ORJeNq0T2N4M9iCJYc4E+1oLxs5IWD4dsoITZuWyZYOY24zavPVHUtfHi/nalbAjtu9+8w
WYdcICKoh4DBBYRrNlhjyjpnMZqOfzWSkO2MsCWbdMSo/AeJ1yiNTrsTF2Fz8+YnXh7hd/HjpW7M
mrJfCkkJT3NncVa9L2XVt8zd3epAAlxcY7dtqasrSsJmwqrZR//6Tbbm86qgf8+mntxfkH7oKm6q
BKMAZNsL453QS4p90QKYjYuaEvJh5aC5UPpPIsD6Spq5+hJ8yNXA8+VBMGIaqXY+NvcfY5PXubg0
8rZMJe5SoF/VsEsOzGIz4SNCwBo/8yFMznLwi9yDcO3/p+fSm56o//i+rd/BNLMWOu0l+QOWZcwT
prUYFAWTeXyEg0AYXFIb5AfEl8mcUYJEPToXxtH72FTrIlvH2ad8/YxdP98MTSECDRHgBbYTPDiZ
Ff9gN3tfJEyY4pzax7fRVqKjWS4fiGBK/0rwAzPSTBAkpkz0upfoIi0e+EcfsfHAAkyCc9ltDokC
SZ7YuoS2cwXjK36ip/4kHY4OpsKIqzG22gXgAPRd2JgD3wHdUKP3xa9EYFJTe05lx0C74RA1s91O
HQEKGbmH1XWCqNngf/lPVT0zueW2EaR6HlSZPb5iwzWF1eWBrfywxyksXyq497VXSmrwUQBa7gOv
TticXkuappduZeGTuqMz55bS14CdXXoFQgj/JVH+WmJCPrrZMpDYZD7b8j2iQOCSfg3FvMqNFXJV
U0DO5EISZVha+kfzv6rTwkQByJpYB+EXUHhjz+zHdfyxmE2MNg==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
