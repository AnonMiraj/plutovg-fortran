#ifndef PLUTOVG_EXTRA_H
#define PLUTOVG_EXTRA_H

#include "plutovg.h"
#include <cstdint>
#ifdef __cplusplus
extern "C" {
#endif


int32_t get_pixel(const plutovg_surface_t* surface, int x, int y);
int32_t set_pixel(const plutovg_surface_t* surface, int x, int y,int32_t color);

#ifdef __cplusplus
}
#endif

#endif // PLUTOVG_EXTRA_H
