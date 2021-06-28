PACKAGE MyPackage IS

	COMPONENT BitVectorComparator
		PORT (
		A      : IN BIT_VECTOR(3 DOWNTO 0);        
		B      : IN BIT_VECTOR(3 DOWNTO 0);        
		OUTPUT : OUT BIT 
		);
	END COMPONENT;
   
END MyPackage;

PACKAGE BODY MyPackage IS
	CONSTANT CONSTANTE_GLOBAL: INTEGER := 200;
END MyPackage;