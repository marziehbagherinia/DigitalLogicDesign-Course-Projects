library verilog;
use verilog.vl_types.all;
entity FreqRegulator_vlg_check_tst is
    port(
        adjustedDiv     : in     vl_logic_vector(7 downto 0);
        duration        : in     vl_logic_vector(7 downto 0);
        equal           : in     vl_logic;
        load            : in     vl_logic;
        tffout          : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FreqRegulator_vlg_check_tst;
