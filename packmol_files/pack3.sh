source ~/.zshrc

packmol << EOF
tolerance 2.0
filetype pdb
output ../test.pdb

structure ../pdb_files/MI.pdb
number 1 
center 
resnumbers 2
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure ../pdb_files/MM.pdb 
number 1 
center 
resnumbers 2
fixed 7.85 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure ../pdb_files/ME.pdb 
number 1 
center 
resnumbers 2
fixed 15.7 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 


EOF

rm \#*
