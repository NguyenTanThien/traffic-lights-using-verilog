library verilog;
use verilog.vl_types.all;
entity \next\ is
    generic(
        size            : integer := 3
    );
    port(
        start           : in     vl_logic;
        equal           : in     vl_logic;
        Q               : in     vl_logic_vector;
        D               : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end \next\;
