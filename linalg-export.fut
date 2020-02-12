import "lib/github.com/diku-dk/linalg/linalg"

module linalg_f32 = mk_linalg f32
module linalg_f64 = mk_linalg f64

entry dotprod_f32 = linalg_f32.dotprod
entry dotprod_f64 = linalg_f64.dotprod

entry cross_f32 = linalg_f32.cross
entry cross_f64 = linalg_f64.cross

entry matmul_f32 = linalg_f32.matmul
entry matmul_f64 = linalg_f64.matmul

entry outer_f32 = linalg_f32.outer
entry outer_f64 = linalg_f64.outer

entry matvecmul_row_f32 = linalg_f32.matvecmul_row
entry matvecmul_row_f64 = linalg_f64.matvecmul_row

entry matvecmul_col_f32 = linalg_f32.matvecmul_col
entry matvecmul_col_f64 = linalg_f64.matvecmul_col
