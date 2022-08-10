library verilog;
use verilog.vl_types.all;
entity multiplexer is
    port(
        first           : in     vl_logic;
        second          : in     vl_logic;
        selector        : in     vl_logic;
        w               : out    vl_logic
    );
end multiplexer;
