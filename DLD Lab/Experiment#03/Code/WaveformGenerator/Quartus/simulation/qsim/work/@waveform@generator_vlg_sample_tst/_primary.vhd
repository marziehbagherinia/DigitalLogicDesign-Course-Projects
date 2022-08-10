library verilog;
use verilog.vl_types.all;
entity WaveformGenerator_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        func            : in     vl_logic_vector(2 downto 0);
        rst             : in     vl_logic;
        \select\        : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end WaveformGenerator_vlg_sample_tst;
