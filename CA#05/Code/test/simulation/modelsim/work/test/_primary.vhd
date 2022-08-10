library verilog;
use verilog.vl_types.all;
entity test is
    port(
        EN              : out    vl_logic;
        serIn           : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Done            : out    vl_logic
    );
end test;
