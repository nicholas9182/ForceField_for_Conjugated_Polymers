# USAGE - four arguments, the output file name, and the three resnames for the first, middle and last units in the oligomer

source ~/.zshrc

output=$1

first=$2
middle=$3
end=$4

packmol << EOF
tolerance 2.0
filetype pdb
output pdb_files/${output}.pdb 

structure pdb_files/${first}.pdb
number 1 
resnumbers 2
center 
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 13.85 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb 
number 1 
resnumbers 2
center 
fixed 27.7 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 41.55 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 55.4 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${end}.pdb
number 1 
resnumbers 2
center 
fixed 69.25 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 


EOF

rm \#*
