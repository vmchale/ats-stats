staload "SATS/futhark-types.sats"

// TODO: float? >> _ or sdmething that indicates it's filled
vtypedef fptr(l: addr) = (float? @ l | ptr(l))
vtypedef dptr(l: addr) = (double? @ l | ptr(l))

// TODO: is the #[l:addr] correct?
fn futhark_entry_mean_f32 {m:nat}{l:addr}(p : !futctxptr, out : (float? @ l | ptr(l)), f32_arrptr(m)) :
  (float @ l | int) =
  "ext#"

fn futhark_entry_mean_f64 {m:nat}{l:addr}(p : !futctxptr, out : (double? @ l | ptr(l)), f64_arrptr(m)) :
  (double @ l | int) =
  "ext#"
