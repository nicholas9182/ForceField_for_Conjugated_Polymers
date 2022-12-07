 
source ~/.zshrc

output="DPP_TTVTT"

unit1="D07"
unit2="D08"
unit3="D08"
unit4="D08"
unit5="D08"
unit6="D08"
unit7="D08"
unit8="D09"
unit9="NA"
unit10="NA"

 x1=0   	;  y1=0		;  z1=0
 x2=23.2	;  y2=0		;  z2=0
 x3=23.2	;  y3=0		;  z3=0
 x4=23.2	;  y4=0		;  z4=0
 x5=23.2	;  y5=0		;  z5=0
 x6=23.2	;  y6=0		;  z6=0
 x7=23.2	;  y7=0		;  z7=0
 x8=23.2	;  y8=0		;  z8=0
 x9=23.2	;  y9=0		;  z9=0
x10=23.2	; y10=0		; z10=0

 X1=${x1} ; 				 Y1=${y1} ; 			 Z1=${z1}
 X2=$(echo "$X1 + $x2" | bc) ; 		 Y2=$(echo "$Y1+$y2" | bc) ;  	 Z2=${z2}
 X3=$(echo "$X2 + $x3" | bc) ; 		 Y3=$(echo "$Y2+$y3" | bc) ;  	 Z3=${z3}
 X4=$(echo "$X3 + $x4" | bc) ;		 Y4=$(echo "$Y3+$y4" | bc) ;  	 Z4=${z4}
 X5=$(echo "$X4 + $x5" | bc) ;  	 Y5=$(echo "$Y4+$y5" | bc) ;  	 Z5=${z5}
 X6=$(echo "$X5 + $x6" | bc) ;  	 Y6=$(echo "$Y5+$y6" | bc) ;  	 Z6=${z6}
 X7=$(echo "$X6 + $x7" | bc) ;  	 Y7=$(echo "$Y6+$y7" | bc) ;  	 Z7=${z7}
 X8=$(echo "$X7 + $x8" | bc) ;  	 Y8=$(echo "$Y7+$y8" | bc) ;  	 Z8=${z8}
 X9=$(echo "$X8 + $x9" | bc) ; 		 Y9=$(echo "$Y8+$y9" | bc) ;  	 Z9=${z9}
X10=$(echo "$X9 + $x10" | bc) ; 	Y10=$(echo "$Y9+$y10" | bc) ; 	Z10=${z10}

echo ${X2} ${Y2} ${Z2}

packmol << EOF
tolerance 2.0
filetype pdb
output /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${output}.pdb 

# 1
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit1}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X1} ${Y1} ${Z1} 0 0 0  
inside box 0. 0. 0. 0 0 0 
end structure 

# 2
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit2}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X2} ${Y2} ${Z2} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 3
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit3}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X3} ${Y3} ${Z3} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 4
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit4}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X4} ${Y4} ${Z4} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

#5
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit5}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X5} ${Y5} ${Z5} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 6
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit6}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X6} ${Y6} ${Z6} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

#7
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit7}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X7} ${Y7} ${Z7} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

#8
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit8}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X8} ${Y8} ${Z8} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 


EOF

rm \#*
