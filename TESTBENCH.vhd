LIBRARY work;
USE work.MyPackage.all;

ENTITY TESTBENCH IS
END ENTITY;

ARCHITECTURE RTL OF TESTBENCH IS

	SIGNAL S_A, S_B : BIT_VECTOR (3 DOWNTO 0);
	SIGNAL S_OUT    : BIT;
	
BEGIN

    BitVectorComparator_0 : BitVectorComparator 
	 PORT MAP (
		A      => S_A,
		B      => S_B,
		OUTPUT => S_OUT
	);

	S_A <= "0101" AFTER 0ns, "1100" AFTER 40ns;
	S_B <= "0101" AFTER 0ns, "1001" AFTER 40ns;
		  
END ARCHITECTURE;