library verilog;
use verilog.vl_types.all;
entity WaveformGenerator is
    port(
        result          : out    vl_logic_vector(7 downto 0);
        \select\        : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        func            : in     vl_logic_vector(2 downto 0)
    );
end WaveformGenerator;
