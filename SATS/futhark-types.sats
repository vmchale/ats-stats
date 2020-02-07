// Futhark types
absvtype fut_ctx_cfg
absvtype fut_ctx
absvtype f32_arr_1d
absvtype f64_arr_1d

// OpenCL types
absvtype cl_cmd_queue

vtypedef futctxcfgptr = [l:addr] (fut_ctx_cfg @ l | ptr(l))
vtypedef futctxptr = [l:addr] (fut_ctx @ l | ptr(l))
vtypedef clcmdqptr = [l:addr] (cl_cmd_queue @ l | ptr(l))
