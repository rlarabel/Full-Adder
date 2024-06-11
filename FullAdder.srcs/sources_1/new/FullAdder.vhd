library IEEE; 
use IEEE.std_logic_1164.all;

entity fulladder is
  port(input_a, input_b, carry_in: in std_logic;     --inputs
       carry_out, sum: out std_logic);   --outputs
end fulladder;

architecture behavioral of fulladder is

begin			-- concurrent assignment statements
  sum  <= input_a xor input_b xor carry_in; 
  carry_out <= (input_a and input_b) or (input_a and carry_in) or (input_b and carry_in);

end behavioral;