#
# execute each of a list of tcl scripts
#
# meant to be used with the PRE_FLOW_SCRIPT_FILE quartus assignment
# that allows to evaluate a tcl script before analysis starts

set precmd_list { "make_datetime.tcl" }

set script [info script]
foreach item $precmd_list {
    post_message "$script: execute $item"
    exec quartus_sh -t $item
}
