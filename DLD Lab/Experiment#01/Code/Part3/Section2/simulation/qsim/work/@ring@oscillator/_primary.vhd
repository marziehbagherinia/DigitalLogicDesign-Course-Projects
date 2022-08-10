library verilog;
use verilog.vl_types.all;
entity RingOscillator is
    generic(
        NO_STAGES       : integer := 3;
        INV_DELAY_ns    : integer := 2
    );
    port(
        en              : in     vl_logic;
        clk_out         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NO_STAGES : constant is 1;
    attribute mti_svvh_generic_type of INV_DELAY_ns : constant is 1;
end RingOscillator;
