library verilog;
use verilog.vl_types.all;
entity \out\ is
    generic(
        size            : integer := 3
    );
    port(
        Q               : in     vl_logic_vector;
        signal1         : out    vl_logic_vector(2 downto 0);
        signal2         : out    vl_logic_vector(2 downto 0);
        rstc            : out    vl_logic;
        \select\        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end \out\;
