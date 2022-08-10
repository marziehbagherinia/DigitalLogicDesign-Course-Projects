library verilog;
use verilog.vl_types.all;
entity WaveformGenerator is
    port(
        result          : out    vl_logic_vector(7 downto 0);
        SW              : in     vl_logic_vector(12 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end WaveformGenerator;
