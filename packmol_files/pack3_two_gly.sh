source ~/.zshrc

packmol << EOF
tolerance 2.0
filetype pdb
output /Users/nicholassiemons/Dropbox/OBT/0011/trimer_two_gly.pdb

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/A2.pdb 
number 1 
center 
resnumbers 2
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/B2.pdb 
number 1 
center 
resnumbers 2
fixed 7.85 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/C2.pdb 
number 1 
center 
resnumbers 2
fixed 15.7 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 


EOF

rm \#*
