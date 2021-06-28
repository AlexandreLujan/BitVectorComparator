ENTITY BitVectorComparator IS
	PORT (        
		A      : IN BIT_VECTOR(3 DOWNTO 0);        
		B      : IN BIT_VECTOR(3 DOWNTO 0);        
		OUTPUT : OUT BIT    
	);
END ENTITY;

ARCHITECTURE RTL OF BitVectorComparator IS
   
BEGIN

	OUTPUT <= ( 
					(((NOT A(0)) AND (NOT B(0))) OR (A(0) AND B(0))) AND
				   (((NOT A(1)) AND (NOT B(1))) OR (A(0) AND B(0))) AND
				   (((NOT A(2)) AND (NOT B(2))) OR (A(0) AND B(0))) AND
				   (((NOT A(3)) AND (NOT B(3))) OR (A(0) AND B(0)))
				 );
			  
END ARCHITECTURE;