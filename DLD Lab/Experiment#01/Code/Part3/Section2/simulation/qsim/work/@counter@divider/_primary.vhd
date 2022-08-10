library verilog;
use verilog.vl_types.all;
entity CounterDivider is
    port(
        out0            : out    vl_logic;
        Init            : in     vl_logic;
        In7             : in     vl_logic;
        In6             : in     vl_logic;
        In5             : in     vl_logic;
        In4             : in     vl_logic;
        DownUp          : in     vl_logic;
        GN              : in     vl_logic;
        In3             : in     vl_logic;
        In2             : in     vl_logic;
        In1             : in     vl_logic;
        In0             : in     vl_logic;
        clk             : in     vl_logic;
        out1            : out    vl_logic;
        out2            : out    vl_logic;
        out3            : out    vl_logic;
        out4            : out    vl_logic;
        out5            : out    vl_logic;
        out6            : out    vl_logic;
        out7            : out    vl_logic;
        cout            : out    vl_logic;
        MaxMin2         : out    vl_logic
    );
end CounterDivider;
