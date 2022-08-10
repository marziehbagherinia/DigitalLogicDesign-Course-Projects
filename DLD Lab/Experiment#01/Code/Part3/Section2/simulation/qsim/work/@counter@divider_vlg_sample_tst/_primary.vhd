library verilog;
use verilog.vl_types.all;
entity CounterDivider_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        DownUp          : in     vl_logic;
        GN              : in     vl_logic;
        In0             : in     vl_logic;
        In1             : in     vl_logic;
        In2             : in     vl_logic;
        In3             : in     vl_logic;
        In4             : in     vl_logic;
        In5             : in     vl_logic;
        In6             : in     vl_logic;
        In7             : in     vl_logic;
        Init            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CounterDivider_vlg_sample_tst;
