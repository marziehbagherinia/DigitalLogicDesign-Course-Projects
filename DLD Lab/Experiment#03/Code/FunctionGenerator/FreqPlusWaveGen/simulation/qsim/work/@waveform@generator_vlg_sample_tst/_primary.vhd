library verilog;
use verilog.vl_types.all;
entity WaveformGenerator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        SW              : in     vl_logic_vector(12 downto 0);
        sampler_tx      : out    vl_logic
    );
end WaveformGenerator_vlg_sample_tst;
