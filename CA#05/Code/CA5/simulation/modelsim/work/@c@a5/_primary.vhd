library verilog;
use verilog.vl_types.all;
entity CA5 is
    port(
        L0              : out    vl_logic_vector(3 downto 0);
        Zero            : in     vl_logic;
        serIn           : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        L1              : out    vl_logic_vector(3 downto 0);
        L2              : out    vl_logic_vector(3 downto 0);
        L3              : out    vl_logic_vector(3 downto 0)
    );
end CA5;
