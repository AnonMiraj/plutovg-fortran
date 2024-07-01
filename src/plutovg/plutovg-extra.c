#include "plutovg-private.h"

int32_t get_pixel(const plutovg_surface_t* surface, int x, int y) {

    unsigned char* data = plutovg_surface_get_data(surface);
    int stride = plutovg_surface_get_stride(surface);

    uint32_t* p = (uint32_t*)(data + stride * y);

    return p[x];
}
void set_pixel(const plutovg_surface_t* surface, int x, int y,int32_t pixel) {

    unsigned char* data = plutovg_surface_get_data(surface);
    int stride = plutovg_surface_get_stride(surface);

    uint32_t* p = (uint32_t*)(data + stride * y);

    p[x]=pixel;
}
