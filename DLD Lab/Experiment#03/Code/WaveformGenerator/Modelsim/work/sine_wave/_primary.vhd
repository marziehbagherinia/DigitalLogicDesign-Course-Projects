library verilog;
use verilog.vl_types.all;
entity sine_wave is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sine_out        : out    vl_logic_vector(7 downto 0)
    );
end sine_wave;
