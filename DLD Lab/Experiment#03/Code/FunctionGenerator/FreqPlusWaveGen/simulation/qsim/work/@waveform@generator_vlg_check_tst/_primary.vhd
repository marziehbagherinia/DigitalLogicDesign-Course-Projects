library verilog;
use verilog.vl_types.all;
entity WaveformGenerator_vlg_check_tst is
    port(
        result          : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end WaveformGenerator_vlg_check_tst;
