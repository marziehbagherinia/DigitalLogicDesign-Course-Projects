library verilog;
use verilog.vl_types.all;
entity FreqRegulator is
    port(
        equal           : out    vl_logic;
        Init            : in     vl_logic;
        adjustedDiv     : out    vl_logic_vector(7 downto 0);
        GN              : in     vl_logic;
        clk             : in     vl_logic;
        Down            : in     vl_logic;
        clk2            : in     vl_logic;
        setPeriod       : in     vl_logic_vector(7 downto 0);
        load            : out    vl_logic;
        tffout          : out    vl_logic;
        duration        : out    vl_logic_vector(7 downto 0)
    );
end FreqRegulator;
