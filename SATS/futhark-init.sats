staload "SATS/futhark-types.sats"

fn futhark_get_num_sizes() : int =
  "ext#"

fn futhark_get_size_name(int) : string =
  "ext#"

fn futhark_get_size_class(int) : string =
  "ext#"

fn futhark_context_config_new() : futctxcfgptr =
  "ext#"

fn futhark_context_config_free(futctxcfgptr) : void =
  "ext#"

fn futhark_context_config_add_build_option(p : !futctxcfgptr, string) :
  void =
  "ext#"

fn futhark_context_config_set_debugging(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_profiling(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_logging(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_device(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_set_platform(p : !futctxcfgptr, string) :
  void =
  "ext#"

