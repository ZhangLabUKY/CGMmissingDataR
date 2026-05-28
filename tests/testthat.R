Sys.setenv(
  OMP_THREAD_LIMIT = "1",
  OMP_NUM_THREADS = "1",
  OPENBLAS_NUM_THREADS = "1",
  MKL_NUM_THREADS = "1",
  RCPP_PARALLEL_NUM_THREADS = "1"
)

if (requireNamespace("data.table", quietly = TRUE)) {
  data.table::setDTthreads(1)
}
library(testthat)
library(CGMissingDataR)

test_check("CGMissingDataR")
