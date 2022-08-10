library verilog;
use verilog.vl_types.all;
entity FreqRegulator_vlg_vec_tst is
    generic(
        NO_STAGES       : integer := 3;
        INV_DELAY_ps    : integer := 8330
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of NO_STAGES : constant is 1;
    attribute mti_svvh_generic_type of INV_DELAY_ps : constant is 1;
end FreqRegulator_vlg_vec_tst;
