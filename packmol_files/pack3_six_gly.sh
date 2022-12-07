source ~/.zshrc

packmol << EOF
tolerance 2.0
filetype pdb
output /Users/nicholassiemons/Dropbox/OBT/0011/trimer_six_gly.pdb

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/A6.pdb 
number 1 
center 
resnumbers 2
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/B6.pdb 
number 1 
center 
resnumbers 2
fixed 7.85 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/C6.pdb 
number 1 
center 
resnumbers 2
fixed 15.7 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 


EOF

rm \#*
