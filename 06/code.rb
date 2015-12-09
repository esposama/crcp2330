class Code 
	DEST = { 
		nil => '',
		'M' => '001', 
		'D' => '010', 
		'MD' => '011', 
		'A' => '100', 
		'AM' => '101', 
		'AD' => '110', 
		'AMD' => '111', 
	}

 	def dest(mnemonic)
 		DEST[mnemonic]
 	end 
 	def comp(mnemonic)
 		"CCCCCCCC"
 	end 
 	def jump(mnemonic)
 		"JJJ"
 	end 

end 