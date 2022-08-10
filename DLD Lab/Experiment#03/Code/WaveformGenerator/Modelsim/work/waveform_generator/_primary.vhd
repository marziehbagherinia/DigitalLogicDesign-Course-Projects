library verilog;
use verilog.vl_types.all;
entity waveform_generator is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        func            : in     vl_logic_vector(2 downto 0);
        wave_out        : out    vl_logic_vector(7 downto 0)
    );
end waveform_generator;
