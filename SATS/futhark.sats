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

fn futhark_context_config_add_build_option(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_set_debugging(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_profiling(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_logging(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_device(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_set_platform(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_select_device_interactively(p : !futctxcfgptr) : void =
  "ext#"

fn futhark_context_config_dump_program_to(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_load_program_from(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_dump_binary_to(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_load_binary_from(p : !futctxcfgptr, string) : void =
  "ext#"

fn futhark_context_config_set_default_group_size(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_default_num_groups(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_default_tile_size(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_default_threshold(p : !futctxcfgptr, int) : void =
  "ext#"

fn futhark_context_config_set_size(p : !futctxcfgptr, string, size_t) : void =
  "ext#"

fn futhark_context_new(p : !futctxcfgptr) : futctxptr =
  "ext#"

fn futhark_context_new_with_command_queue(p : !futctxcfgptr, q : !clcmdqptr) : futctxptr =
  "ext#"

fn futhark_context_free(futctxptr) : void =
  "ext#"

fn futhark_context_sync(p : !futctxptr) : int =
  "ext#"

fn futhark_context_get_error(p : !futctxptr) : string =
  "ext#"

fn futhark_context_pause_profiling(p : !futctxptr) : void =
  "ext#"

fn futhark_context_unpause_profiling(p : !futctxptr) : void =
  "ext#"

fn futhark_context_clear_caches(p : !futctxptr) : int =
  "ext#"

fn futhark_context_get_command_queue(p : !futctxptr) : cl_cmd_queue =
  "ext#"

fn futhark_debugging_report(p : !futctxptr) : void =
  "ext#"
