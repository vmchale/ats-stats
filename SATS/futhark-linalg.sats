staload "SATS/futhark-types.sats"

fn futhark_entry_dotprod_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp0 : !f32_arrptr(m), inp1: !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_dotprod_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp0 : !f64_arrptr(m), inp1: !f64_arrptr(m)) : int =
  "ext#"
