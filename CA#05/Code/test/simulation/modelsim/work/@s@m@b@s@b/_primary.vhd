library verilog;
use verilog.vl_types.all;
entity SMBSB is
    port(
        serIn           : in     vl_logic;
        LB              : in     vl_logic_vector(1 downto 0);
        PB              : in     vl_logic_vector(3 downto 0);
        L0              : out    vl_logic_vector(3 downto 0);
        L1              : out    vl_logic_vector(3 downto 0);
        L2              : out    vl_logic_vector(3 downto 0);
        L3              : out    vl_logic_vector(3 downto 0)
    );
end SMBSB;
