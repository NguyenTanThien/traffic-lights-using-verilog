library verilog;
use verilog.vl_types.all;
entity control is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        rstc            : out    vl_logic;
        \select\        : out    vl_logic;
        equal           : in     vl_logic;
        signal1         : out    vl_logic_vector(2 downto 0);
        signal2         : out    vl_logic_vector(2 downto 0)
    );
end control;
