staload "SATS/futhark-types.sats"

fn futhark_entry_mean_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_mean_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_gmean_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_gmean_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_hmean_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_hmean_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_qmean_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_qmean_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_variance_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_variance_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_stddev_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_stddev_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_variance_pop_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_variance_pop_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"
