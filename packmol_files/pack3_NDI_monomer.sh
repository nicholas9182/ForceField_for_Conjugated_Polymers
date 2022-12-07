 
source ~/.zshrc

output="temp"

unit1="I1"
unit2="I5"
unit3="I3"

 x1=0   	;  y1=0		;  z1=0
 x2=7.55	;  y2=0		;  z2=0
 x3=7.35	;  y3=0		;  z3=0

 X1=${x1} ; 		 Y1=${y1} ; 		 Z1=${z1}
 X2=7.55 ; 	 Y2=0 ;  	 Z2=${z1}
 X3=14.9 ; 	 Y3=0 ;  	 Z3=${z1}

echo ${X2} ${Y2} ${Z2}

packmol << EOF
tolerance 2.0
filetype pdb
output /Users/nicholassiemons/Dropbox/OBT/0011/${output}.pdb 

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


EOF

rm \#*
