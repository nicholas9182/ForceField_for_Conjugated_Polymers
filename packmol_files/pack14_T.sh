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
fixed 11.75 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb 
number 1 
resnumbers 2
center 
fixed 23.5 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 35.25 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 47 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 58.75 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 70.5 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 82.25 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 94 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb 
number 1 
resnumbers 2
center 
fixed 105.75 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 117.5  0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 129.25  0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${middle}.pdb
number 1 
resnumbers 2
center 
fixed 141  0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/${end}.pdb
number 1 
resnumbers 2
center 
fixed 152.15 -0.3 0 3.14 0 0.1
inside box 0. 0. 0. 0 0 0 
end structure 

EOF

rm \#*
