transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl {C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl/SC_RegSHIFTER.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl {C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl/SC_RegGENERAL.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl {C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl/SC_DEBOUNCE1.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl {C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/rtl/SC_STATEMACHINE.v}
vlog -vlog01compat -work work +incdir+C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1 {C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/BB_SYSTEM.v}

vlog -vlog01compat -work work +incdir+C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/simulation/modelsim {C:/Users/juanc/Documents/6to_semestre/digitales/quartus_projects/PRJ0_RegGENERAL_1/PRJ0_RegGENERAL_1/simulation/modelsim/TB_SYSTEM.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  TB_SYSTEM

add wave *
view structure
view signals
run -all
