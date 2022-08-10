library verilog;
use verilog.vl_types.all;
entity shiftreg is
    port(
        serIn           : in     vl_logic;
        CLK             : in     vl_logic;
        shEn            : in     vl_logic;
        RST             : in     vl_logic;
        srOut           : out    vl_logic_vector(5 downto 0)
    );
end shiftreg;
