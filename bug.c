#include <stdio.h>

#include "./target/include/futlinalg.h"

int main() {
    float arr0 [3] = {1.0f, 2.0f, 3.0f};
    float arr1 [3] = {1.0f, 2.0f, 3.0f};

    struct futhark_context_config* ctx_cfg = futhark_context_config_new();
    struct futhark_context* ctx = futhark_context_new(ctx_cfg);

    struct futhark_f32_1d* fut_arr0 = futhark_new_f32_1d(ctx, arr0, 3);
    struct futhark_f32_1d* fut_arr1 = futhark_new_f32_1d(ctx, arr1, 3);

    float* ret;

    futhark_entry_dotprod_f32(ctx, ret, fut_arr0, fut_arr1);

    /* printf("%f", ret); */

    futhark_free_f32_1d(ctx, fut_arr0);
    futhark_free_f32_1d(ctx, fut_arr1);

    futhark_context_free(ctx);
    futhark_context_config_free(ctx_cfg);

}
