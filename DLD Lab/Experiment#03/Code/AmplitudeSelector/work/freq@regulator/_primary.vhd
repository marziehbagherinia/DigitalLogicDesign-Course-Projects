library verilog;
use verilog.vl_types.all;
entity freqRegulator is
    port(
        data_in         : in     vl_logic_vector(7 downto 0);
        amp_sel         : in     vl_logic_vector(1 downto 0);
        data_out        : out    vl_logic_vector(7 downto 0)
    );
end freqRegulator;
