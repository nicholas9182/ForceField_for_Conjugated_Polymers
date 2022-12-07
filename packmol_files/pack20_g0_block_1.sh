 
source ~/.zshrc

output="NDI_g0_block_1"

unit1="I1"
unit2="I4"
unit3="I2"
unit4="I4"
unit5="I2"
unit6="I4"
unit7="I2"
unit8="I4"
unit9="I2"
unit10="I4"
unit11="I2"
unit12="I4"
unit13="I2"
unit14="I4"
unit15="I2"
unit16="I4"
unit17="I2"
unit18="I4"
unit19="I2"
unit20="I4"
unit21="I3"

 x1=0   	;  y1=0		;  z1=0
 x2=7.55	;  y2=0		;  z2=0
 x3=7.35	;  y3=0		;  z3=0
 x4=7.55	;  y4=0		;  z4=0
 x5=7.35	;  y5=0		;  z5=0
 x6=7.55	;  y6=0		;  z6=0
 x7=7.35	;  y7=0		;  z7=0
 x8=7.55	;  y8=0		;  z8=0
 x9=7.35	;  y9=0		;  z9=0
x10=7.55	; y10=0		; z10=0
x11=7.35	; y11=0		; z11=0
x12=7.55	; y12=0		; z12=0
x13=7.35	; y13=0		; z13=0
x14=7.55	; y14=0		; z14=0
x15=7.35	; y15=0		; z15=0
x16=7.55	; y16=0		; z16=0
x17=7.35	; y17=0		; z17=0
x18=7.55	; y18=0		; z18=0
x19=7.35	; y19=0		; z19=0
x20=7.55	; y20=0		; z20=0
x21=7.35	; y21=0		; z21=0

 X1=${x1} ; 		 Y1=${y1} ; 		 Z1=${z1}
 X2=$((X1+x2)) ; 	 Y2=$((Y1+y2)) ;  	 Z2=${z1}
 X3=$((X2+x3)) ; 	 Y3=$((Y2+y3)) ;  	 Z3=${z1}
 X4=$((X3+x4)) ;	 Y4=$((Y3+y4)) ;  	 Z4=${z1}
 X5=$((X4+x5)) ;  	 Y5=$((Y4+y5)) ;  	 Z5=${z1}
 X6=$((X5+x6)) ;  	 Y6=$((Y5+y6)) ;  	 Z6=${z1}
 X7=$((X6+x7)) ;  	 Y7=$((Y6+y7)) ;  	 Z7=${z1}
 X8=$((X7+x8)) ;  	 Y8=$((Y7+y8)) ;  	 Z8=${z1}
 X9=$((X8+x9)) ; 	 Y9=$((Y8+y9)) ;  	 Z9=${z1}
X10=$((X9+x10)) ; 	Y10=$((Y9+y10)) ; 	Z10=${z1}
X11=$((X10+x11)) ; 	Y11=$((Y10+y11)) ; 	Z11=${z1}
X12=$((X11+x12)) ; 	Y12=$((Y11+y12)) ; 	Z12=${z1}
X13=$((X12+x13)) ; 	Y13=$((Y12+y13)) ; 	Z13=${z1}
X14=$((X13+x14)) ; 	Y14=$((Y13+y14)) ; 	Z14=${z1}
X15=$((X14+x15)) ; 	Y15=$((Y14+y15)) ; 	Z15=${z1}
X16=$((X15+x16)) ; 	Y16=$((Y15+y16)) ; 	Z16=${z1}
X17=$((X16+x17)) ; 	Y17=$((Y16+y17)) ; 	Z17=${z1}
X18=$((X17+x18)) ; 	Y18=$((Y17+y18)) ; 	Z18=${z1}
X19=$((X18+x19)) ;	Y19=$((Y18+y19)) ; 	Z19=${z1}
X20=$((X19+x20)) ; 	Y20=$((Y19+y20)) ; 	Z20=${z1}
X21=$((X20+x21)) ; 	Y21=$((Y20+y21)) ; 	Z21=${z1}

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

# 9
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit9}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X9} ${Y9} ${Z9} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 10
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit10}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X10} ${Y10} ${Z10} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 11
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit11}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X11} ${Y11} ${Z11} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 12 
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit12}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X12} ${Y12} ${Z12} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 13
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit13}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X13} ${Y13} ${Z13} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 14
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit14}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X14} ${Y14} ${Z14} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 15
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit15}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X15} ${Y15} ${Z15} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 16
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit16}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X16} ${Y16} ${Z16} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 17
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit17}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X17} ${Y17} ${Z17} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 18
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit18}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X18} ${Y18} ${Z18} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 19
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit19}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X19} ${Y19} ${Z19} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 20
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit20}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X20} ${Y20} ${Z20} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

# 21
structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/${unit21}.pdb 
number 1 
resnumbers 2 
center 
fixed ${X21} ${Y21} ${Z21} 0 0 0 
inside box 0. 0. 0. 0 0 0 
end structure 

EOF

rm \#*
