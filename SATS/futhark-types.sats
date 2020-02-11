// Futhark types
// TODO: absvt@ype
absvtype fut_ctx_cfg
absvtype fut_ctx
absvtype f32_arr_1d
absvtype f64_arr_1d

// OpenCL types
absvtype cl_cmd_queue = $extype "cl_command_queue"
absvtype cl_mem = $extype "cl_mem"

// Pointer synonyms
vtypedef futctxcfgptr = [l:addr] (fut_ctx_cfg @ l | ptr(l))
vtypedef futctxptr = [l:addr] (fut_ctx @ l | ptr(l))
vtypedef clcmdqptr = [l:addr] (cl_cmd_queue @ l | ptr(l))

absvtype f32_arr(m: int)

vtypedef f32_arrptr(m: int) = [l:addr] (f32_arr(m) @ l | ptr(l))

absvtype f64_arr(m: int)

vtypedef f64_arrptr(m: int) = [l:addr] (f64_arr(m) @ l | ptr(l))
