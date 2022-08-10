library verilog;
use verilog.vl_types.all;
entity sineSquare_wave is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sineSquare_out  : out    vl_logic_vector(7 downto 0)
    );
end sineSquare_wave;
