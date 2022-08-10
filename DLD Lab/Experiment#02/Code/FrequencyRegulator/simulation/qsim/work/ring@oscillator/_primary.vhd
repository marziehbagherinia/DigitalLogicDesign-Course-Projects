library verilog;
use verilog.vl_types.all;
entity ringOscillator is
    generic(
        NO_STAGES       : integer := 3;
        INV_DELAY_ps    : integer := 2000
    );
    port(
        en              : in     vl_logic;
        clk             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NO_STAGES : constant is 1;
    attribute mti_svvh_generic_type of INV_DELAY_ps : constant is 1;
end ringOscillator;
