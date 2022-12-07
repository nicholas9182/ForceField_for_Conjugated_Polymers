source ~/.zshrc

packmol << EOF
tolerance 2.0
filetype pdb
output hex_T.pdb 

structure pdb_files/DI.pdb 
number 1 
center 
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 11.75 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 23.5 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 35.25 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 47 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 58.75 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 70.5 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 82.25 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 94 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 105.75 0 0 3.14 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/DM.pdb 
number 1 
center 
fixed 117.5  0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure pdb_files/HE.pdb 
number 1 
center 
fixed 129.25 -0.3 0 3.14 0 0.1
inside box 0. 0. 0. 0 0 0 
end structure 



EOF

rm \#*
