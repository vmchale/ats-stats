staload "SATS/futhark.sats"

implement main0 () =
  {
    val ctx_cfg = futhark_context_config_new()
    val ctx = futhark_context_new(ctx_cfg)
    val () = futhark_context_free(ctx)
    val () = futhark_context_config_free(ctx_cfg)
  }

