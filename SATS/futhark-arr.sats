staload "SATS/futhark-types.sats"

fn futhark_new_f32_1d {m:nat}(p : !fut_ctx, arrayptr(float,m), int(m)) : f32_arrptr =
  "ext#"
