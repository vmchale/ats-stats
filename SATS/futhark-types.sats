// Futhark types
absvt@ype fut_ctx_cfg
absvt@ype fut_ctx
absvt@ype f32_arr_1d
absvt@ype f64_arr_1d

// OpenCL types
vtypedef cl_cmd_queue = $extype "cl_command_queue"
vtypedef cl_mem = $extype "cl_mem"

// Pointer synonyms
vtypedef futctxcfgptr = [ l : addr | l > null ] (fut_ctx_cfg @ l | ptr(l))
vtypedef futctxptr = [ l : addr | l > null ] (fut_ctx @ l | ptr(l))
vtypedef clcmdqptr = [l:addr] (cl_cmd_queue @ l | ptr(l))

absvt@ype f32_arr(m: int)

vtypedef f32_arrptr(m: int) = [ l : addr | l > null ] (f32_arr(m) @ l | ptr(l))

absvt@ype f64_arr(m: int)

vtypedef f64_arrptr(m: int) = [ l : addr | l > null ] (f64_arr(m) @ l | ptr(l))
