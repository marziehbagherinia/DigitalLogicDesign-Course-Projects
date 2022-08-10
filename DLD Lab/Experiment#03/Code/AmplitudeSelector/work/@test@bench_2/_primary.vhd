library verilog;
use verilog.vl_types.all;
entity TestBench_2 is
    generic(
        CLK             : integer := 50
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CLK : constant is 1;
end TestBench_2;
