library verilog;
use verilog.vl_types.all;
entity compare is
    generic(
        size            : integer := 8
    );
    port(
        \select\        : in     vl_logic;
        A               : in     vl_logic_vector;
        equal           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of size : constant is 1;
end compare;
