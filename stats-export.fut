import "lib/github.com/diku-dk/statistics/statistics"

module stats_f32 = mk_statistics f32
module stats_f64 = mk_statistics f64

entry mean_f32 = stats_f32.mean
entry mean_f64 = stats_f64.mean

entry correlation_f32 = stats_f32.correlation
entry correlation_f64 = stats_f64.correlation
