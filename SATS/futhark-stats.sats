staload "SATS/futhark-types.sats"

fn futhark_get_num_sizes() : int =
  "ext#"

fn futhark_get_size_name(int) : string =
  "ext#"

fn futhark_get_size_class(int) : string =
  "ext#"

fn futhark_context_config_new() : futctxptr =
  "ext#"

fn futhark_context_config_free(futctxptr) : void =
  "ext#"

