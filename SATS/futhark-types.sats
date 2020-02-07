vtypedef fut_ctx_cfg = $extype "struct futhark_context_config"
vtypedef f32_arr_1d = $extype "struct futhark_f32_1d"
vtypedef f64_arr_1d = $extype "struct futhark_f64_1d"
vtypedef futctxptr = [l:addr] (fut_ctx_cfg @ l | ptr(l))

