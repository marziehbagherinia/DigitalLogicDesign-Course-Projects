library verilog;
use verilog.vl_types.all;
entity FreqRegulator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk2            : in     vl_logic;
        Down            : in     vl_logic;
        GN              : in     vl_logic;
        Init            : in     vl_logic;
        setPeriod       : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end FreqRegulator_vlg_sample_tst;
