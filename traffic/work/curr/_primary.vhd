library verilog;
use verilog.vl_types.all;
entity curr is
    generic(
        size            : integer := 3
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        d               : in     vl_logic_vector;
        Q               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end curr;
