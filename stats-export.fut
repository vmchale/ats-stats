import "lib/github.com/diku-dk/statistics/statistics"

module stats_f32 = mk_statistics f32
module stats_f64 = mk_statistics f64

entry mean_f32 = stats_f32.mean
entry mean_f64 = stats_f64.mean

entry gmean_f32 = stats_f32.gmean
entry gmean_f64 = stats_f64.gmean

entry hmean_f32 = stats_f32.hmean
entry hmean_f64 = stats_f64.hmean

entry qmean_f32 = stats_f32.qmean
entry qmean_f64 = stats_f64.qmean

entry variance_f32 = stats_f32.variance
entry variance_f64 = stats_f64.variance

entry stddev_f32 = stats_f32.stddev
entry stddev_f64 = stats_f64.stddev

entry covariance_f32 = stats_f32.covariance
entry covariance_f64 = stats_f64.covariance

entry correlation_f32 = stats_f32.correlation
entry correlation_f64 = stats_f64.correlation

entry variance_pop_f32 = stats_f32.variance_pop
entry variance_pop_f64 = stats_f64.variance_pop

entry stddev_pop_f32 = stats_f32.stddev_pop
entry stddev_pop_f64 = stats_f64.stddev_pop

entry skewness_f32 = stats_f32.skewness
entry skewness_f64 = stats_f64.skewness

entry skewness_adj_f32 = stats_f32.skewness_adj
entry skewness_adj_f64 = stats_f64.skewness_adj

entry kurtosis_f32 = stats_f32.kurtosis
entry kurtosis_f64 = stats_f64.kurtosis

entry kurtosis_excess_f32 = stats_f32.kurtosis_excess
entry kurtosis_excess_f64 = stats_f64.kurtosis_excess
