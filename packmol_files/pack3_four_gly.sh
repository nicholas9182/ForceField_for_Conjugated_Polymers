source ~/.zshrc

packmol << EOF
tolerance 2.0
filetype pdb
output /Users/nicholassiemons/Dropbox/OBT/0011/trimer_four_gly.pdb

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/A4.pdb 
number 1 
center 
resnumbers 2
fixed 0 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/B4.pdb 
number 1 
center 
resnumbers 2
fixed 7.85 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 

structure /Users/nicholassiemons/Dropbox/OBT/0011/pdb_files/C4.pdb 
number 1 
center 
resnumbers 2
fixed 15.7 0 0 0 0 0
inside box 0. 0. 0. 0 0 0 
end structure 


EOF

rm \#*
