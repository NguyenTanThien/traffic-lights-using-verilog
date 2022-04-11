library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        \select\        : in     vl_logic;
        rstc            : in     vl_logic;
        equal           : out    vl_logic;
        count1          : out    vl_logic_vector(7 downto 0)
    );
end datapath;
