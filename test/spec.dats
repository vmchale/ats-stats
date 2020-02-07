staload "SATS/futhark-stats.sats"

implement main0 () =
  {
    val ctx = futhark_context_config_new()
    val () = futhark_context_config_free(ctx)
  }

