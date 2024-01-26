source ~/.zshrc
function run_em(){

	echo "1" | gmx pdb2gmx -f pdb_files/${1}.pdb
	top_itp topol.top ${1} ${2}
	
	echo "#include \"OBT.ff/forcefield.itp\"" > test.top
	echo "#include \"$1.itp\"" >> test.top
	echo "" >> test.top
	echo "[ system ]" >> test.top
	echo "$2" >> test.top
	echo "" >> test.top
	echo "[ molecules ]" >> test.top
	echo "$2	1" >> test.top
	
	gmx grompp -f EM.mdp -p test.top -o $1.tpr
	gmx mdrun -s $1.tpr -deffnm $1 -v
	rm $1.trr $1.tpr $1.log $1.edr conf.gro mdout.mdp posre.itp
	gmx editconf -f $1.gro -o $1.pdb
	rm $1.gro

}

run_em ND6 ND6

