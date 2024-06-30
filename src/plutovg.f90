module plutovg
use, intrinsic :: iso_c_binding
implicit none
interface

function plutovg_surface_create(width, height) bind(c)
  import :: c_ptr, c_int
  implicit none
  type(c_ptr) :: plutovg_surface_create
  integer(c_int), value :: width
  integer(c_int), value :: height
end function

function plutovg_surface_create_for_data(data, width, height, stride) bind(c)
  import :: c_ptr, c_int
  implicit none
  type(c_ptr) :: plutovg_surface_create_for_data
  type(c_ptr), value :: data
  integer(c_int), value :: width
  integer(c_int), value :: height
  integer(c_int), value :: stride
end function

function plutovg_surface_reference(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_surface_reference
  type(c_ptr), value :: surface
end function

subroutine plutovg_surface_destroy(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: surface
end subroutine

function plutovg_surface_get_reference_count(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_reference_count
  type(c_ptr), value :: surface
end function

function plutovg_surface_get_data(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_surface_get_data
  type(c_ptr), value :: surface
end function

function plutovg_surface_get_width(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_width
  type(c_ptr), value :: surface
end function

function plutovg_surface_get_height(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_height
  type(c_ptr), value :: surface
end function

function plutovg_surface_get_stride(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_stride
  type(c_ptr), value :: surface
end function

subroutine plutovg_surface_write_to_png(surface, filename) bind(c)
  import :: c_ptr, c_char
  implicit none
  type(c_ptr), value :: surface
  character(kind=c_char), dimension(*) :: filename
end subroutine

subroutine plutovg_rect_init(rect, x, y, w, h) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: rect
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
end subroutine

subroutine plutovg_rect_init_empty(rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
end subroutine

subroutine plutovg_rect_init_invalid(rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
end subroutine

function plutovg_rect_empty(rect) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_rect_empty
  type(c_ptr), value :: rect
end function

function plutovg_rect_invalid(rect) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_rect_invalid
  type(c_ptr), value :: rect
end function

subroutine plutovg_rect_unite(rect, source) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
  type(c_ptr), value :: source
end subroutine

subroutine plutovg_rect_intersect(rect, source) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
  type(c_ptr), value :: source
end subroutine

subroutine plutovg_matrix_init(matrix, m00, m10, m01, m11, m02, m12) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: m00
  real(c_double), value :: m10
  real(c_double), value :: m01
  real(c_double), value :: m11
  real(c_double), value :: m02
  real(c_double), value :: m12
end subroutine

subroutine plutovg_matrix_init_identity(matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
end subroutine

subroutine plutovg_matrix_init_translate(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_init_scale(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_init_shear(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_init_rotate(matrix, radians) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
end subroutine

subroutine plutovg_matrix_init_rotate_translate(matrix, radians, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_translate(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_scale(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_shear(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_rotate(matrix, radians) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
end subroutine

subroutine plutovg_matrix_rotate_translate(matrix, radians, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_matrix_multiply(matrix, a, b) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
  type(c_ptr), value :: a
  type(c_ptr), value :: b
end subroutine

function plutovg_matrix_invert(matrix) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_matrix_invert
  type(c_ptr), value :: matrix
end function

subroutine plutovg_matrix_map(matrix, x, y,t_x,t_y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
  type(c_ptr), value ::t_x
  type(c_ptr), value ::t_y
end subroutine

subroutine plutovg_matrix_map_point(matrix, src, dst) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
  type(c_ptr), value :: src
  type(c_ptr), value :: dst
end subroutine

subroutine plutovg_matrix_map_rect(matrix, src, dst) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
  type(c_ptr), value :: src
  type(c_ptr), value :: dst
end subroutine

function plutovg_path_create() bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_create
end function

function plutovg_path_reference(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_reference
  type(c_ptr), value :: path
end function

subroutine plutovg_path_destroy(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
end subroutine

function plutovg_path_get_reference_count(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_get_reference_count
  type(c_ptr), value :: path
end function

subroutine plutovg_path_move_to(path, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_path_line_to(path, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_path_quad_to(path, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

subroutine plutovg_path_cubic_to(path, x1, y1, x2, y2, x3, y3) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
  real(c_double), value :: x3
  real(c_double), value :: y3
end subroutine

subroutine plutovg_path_arc_to(path, x1, y1, x2, y2, radius) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
  real(c_double), value :: radius
end subroutine

subroutine plutovg_path_close(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
end subroutine

subroutine plutovg_path_rel_move_to(path, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

subroutine plutovg_path_rel_line_to(path, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

subroutine plutovg_path_rel_quad_to(path, dx1, dy1, dx2, dy2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
end subroutine

subroutine plutovg_path_rel_cubic_to(path, dx1, dy1, dx2, dy2, dx3, dy3)&
& bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
  real(c_double), value :: dx3
  real(c_double), value :: dy3
end subroutine

subroutine plutovg_path_rel_arc_to(path, dx1, dy1, dx2, dy2, radius) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
  real(c_double), value :: radius
end subroutine

subroutine plutovg_path_add_rect(path, x, y, w, h) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
end subroutine

subroutine plutovg_path_add_round_rect(path, x, y, w, h, rx, ry) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
  real(c_double), value :: rx
  real(c_double), value :: ry
end subroutine

subroutine plutovg_path_add_ellipse(path, cx, cy, rx, ry) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: rx
  real(c_double), value :: ry
end subroutine

subroutine plutovg_path_add_circle(path, cx, cy, r) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: r
end subroutine

subroutine plutovg_path_add_arc(path, cx, cy, r, a0, a1, ccw) bind(c)
  import :: c_ptr, c_double, c_int
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: r
  real(c_double), value :: a0
  real(c_double), value :: a1
  integer(c_int), value :: ccw
end subroutine

subroutine plutovg_path_add_path(path, source, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
  type(c_ptr), value :: source
  type(c_ptr), value :: matrix
end subroutine

subroutine plutovg_path_transform(path, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
  type(c_ptr), value :: matrix
end subroutine

subroutine plutovg_path_get_current_point(path, x, y) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end subroutine

function plutovg_path_get_element_count(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_get_element_count
  type(c_ptr), value :: path
end function

function plutovg_path_get_elements(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_get_elements
  type(c_ptr), value :: path
end function

function plutovg_path_get_point_count(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_get_point_count
  type(c_ptr), value :: path
end function

function plutovg_path_get_points(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_get_points
  type(c_ptr), value :: path
end function

subroutine plutovg_path_clear(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
end subroutine

function plutovg_path_empty(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_empty
  type(c_ptr), value :: path
end function

function plutovg_path_clone(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_clone
  type(c_ptr), value :: path
end function

function plutovg_path_clone_flat(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_clone_flat
  type(c_ptr), value :: path
end function

subroutine plutovg_color_init_rgb(color, r, g, b) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: color
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
end subroutine

subroutine plutovg_color_init_rgba(color, r, g, b, a) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: color
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
  real(c_double), value :: a
end subroutine

function plutovg_create(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_create
  type(c_ptr), value :: surface
end function

function plutovg_reference(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_reference
  type(c_ptr), value :: pluto
end function

subroutine plutovg_destroy(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

function plutovg_get_reference_count(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_reference_count
  type(c_ptr), value :: pluto
end function

subroutine plutovg_save(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr),value :: pluto
end subroutine

subroutine plutovg_restore(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr),value :: pluto
end subroutine
!plutovg_set_paint_type(const plutovg_t* pluto, plutovg_paint_type_t type);

subroutine plutovg_set_paint_type(pluto,type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr),value :: pluto
  type(c_ptr),value :: type !! todo enum
end subroutine

function plutovg_get_paint_type(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_paint_type !! todo enum
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_rgb(pluto, r, g, b) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
end subroutine

subroutine plutovg_set_rgba(pluto, r, g, b, a) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
  real(c_double), value :: a
end subroutine

subroutine plutovg_set_color(pluto, color) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: color!! todo simple struct
end subroutine

function plutovg_get_color(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_color!! todo simple struct
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_linear_gradient(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

subroutine plutovg_set_radial_gradient(pluto, cx, cy, cr, fx, fy, fr) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: cr
  real(c_double), value :: fx
  real(c_double), value :: fy
  real(c_double), value :: fr
end subroutine

subroutine plutovg_set_gradient_type(pluto, type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: type!! todo enum
end subroutine

function plutovg_get_gradient_type(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_gradient_type!! todo enum
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_gradient_spread(pluto, type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: type!! todo enum
end subroutine

function plutovg_get_gradient_spread(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_gradient_spread!! todo enum
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_gradient_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix!! todo simple struct
end subroutine

subroutine plutovg_reset_gradient_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

function plutovg_get_gradient_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_gradient_matrix!! todo simple struct
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_gradient_opacity(pluto, opacity) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: opacity
end subroutine

function plutovg_get_gradient_opacity(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_gradient_opacity
  type(c_ptr), value :: pluto
end function

subroutine plutovg_add_gradient_stop_rgb(pluto, offset, r, g, b) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
end subroutine

subroutine plutovg_add_gradient_stop_rgba(pluto, offset, r, g, b, a) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: r
  real(c_double), value :: offset
  real(c_double), value :: g
  real(c_double), value :: b
  real(c_double), value :: a
end subroutine

subroutine plutovg_add_gradient_stop_color(pluto, offset, color) bind(c)
  import :: c_ptr,c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
  type(c_ptr), value :: color!! todo simple struct
end subroutine

subroutine plutovg_add_gradient_stop(pluto, stop) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: stop !! todo simple struct
end subroutine

subroutine plutovg_clear_gradient_stops(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

function plutovg_get_gradient_stop_count(pluto) bind(c)
  import :: c_ptr,c_int
  implicit none
  integer(c_int) :: plutovg_get_gradient_stop_count
  type(c_ptr), value :: pluto
end function

function plutovg_get_gradient_stop_data(pluto) bind(c)
  import :: c_ptr,c_int
  implicit none
  type(c_ptr) :: plutovg_get_gradient_stop_data !! todo simple struct
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_linear_gradient_values(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

subroutine plutovg_set_radial_gradient_values(pluto, cx, cy, cr, fx, fy, fr) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: cr
  real(c_double), value :: fx
  real(c_double), value :: fy
  real(c_double), value :: fr
end subroutine

subroutine plutovg_get_linear_gradient_values(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

subroutine plutovg_get_radial_gradient_values(pluto, cx, cy, cr, fx, fy, fr) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: cr
  real(c_double), value :: fx
  real(c_double), value :: fy
  real(c_double), value :: fr
end subroutine

subroutine plutovg_set_texture(pluto, surface, type, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: surface
  type(c_ptr), value :: type!! todo enum
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_set_texture_surface(pluto, surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: surface
end subroutine

function plutovg_get_texture_surface(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_texture_surface!! todo enum
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_texture_type(pluto, type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: type!! todo enum
end subroutine

function plutovg_get_texture_type(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_texture_type!! todo enum
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_texture_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix!! todo simple struct
end subroutine

subroutine plutovg_reset_texture_matrix(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

function plutovg_get_texture_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_texture_matrix!! todo simple struct
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_texture_opacity(pluto, opacity) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: opacity
end subroutine

function plutovg_get_texture_opacity(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_texture_opacity
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_operator(pluto, op) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: op!! todo enum
end subroutine

subroutine plutovg_set_opacity(pluto, opacity) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: opacity
end subroutine

subroutine plutovg_set_fill_rule(pluto, winding) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: winding!! todo enum
end subroutine

function plutovg_get_operator(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_operator!! todo enum
  type(c_ptr), value :: pluto
end function

function plutovg_get_opacity(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_opacity
  type(c_ptr), value :: pluto
end function

function plutovg_get_fill_rule(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_fill_rule!! todo enum
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_line_width(pluto, width) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: width
end subroutine

subroutine plutovg_set_line_cap(pluto, cap) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: cap!! todo enum
end subroutine

subroutine plutovg_set_line_join(pluto, join) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: join!! todo enum
end subroutine

subroutine plutovg_set_miter_limit(pluto, limit) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: limit
end subroutine

function plutovg_get_line_width(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_line_width
  type(c_ptr), value :: pluto
end function

function plutovg_get_line_cap(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_line_cap!! todo enum
  type(c_ptr), value :: pluto
end function

function plutovg_get_line_join(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_line_join!! todo enum
  type(c_ptr), value :: pluto
end function

function plutovg_get_miter_limit(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_miter_limit
  type(c_ptr), value :: pluto
end function

subroutine plutovg_set_dash(pluto, offset, data, size) bind(c)
  import :: c_ptr, c_double, c_int
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
  type(c_ptr), value :: data !! todo 
  integer(c_int), value :: size
end subroutine

subroutine plutovg_set_dash_offset(pluto, offset) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
end subroutine

subroutine plutovg_set_dash_data(pluto, data, size) bind(c)
  import :: c_ptr, c_int
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: data !! todo 
  integer(c_int), value :: size
end subroutine

subroutine plutovg_add_dash_data(pluto, value) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: value
end subroutine

subroutine plutovg_clear_dash_data(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

function plutovg_get_dash_offset(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_dash_offset
  type(c_ptr), value :: pluto
end function

function plutovg_get_dash_data(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_dash_data !! todo 
  type(c_ptr), value :: pluto
end function

function plutovg_get_dash_data_count(pluto) bind(c)
  import :: c_ptr, c_int
  implicit none
  integer(c_int) :: plutovg_get_dash_data_count
  type(c_ptr), value :: pluto
end function

subroutine plutovg_translate(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_scale(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_rotate(pluto, radians) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: radians
end subroutine

subroutine plutovg_transform(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix!! todo simple struct
end subroutine

subroutine plutovg_set_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix!! todo simple struct
end subroutine

subroutine plutovg_identity_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_get_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix!! todo simple struct
end subroutine

subroutine plutovg_move_to(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_line_to(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

subroutine plutovg_quad_to(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

subroutine plutovg_cubic_to(pluto, x1, y1, x2, y2, x3, y3) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
  real(c_double), value :: x3
  real(c_double), value :: y3
end subroutine

subroutine plutovg_rel_move_to(pluto, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

subroutine plutovg_rel_line_to(pluto, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

subroutine plutovg_rel_quad_to(pluto, dx1, dy1, dx2, dy2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
end subroutine

subroutine plutovg_rel_cubic_to(pluto, dx1, dy1, dx2, dy2, dx3, dy3) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
  real(c_double), value :: dx3
  real(c_double), value :: dy3
end subroutine

subroutine plutovg_rect(pluto, x, y, w, h) bind(c)
  import :: c_ptr, c_double, c_int
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
end subroutine

subroutine plutovg_round_rect(pluto, x, y, w, h, rx, ry) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
  real(c_double), value :: rx
  real(c_double), value :: ry
end subroutine

subroutine plutovg_ellipse(pluto, cx, cy, rx, ry) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: rx
  real(c_double), value :: ry
end subroutine

subroutine plutovg_circle(pluto, cx, cy, r) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: r
end subroutine

subroutine plutovg_arc(path, cx, cy, r, a0, a1, ccw) bind(c)
  import :: c_ptr, c_double, c_int
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: r
  real(c_double), value :: a0
  real(c_double), value :: a1
  integer(c_int), value :: ccw
end subroutine

subroutine plutovg_add_path(pluto, path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: path !! todo enum
end subroutine

subroutine plutovg_new_path(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_close_path(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_get_current_point(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), intent(out) :: x
  real(c_double), intent(out) :: y
end subroutine

function plutovg_get_path(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_path
  type(c_ptr), value :: pluto
end function

subroutine plutovg_fill(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_stroke(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_clip(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_paint(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_fill_preserve(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_stroke_preserve(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_clip_preserve(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

subroutine plutovg_fill_extents(pluto, rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: rect !! todo simple struct
end subroutine

subroutine plutovg_stroke_extents(pluto, rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: rect !! todo simple struct
end subroutine

subroutine plutovg_clip_extents(pluto, rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: rect !! todo simple struct
end subroutine

subroutine plutovg_reset_clip(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

end interface
end module plutovg
