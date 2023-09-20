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
	gmx mdrun -s $1.tpr -deffnm $1
	rm $1.trr $1.tpr $1.log $1.edr conf.gro mdout.mdp posre.itp
	gmx editconf -f $1.gro -o $1.pdb
	rm $1.gro

}

#run_em NDI_g0_block_1 N01
#run_em NDI_g100_block_1 N1001

#run_em NDI_g10_block_1 N101
#run_em NDI_g10_block_2 N102
#run_em NDI_g10_block_3 N103
#run_em NDI_g10_block_4 N104
#run_em NDI_g10_block_5 N105

#run_em NDI_g20_block_1 N201
#run_em NDI_g20_block_2 N202
#run_em NDI_g20_block_3 N203
#run_em NDI_g20_block_4 N204
#run_em NDI_g20_block_5 N205

#run_em NDI_g30_block_1 N301
#run_em NDI_g30_block_2 N302
#run_em NDI_g30_block_3 N303
#run_em NDI_g30_block_4 N304
#run_em NDI_g30_block_5 N305
#
run_em NDI_g40_block_1 N401
run_em NDI_g40_block_2 N402
run_em NDI_g40_block_3 N403
run_em NDI_g40_block_4 N404
run_em NDI_g40_block_5 N405

run_em NDI_g50_block_1 N501
run_em NDI_g50_block_2 N502
run_em NDI_g50_block_3 N503
run_em NDI_g50_block_4 N504
run_em NDI_g50_block_5 N505

run_em NDI_g60_block_1 N601
run_em NDI_g60_block_2 N602
run_em NDI_g60_block_3 N603
run_em NDI_g60_block_4 N604
run_em NDI_g60_block_5 N605

run_em NDI_g70_block_1 N701
run_em NDI_g70_block_2 N702
run_em NDI_g70_block_3 N703
run_em NDI_g70_block_4 N704
run_em NDI_g70_block_5 N705

run_em NDI_g80_block_1 N801
run_em NDI_g80_block_2 N802
run_em NDI_g80_block_3 N803
run_em NDI_g80_block_4 N804
run_em NDI_g80_block_5 N805

run_em NDI_g90_block_1 N901
run_em NDI_g90_block_2 N902
run_em NDI_g90_block_3 N903
run_em NDI_g90_block_4 N904
run_em NDI_g90_block_5 N905



