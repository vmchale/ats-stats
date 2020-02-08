staload "SATS/futhark-types.sats"

fn futhark_new_f32_1d {m:nat}(p : !futctxptr, arrayptr(float,m), int64(m)) : f32_arrptr =
  "ext#"

fn futhark_new_raw_f32_1d(p : !futctxptr, cl_mem, int, int64) : f32_arrptr =
  "ext#"

fn futhark_free_f32_1d(p : !futctxptr, arr : !f32_arrptr) : int =
  "ext#"
