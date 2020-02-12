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

fn futhark_entry_covariance_f32 {m:nat}( p : !futctxptr
                                       , out : (&float? >> _)
                                       , inp0 : !f32_arrptr(m)
                                       , inp1 : !f32_arrptr(m)
                                       ) : int =
  "ext#"

fn futhark_entry_covariance_f64 {m:nat}( p : !futctxptr
                                       , out : (&double? >> _)
                                       , inp0 : !f64_arrptr(m)
                                       , inp1 : !f64_arrptr(m)
                                       ) : int =
  "ext#"

fn futhark_entry_stddev_pop_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_stddev_pop_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_correlation_f32 {m:nat}( p : !futctxptr
                                        , out : (&float? >> _)
                                        , inp0 : !f32_arrptr(m)
                                        , inp1 : !f32_arrptr(m)
                                        ) : int =
  "ext#"

fn futhark_entry_correlation_f64 {m:nat}( p : !futctxptr
                                        , out : (&double? >> _)
                                        , inp0 : !f64_arrptr(m)
                                        , inp1 : !f64_arrptr(m)
                                        ) : int =
  "ext#"

fn futhark_entry_skewness_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_skewness_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_kurtosis_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_kurtosis_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_skewness_adj_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_skewness_adj_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"

fn futhark_entry_kurtosis_excess_f32 {m:nat}(p : !futctxptr, out : (&float? >> _), inp : !f32_arrptr(m)) : int =
  "ext#"

fn futhark_entry_kurtosis_excess_f64 {m:nat}(p : !futctxptr, out : (&double? >> _), inp : !f64_arrptr(m)) : int =
  "ext#"
