library verilog;
use verilog.vl_types.all;
entity rhomboid_wave is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        counter         : in     vl_logic_vector(7 downto 0);
        rhomboid_out    : out    vl_logic_vector(7 downto 0)
    );
end rhomboid_wave;
