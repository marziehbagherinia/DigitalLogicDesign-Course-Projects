library verilog;
use verilog.vl_types.all;
entity full_wave is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        fullWave_out    : out    vl_logic_vector(7 downto 0)
    );
end full_wave;
