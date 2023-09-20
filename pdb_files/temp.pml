
set ignore_case, off
set connect_mode, 0
set retain_order, 1

load I7.pdb

select sidechain, (name C0+C1+O2+C3+C4+O5+C6+C7+O8+C9+Caa+Cb+Oc+Cd+Ce+Of+Cg+Ch+Oi+Cj+C2+C5+C8+Cv+Cp+Cq+Ct+Cc+Cf+Ci+Ck+Cl+Cm+Cn+Oo+Cr+Cs+On+Co+Ou+Cw+Cx+Oy+Cz)
select polymer, (name C0+C1+O2+C3+C4+O5+C6+C7+O8+C9+Caa+Cb+Oc+Cd+Ce+Of+Cg+Ch+Oi+Cj+CS1+CS2+CS3+CS4+CD1+CD2+CD3+CD4+SS+SD+OS+OD+C2+C5+C8+Cv+Cp+Cq+Ct+Cc+Cf+Ci+Ck+Cl+Cm+Cn+Oo+Cr+Cs+On+Co+Ou+Cw+Cx+Oy+Cz)
select backbone, (name CS1+CS2+CS3+CS4+CD1+CD2+CD3+CD4+SS+SD+OS+OD)
select backbone_gT2, (name CS1+CS2+CS3+CS4+CD1+CD2+CD3+CD4+SS+SD+OS+OD+CT1+CT2+CT3+CT4+CT5+CT6+ST1+ST2)
select Hydrogens, (name H*)
select water, (name HW1+HW2+OW+MW)
select surf, (name DOT)
select NA, (name NA)
select CL, (name CL)
select K, (name K)
select close_Water, water within 10 of polymer_
select far_water, water beyond 10 or polymer_
hide everything, Hydrogens
show sticks, water
hide everything, surf
show surface, surf
set surface_mode, 3
set transparency_mode, 1
set transparency, 0.7
set surface_color, skyblue
set ray_opaque_background, off
show spheres, (name CL)
deselect

alter (name Cu),elem='C'
alter (name Ca),elem='C'
alter (name Cs),elem='C'
alter (name Cr),elem='C'
alter (name Co),elem='C'
alter (name Bc),elem='B'
alter (name He),elem='H'

color atomic

alter (name NA), vdw=1.13
alter (name K), vdw=1.38
alter (name CL), vdw=1.67
rebuild

color grey30, all
show sticks, all
show spheres, all
hide sticks, water
set sphere_scale, 0.35
label all, name
set light, [0,0,0]
set label_size, 18

