staload "SATS/futhark-types.sats"

// technically should be int not int64 but eh
fn futhark_new_f32_1d {m:nat}(p : !futctxptr, inp : !arrayptr(float, m), int(m)) : f32_arrptr(m) =
  "ext#"

fn futhark_new_raw_f32_1d {m:nat}(p : !futctxptr, !cl_mem, int, int(m)) : f32_arrptr(m) =
  "ext#"

fn futhark_free_f32_1d {m:nat}(p : !futctxptr, arr : f32_arrptr(m)) : int =
  "ext#"

fn futhark_values_f32_1d {m:nat}(p : !futctxptr, arr : !f32_arrptr(m), out : !arrayptr(float?, m)) : int =
  "ext#"

fn futhark_values_raw_f32_1d {m:nat}(p : !futctxptr, arr : !f32_arrptr(m)) : cl_mem =
  "ext#"

fn futhark_shape_f32_1d {m:nat}(p : !futctxptr, arr : !f32_arrptr(m)) : int(m) =
  "ext#"

fn futhark_new_f64_1d {m:nat}(p : !futctxptr, inp : !arrayptr(double, m), int(m)) : f64_arrptr(m) =
  "ext#"

fn futhark_new_raw_f64_1d {m:nat}(p : !futctxptr, !cl_mem, int, int(m)) : f64_arrptr(m) =
  "ext#"

fn futhark_free_f64_1d {m:nat}(p : !futctxptr, arr : f64_arrptr(m)) : int =
  "ext#"

fn futhark_values_f64_1d {m:nat}(p : !futctxptr, arr : !f64_arrptr(m), out : !arrayptr(double?, m)) : int =
  "ext#"

fn futhark_values_raw_f64_1d {m:nat}(p : !futctxptr, arr : !f64_arrptr(m)) : cl_mem =
  "ext#"

fn futhark_shape_f64_1d {m:nat}(p : !futctxptr, arr : !f64_arrptr(m)) : int(m) =
  "ext#"
