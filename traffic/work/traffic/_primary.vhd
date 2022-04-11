library verilog;
use verilog.vl_types.all;
entity traffic is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        start           : in     vl_logic;
        signal1         : out    vl_logic_vector(2 downto 0);
        signal2         : out    vl_logic_vector(2 downto 0);
        equal           : out    vl_logic;
        rstc            : out    vl_logic;
        count1          : out    vl_logic_vector(7 downto 0)
    );
end traffic;
