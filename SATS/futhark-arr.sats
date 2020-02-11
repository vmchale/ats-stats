staload "SATS/futhark-types.sats"

fn futhark_new_f32_1d {m:nat}(p : !futctxptr, inp : !arrayptr(float, m), int64(m)) : f32_arrptr(m) =
  "ext#"

fn futhark_new_raw_f32_1d {m:nat}(p : !futctxptr, cl_mem, int, int64(m)) : f32_arrptr(m) =
  "ext#"

fn futhark_free_f32_1d {m:nat}(p : !futctxptr, arr : f32_arrptr(m)) : int =
  "ext#"

fn futhark_values_f32_1d {m:nat}(p : !futctxptr, arr : !f32_arrptr(m), out : !arrayptr(float?, m)) : int =
  "ext#"

fn futhark_values_raw_f32_1d {m:nat}(p : !futctxptr, arr : !f32_arrptr(m)) : cl_mem =
  "ext#"

fn futhark_shape_f32_1d {m:nat}(p : !futctxptr, arr : !f32_arrptr(m)) : int64(m) =
  "ext#"

fn futhark_new_f64_1d {m:nat}(p : !futctxptr, inp : !arrayptr(double, m), int64(m)) : f64_arrptr(m) =
  "ext#"

fn futhark_new_raw_f64_1d {m:nat}(p : !futctxptr, cl_mem, int, int64(m)) : f64_arrptr(m) =
  "ext#"

fn futhark_free_f64_1d {m:nat}(p : !futctxptr, arr : f64_arrptr(m)) : int =
  "ext#"

fn futhark_values_f64_1d {m:nat}(p : !futctxptr, arr : !f64_arrptr(m), out : !arrayptr(double?, m)) : int =
  "ext#"

fn futhark_values_raw_f64_1d {m:nat}(p : !futctxptr, arr : !f64_arrptr(m)) : cl_mem =
  "ext#"

fn futhark_shape_f64_1d {m:nat}(p : !futctxptr, arr : !f64_arrptr(m)) : int64(m) =
  "ext#"
