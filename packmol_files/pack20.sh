# USAGE - four arguments, the output file name, and the three resnames for the first, middle and last units in the oligomer

source ~/.zshrc

output=$1
first=$2
mid=$3
end=$4


packmol << EOF
tolerance 2.0
filetype pdb
output pdb_files/${output}.pdb 

# 1
structure pdb_files/${first}.pdb 
number 1 
resnumbers 2 
center 
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 2
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 7.85 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 3
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 15.7 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 4
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 23.55 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

#5
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 31.4 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 6
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 39.25 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

#7
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 47.1 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

#8
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 54.95 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 9
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 62.8 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 10
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 70.65 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 11
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 78.5 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 12 
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 86.35 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 13
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 94.2 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 14
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 102.05 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 15
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 109.9 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 16
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 117.75 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 17
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 125.6 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 18
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 133.45 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 19
structure pdb_files/${mid}.pdb 
number 1 
resnumbers 2 
center 
fixed 141.3 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

# 20
structure pdb_files/${end}.pdb 
number 1 
resnumbers 2 
center 
fixed 149.15 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 





EOF

rm \#*
