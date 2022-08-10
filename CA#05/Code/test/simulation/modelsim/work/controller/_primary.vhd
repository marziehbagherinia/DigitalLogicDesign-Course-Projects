library verilog;
use verilog.vl_types.all;
entity controller is
    port(
        serIn           : in     vl_logic;
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        EN              : out    vl_logic;
        Done            : out    vl_logic
    );
end controller;
