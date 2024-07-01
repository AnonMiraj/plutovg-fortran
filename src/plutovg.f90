module plutovg
use, intrinsic :: iso_c_binding
implicit none
interface

! plutovg_surface_t* plutovg_surface_create(int width, int height);
function plutovg_surface_create(width, height) bind(c)
  import :: c_ptr, c_int
  implicit none
  type(c_ptr) :: plutovg_surface_create
  integer(c_int), value :: width
  integer(c_int), value :: height
end function

! plutovg_surface_t* plutovg_surface_create_for_data(unsigned char* data, int width, int height, int stride);
function plutovg_surface_create_for_data(data, width, height, stride) bind(c)
  import :: c_ptr, c_int
  implicit none
  type(c_ptr) :: plutovg_surface_create_for_data
  type(c_ptr), value :: data
  integer(c_int), value :: width
  integer(c_int), value :: height
  integer(c_int), value :: stride
end function

! plutovg_surface_t* plutovg_surface_reference(plutovg_surface_t* surface);
function plutovg_surface_reference(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_surface_reference
  type(c_ptr), value :: surface
end function

! void plutovg_surface_destroy(plutovg_surface_t* surface);
subroutine plutovg_surface_destroy(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: surface
end subroutine

! int plutovg_surface_get_reference_count(const plutovg_surface_t* surface);
function plutovg_surface_get_reference_count(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_reference_count
  type(c_ptr), value :: surface
end function

! unsigned char* plutovg_surface_get_data(const plutovg_surface_t* surface);
function plutovg_surface_get_data(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_surface_get_data
  type(c_ptr), value :: surface
end function

! int plutovg_surface_get_width(const plutovg_surface_t* surface);
function plutovg_surface_get_width(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_width
  type(c_ptr), value :: surface
end function

! int plutovg_surface_get_height(const plutovg_surface_t* surface);
function plutovg_surface_get_height(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_height
  type(c_ptr), value :: surface
end function

! int plutovg_surface_get_stride(const plutovg_surface_t* surface);
function plutovg_surface_get_stride(surface) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_surface_get_stride
  type(c_ptr), value :: surface
end function

! void plutovg_surface_write_to_png(const plutovg_surface_t* surface, const char* filename);
subroutine plutovg_surface_write_to_png(surface, filename) bind(c)
  import :: c_ptr, c_char
  implicit none
  type(c_ptr), value :: surface
  character(kind=c_char), dimension(*) :: filename
end subroutine

! void plutovg_rect_init(plutovg_rect_t* rect, double x, double y, double w, double h);
subroutine plutovg_rect_init(rect, x, y, w, h) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: rect
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
end subroutine

! void plutovg_rect_init_empty(plutovg_rect_t* rect);
subroutine plutovg_rect_init_empty(rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
end subroutine

! void plutovg_rect_init_invalid(plutovg_rect_t* rect);
subroutine plutovg_rect_init_invalid(rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
end subroutine

! int plutovg_rect_empty(const plutovg_rect_t* rect);
function plutovg_rect_empty(rect) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_rect_empty
  type(c_ptr), value :: rect
end function

! int plutovg_rect_invalid(const plutovg_rect_t* rect);
function plutovg_rect_invalid(rect) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_rect_invalid
  type(c_ptr), value :: rect
end function

! void plutovg_rect_unite(plutovg_rect_t* rect, const plutovg_rect_t* source);
subroutine plutovg_rect_unite(rect, source) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
  type(c_ptr), value :: source
end subroutine

! void plutovg_rect_intersect(plutovg_rect_t* rect, const plutovg_rect_t* source);
subroutine plutovg_rect_intersect(rect, source) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: rect
  type(c_ptr), value :: source
end subroutine

! void plutovg_matrix_init(plutovg_matrix_t* matrix, double m00, double m10, double m01, double m11, double m02, double m12);
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

! void plutovg_matrix_init_identity(plutovg_matrix_t* matrix);
subroutine plutovg_matrix_init_identity(matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_matrix_init_translate(plutovg_matrix_t* matrix, double x, double y);
subroutine plutovg_matrix_init_translate(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_init_scale(plutovg_matrix_t* matrix, double x, double y);
subroutine plutovg_matrix_init_scale(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_init_shear(plutovg_matrix_t* matrix, double x, double y);
subroutine plutovg_matrix_init_shear(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_init_rotate(plutovg_matrix_t* matrix, double radians);
subroutine plutovg_matrix_init_rotate(matrix, radians) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
end subroutine

! void plutovg_matrix_init_rotate_translate(plutovg_matrix_t* matrix, double radians, double x, double y);
subroutine plutovg_matrix_init_rotate_translate(matrix, radians, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_translate(plutovg_matrix_t* matrix, double x, double y);
subroutine plutovg_matrix_translate(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_scale(plutovg_matrix_t* matrix, double x, double y);
subroutine plutovg_matrix_scale(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_shear(plutovg_matrix_t* matrix, double x, double y);
subroutine plutovg_matrix_shear(matrix, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_rotate(plutovg_matrix_t* matrix, double radians);
subroutine plutovg_matrix_rotate(matrix, radians) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
end subroutine

! void plutovg_matrix_rotate_translate(plutovg_matrix_t* matrix, double radians, double x, double y);
subroutine plutovg_matrix_rotate_translate(matrix, radians, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: radians
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_matrix_multiply(plutovg_matrix_t* matrix, const plutovg_matrix_t* a, const plutovg_matrix_t* b);
subroutine plutovg_matrix_multiply(matrix, a, b) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
  type(c_ptr), value :: a
  type(c_ptr), value :: b
end subroutine

! int plutovg_matrix_invert(plutovg_matrix_t* matrix);
function plutovg_matrix_invert(matrix) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_matrix_invert
  type(c_ptr), value :: matrix
end function

! void plutovg_matrix_map(const plutovg_matrix_t* matrix, double x, double y, double* _x, double* _y);
subroutine plutovg_matrix_map(matrix, x, y,t_x,t_y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: matrix
  real(c_double), value :: x
  real(c_double), value :: y
  type(c_ptr), value ::t_x
  type(c_ptr), value ::t_y
end subroutine

! void plutovg_matrix_map_point(const plutovg_matrix_t* matrix, const plutovg_point_t* src, plutovg_point_t* dst);
subroutine plutovg_matrix_map_point(matrix, src, dst) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
  type(c_ptr), value :: src
  type(c_ptr), value :: dst
end subroutine

! void plutovg_matrix_map_rect(const plutovg_matrix_t* matrix, const plutovg_rect_t* src, plutovg_rect_t* dst);
subroutine plutovg_matrix_map_rect(matrix, src, dst) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: matrix
  type(c_ptr), value :: src
  type(c_ptr), value :: dst
end subroutine

! plutovg_path_t* plutovg_path_create(void);
function plutovg_path_create() bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_create
end function

! plutovg_path_t* plutovg_path_reference(plutovg_path_t* path);
function plutovg_path_reference(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_reference
  type(c_ptr), value :: path
end function

! void plutovg_path_destroy(plutovg_path_t* path);
subroutine plutovg_path_destroy(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
end subroutine

! int plutovg_path_get_reference_count(const plutovg_path_t* path);
function plutovg_path_get_reference_count(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_get_reference_count
  type(c_ptr), value :: path
end function

! void plutovg_path_move_to(plutovg_path_t* path, double x, double y);
subroutine plutovg_path_move_to(path, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_path_line_to(plutovg_path_t* path, double x, double y);
subroutine plutovg_path_line_to(path, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_path_quad_to(plutovg_path_t* path, double x1, double y1, double x2, double y2);
subroutine plutovg_path_quad_to(path, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

! void plutovg_path_cubic_to(plutovg_path_t* path, double x1, double y1, double x2, double y2, double x3, double y3);
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

! void plutovg_path_arc_to(plutovg_path_t* path, double x1, double y1, double x2, double y2, double radius);
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

! void plutovg_path_close(plutovg_path_t* path);
subroutine plutovg_path_close(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
end subroutine

! void plutovg_path_rel_move_to(plutovg_path_t* path, double dx, double dy);
subroutine plutovg_path_rel_move_to(path, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

! void plutovg_path_rel_line_to(plutovg_path_t* path, double dx, double dy);
subroutine plutovg_path_rel_line_to(path, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

! void plutovg_path_rel_quad_to(plutovg_path_t* path, double dx1, double dy1, double dx2, double dy2);
subroutine plutovg_path_rel_quad_to(path, dx1, dy1, dx2, dy2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
end subroutine

! void plutovg_path_rel_cubic_to(plutovg_path_t* path, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3);
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

! void plutovg_path_rel_arc_to(plutovg_path_t* path, double dx1, double dy1, double dx2, double dy2, double radius);
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

! void plutovg_path_add_rect(plutovg_path_t* path, double x, double y, double w, double h);
subroutine plutovg_path_add_rect(path, x, y, w, h) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
end subroutine

! void plutovg_path_add_round_rect(plutovg_path_t* path, double x, double y, double w, double h, double rx, double ry);
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

! void plutovg_path_add_ellipse(plutovg_path_t* path, double cx, double cy, double rx, double ry);
subroutine plutovg_path_add_ellipse(path, cx, cy, rx, ry) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: rx
  real(c_double), value :: ry
end subroutine

! void plutovg_path_add_circle(plutovg_path_t* path, double cx, double cy, double r);
subroutine plutovg_path_add_circle(path, cx, cy, r) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: path
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: r
end subroutine

! void plutovg_path_add_arc(plutovg_path_t* path, double cx, double cy, double r, double a0, double a1, int ccw);
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

! void plutovg_path_add_path(plutovg_path_t* path, const plutovg_path_t* source, const plutovg_matrix_t* matrix);
subroutine plutovg_path_add_path(path, source, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
  type(c_ptr), value :: source
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_path_transform(plutovg_path_t* path, const plutovg_matrix_t* matrix);
subroutine plutovg_path_transform(path, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_path_get_current_point(const plutovg_path_t* path, double* x, double* y);
subroutine plutovg_path_get_current_point(path, x, y) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
  type(c_ptr), value :: x
  type(c_ptr), value :: y
end subroutine

! int plutovg_path_get_element_count(const plutovg_path_t* path);
function plutovg_path_get_element_count(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_get_element_count
  type(c_ptr), value :: path
end function

! int plutovg_path_get_element_count(const plutovg_path_t* path);
function plutovg_path_get_elements(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_get_elements
  type(c_ptr), value :: path
end function

! int plutovg_path_get_point_count(const plutovg_path_t* path);
function plutovg_path_get_point_count(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_get_point_count
  type(c_ptr), value :: path
end function

! plutovg_point_t* plutovg_path_get_points(const plutovg_path_t* path);
function plutovg_path_get_points(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_get_points
  type(c_ptr), value :: path
end function

! void plutovg_path_clear(plutovg_path_t* path);
subroutine plutovg_path_clear(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: path
end subroutine

! int plutovg_path_empty(const plutovg_path_t* path);
function plutovg_path_empty(path) bind(c)
  import :: c_int, c_ptr
  implicit none
  integer(c_int) :: plutovg_path_empty
  type(c_ptr), value :: path
end function

! plutovg_path_t* plutovg_path_clone(const plutovg_path_t* path);
function plutovg_path_clone(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_clone
  type(c_ptr), value :: path
end function

! plutovg_path_t* plutovg_path_clone_flat(const plutovg_path_t* path);
function plutovg_path_clone_flat(path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_path_clone_flat
  type(c_ptr), value :: path
end function

! void plutovg_color_init_rgb(plutovg_color_t* color, double r, double g, double b);
subroutine plutovg_color_init_rgb(color, r, g, b) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: color
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
end subroutine

! void plutovg_color_init_rgba(plutovg_color_t* color, double r, double g, double b, double a);
subroutine plutovg_color_init_rgba(color, r, g, b, a) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: color
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
  real(c_double), value :: a
end subroutine

! plutovg_t* plutovg_create(plutovg_surface_t* surface);
function plutovg_create(surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_create
  type(c_ptr), value :: surface
end function

! plutovg_t* plutovg_reference(plutovg_t* pluto);
function plutovg_reference(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_reference
  type(c_ptr), value :: pluto
end function

! void plutovg_destroy(plutovg_t* pluto);
subroutine plutovg_destroy(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! int plutovg_get_reference_count(const plutovg_t* pluto);
function plutovg_get_reference_count(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_reference_count
  type(c_ptr), value :: pluto
end function

! void plutovg_save(plutovg_t* pluto);
subroutine plutovg_save(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr),value :: pluto
end subroutine

! void plutovg_restore(plutovg_t* pluto);
subroutine plutovg_restore(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr),value :: pluto
end subroutine

! void plutovg_set_paint_type(const plutovg_t* pluto, plutovg_paint_type_t type);
subroutine plutovg_set_paint_type(pluto,type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr),value :: pluto
  type(c_ptr),value :: type
end subroutine

! plutovg_paint_type_t plutovg_get_paint_type(const plutovg_t* pluto);
function plutovg_get_paint_type(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_paint_type
  type(c_ptr), value :: pluto
end function

! void plutovg_set_rgb(plutovg_t* pluto, double r, double g, double b);
subroutine plutovg_set_rgb(pluto, r, g, b) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
end subroutine

! void plutovg_set_rgba(plutovg_t* pluto, double r, double g, double b, double a);
subroutine plutovg_set_rgba(pluto, r, g, b, a) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
  real(c_double), value :: a
end subroutine

! void plutovg_set_color(plutovg_t* pluto, const plutovg_color_t* color);
subroutine plutovg_set_color(pluto, color) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: color
end subroutine

! const plutovg_color_t* plutovg_get_color(const plutovg_t* pluto);
function plutovg_get_color(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_color
  type(c_ptr), value :: pluto
end function

! void plutovg_set_linear_gradient(plutovg_t* pluto, double x1, double y1, double x2, double y2);
subroutine plutovg_set_linear_gradient(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

! void plutovg_set_radial_gradient(plutovg_t* pluto, double cx, double cy, double cr, double fx, double fy, double fr);
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

! void plutovg_set_gradient_type(const plutovg_t* pluto, plutovg_gradient_type_t type);
subroutine plutovg_set_gradient_type(pluto, type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: type
end subroutine

! plutovg_gradient_type_t plutovg_get_gradient_type(const plutovg_t* pluto);
function plutovg_get_gradient_type(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_gradient_type
  type(c_ptr), value :: pluto
end function

! void plutovg_set_gradient_spread(plutovg_t* pluto, plutovg_spread_method_t spread);
subroutine plutovg_set_gradient_spread(pluto, type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: type
end subroutine

! plutovg_spread_method_t plutovg_get_gradient_spread(const plutovg_t* pluto);
function plutovg_get_gradient_spread(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_gradient_spread
  type(c_ptr), value :: pluto
end function

! void plutovg_set_gradient_matrix(plutovg_t* pluto, const plutovg_matrix_t* matrix);
subroutine plutovg_set_gradient_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_reset_gradient_matrix(plutovg_t* pluto);
subroutine plutovg_reset_gradient_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! const plutovg_matrix_t* plutovg_get_gradient_matrix(const plutovg_t* pluto);
function plutovg_get_gradient_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_gradient_matrix
  type(c_ptr), value :: pluto
end function

! void plutovg_set_gradient_opacity(plutovg_t* pluto, double opacity);
subroutine plutovg_set_gradient_opacity(pluto, opacity) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: opacity
end subroutine

! double plutovg_get_gradient_opacity(const plutovg_t* pluto);
function plutovg_get_gradient_opacity(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_gradient_opacity
  type(c_ptr), value :: pluto
end function

! void plutovg_add_gradient_stop_rgb(plutovg_t* pluto, double offset, double r, double g, double b);
subroutine plutovg_add_gradient_stop_rgb(pluto, offset, r, g, b) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
  real(c_double), value :: r
  real(c_double), value :: g
  real(c_double), value :: b
end subroutine

! void plutovg_add_gradient_stop_rgba(plutovg_t* pluto, double offset, double r, double g, double b, double a);
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

! void plutovg_add_gradient_stop_color(plutovg_t* pluto, double offset, const plutovg_color_t* color);
subroutine plutovg_add_gradient_stop_color(pluto, offset, color) bind(c)
  import :: c_ptr,c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
  type(c_ptr), value :: color
end subroutine

! void plutovg_add_gradient_stop_rgb(plutovg_t* pluto, double offset, double r, double g, double b);
subroutine plutovg_add_gradient_stop(pluto, stop) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: stop
end subroutine

! void plutovg_clear_gradient_stops(plutovg_t* pluto);
subroutine plutovg_clear_gradient_stops(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! int plutovg_get_gradient_stop_count(const plutovg_t* pluto);
function plutovg_get_gradient_stop_count(pluto) bind(c)
  import :: c_ptr,c_int
  implicit none
  integer(c_int) :: plutovg_get_gradient_stop_count
  type(c_ptr), value :: pluto
end function

! const plutovg_gradient_stop_t* plutovg_get_gradient_stop_data(const plutovg_t* pluto);
function plutovg_get_gradient_stop_data(pluto) bind(c)
  import :: c_ptr,c_int
  implicit none
  type(c_ptr) :: plutovg_get_gradient_stop_data
  type(c_ptr), value :: pluto
end function

! void plutovg_set_linear_gradient_values(plutovg_t* pluto, double x1, double y1, double x2, double y2);
subroutine plutovg_set_linear_gradient_values(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

! void plutovg_set_radial_gradient_values(plutovg_t* pluto, double cx, double cy, double cr, double fx, double fy, double fr);
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

! void plutovg_get_linear_gradient_values(const plutovg_t* pluto, double* x1, double* y1, double* x2, double* y2);
subroutine plutovg_get_linear_gradient_values(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

! void plutovg_get_radial_gradient_values(const plutovg_t* pluto, double* cx, double* cy, double* cr, double* fx, double* fy, double* fr);
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

! void plutovg_set_texture(plutovg_t* pluto, plutovg_surface_t* surface, plutovg_texture_type_t type, double x, double y);
subroutine plutovg_set_texture(pluto, surface, type, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: surface
  type(c_ptr), value :: type
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_set_texture_surface(plutovg_t* pluto, plutovg_surface_t* surface);
subroutine plutovg_set_texture_surface(pluto, surface) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: surface
end subroutine

! void plutovg_set_texture_surface(plutovg_t* pluto, plutovg_surface_t* surface);
function plutovg_get_texture_surface(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_texture_surface
  type(c_ptr), value :: pluto
end function

! void plutovg_set_texture_type(plutovg_t* pluto, plutovg_texture_type_t type);
subroutine plutovg_set_texture_type(pluto, type) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: type
end subroutine

! plutovg_texture_type_t plutovg_get_texture_type(const plutovg_t* pluto);
function plutovg_get_texture_type(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_texture_type
  type(c_ptr), value :: pluto
end function

! void plutovg_set_texture_matrix(plutovg_t* pluto, const plutovg_matrix_t* matrix);
subroutine plutovg_set_texture_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_reset_texture_matrix(plutovg_t* pluto, double x, double y);
subroutine plutovg_reset_texture_matrix(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! const plutovg_matrix_t* plutovg_get_texture_matrix(const plutovg_t* pluto);
function plutovg_get_texture_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_texture_matrix
  type(c_ptr), value :: pluto
end function

! void plutovg_set_texture_opacity(plutovg_t* pluto, double opacity);
subroutine plutovg_set_texture_opacity(pluto, opacity) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: opacity
end subroutine

! double plutovg_get_texture_opacity(const plutovg_t* pluto);
function plutovg_get_texture_opacity(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_texture_opacity
  type(c_ptr), value :: pluto
end function

! void plutovg_set_operator(plutovg_t* pluto, plutovg_operator_t op);
subroutine plutovg_set_operator(pluto, op) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: op
end subroutine

! void plutovg_set_opacity(plutovg_t* pluto, double opacity);
subroutine plutovg_set_opacity(pluto, opacity) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: opacity
end subroutine

! void plutovg_set_fill_rule(plutovg_t* pluto, plutovg_fill_rule_t winding);
subroutine plutovg_set_fill_rule(pluto, winding) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: winding
end subroutine

! plutovg_operator_t plutovg_get_operator(const plutovg_t* pluto);
function plutovg_get_operator(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_operator
  type(c_ptr), value :: pluto
end function

! double plutovg_get_opacity(const plutovg_t* pluto);
function plutovg_get_opacity(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_opacity
  type(c_ptr), value :: pluto
end function

! plutovg_fill_rule_t plutovg_get_fill_rule(const plutovg_t* pluto);
function plutovg_get_fill_rule(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_fill_rule
  type(c_ptr), value :: pluto
end function

! void plutovg_set_line_width(plutovg_t* pluto, double width);
subroutine plutovg_set_line_width(pluto, width) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: width
end subroutine

! void plutovg_set_line_cap(plutovg_t* pluto, plutovg_line_cap_t cap);
subroutine plutovg_set_line_cap(pluto, cap) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: cap
end subroutine

! void plutovg_set_line_join(plutovg_t* pluto, plutovg_line_join_t join);
subroutine plutovg_set_line_join(pluto, join) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: join
end subroutine

! void plutovg_set_miter_limit(plutovg_t* pluto, double limit);
subroutine plutovg_set_miter_limit(pluto, limit) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: limit
end subroutine

! double plutovg_get_line_width(const plutovg_t* pluto);
function plutovg_get_line_width(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_line_width
  type(c_ptr), value :: pluto
end function

! plutovg_line_cap_t plutovg_get_line_cap(const plutovg_t* pluto);
function plutovg_get_line_cap(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_line_cap
  type(c_ptr), value :: pluto
end function

! plutovg_line_join_t plutovg_get_line_join(const plutovg_t* pluto);
function plutovg_get_line_join(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_line_join
  type(c_ptr), value :: pluto
end function

! double plutovg_get_miter_limit(const plutovg_t* pluto);
function plutovg_get_miter_limit(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_miter_limit
  type(c_ptr), value :: pluto
end function

! void plutovg_set_dash(plutovg_t* pluto, double offset, const double* data, int size);
subroutine plutovg_set_dash(pluto, offset, data, size) bind(c)
  import :: c_ptr, c_double, c_int
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
  type(c_ptr), value :: data
  integer(c_int), value :: size
end subroutine

! void plutovg_set_dash_offset(plutovg_t* pluto, double offset);
subroutine plutovg_set_dash_offset(pluto, offset) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: offset
end subroutine

! void plutovg_set_dash_data(plutovg_t* pluto, const double* data, int size);
subroutine plutovg_set_dash_data(pluto, data, size) bind(c)
  import :: c_ptr, c_int
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: data
  integer(c_int), value :: size
end subroutine

! void plutovg_add_dash_data(plutovg_t* pluto, double value);
subroutine plutovg_add_dash_data(pluto, value) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: value
end subroutine

! void plutovg_clear_dash_data(plutovg_t* pluto);
subroutine plutovg_clear_dash_data(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! double plutovg_get_dash_offset(const plutovg_t* pluto);
function plutovg_get_dash_offset(pluto) bind(c)
  import :: c_ptr, c_double
  implicit none
  real(c_double) :: plutovg_get_dash_offset
  type(c_ptr), value :: pluto
end function

! int plutovg_get_dash_data_count(const plutovg_t* pluto);
function plutovg_get_dash_data(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr) :: plutovg_get_dash_data
  type(c_ptr), value :: pluto
end function

! int plutovg_get_dash_data_count(const plutovg_t* pluto);
function plutovg_get_dash_data_count(pluto) bind(c)
  import :: c_ptr, c_int
  implicit none
  integer(c_int) :: plutovg_get_dash_data_count
  type(c_ptr), value :: pluto
end function

! void plutovg_translate(plutovg_t* pluto, double x, double y);
subroutine plutovg_translate(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_scale(plutovg_t* pluto, double x, double y);
subroutine plutovg_scale(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_rotate(plutovg_t* pluto, double radians);
subroutine plutovg_rotate(pluto, radians) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: radians
end subroutine

! void plutovg_transform(plutovg_t* pluto, const plutovg_matrix_t* matrix);
subroutine plutovg_transform(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_set_matrix(plutovg_t* pluto, const plutovg_matrix_t* matrix);
subroutine plutovg_set_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_identity_matrix(plutovg_t* pluto);
subroutine plutovg_identity_matrix(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_get_matrix(const plutovg_t* pluto, plutovg_matrix_t* matrix);
subroutine plutovg_get_matrix(pluto, matrix) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: matrix
end subroutine

! void plutovg_move_to(plutovg_t* pluto, double x, double y);
subroutine plutovg_move_to(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_line_to(plutovg_t* pluto, double x, double y);
subroutine plutovg_line_to(pluto, x, y) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
end subroutine

! void plutovg_quad_to(plutovg_t* pluto, double x1, double y1, double x2, double y2);
subroutine plutovg_quad_to(pluto, x1, y1, x2, y2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x1
  real(c_double), value :: y1
  real(c_double), value :: x2
  real(c_double), value :: y2
end subroutine

! void plutovg_cubic_to(plutovg_t* pluto, double x1, double y1, double x2, double y2, double x3, double y3);
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

! void plutovg_rel_move_to(plutovg_t* pluto, double dx, double dy);
subroutine plutovg_rel_move_to(pluto, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

! void plutovg_rel_line_to(plutovg_t* pluto, double dx, double dy);
subroutine plutovg_rel_line_to(pluto, dx, dy) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx
  real(c_double), value :: dy
end subroutine

! void plutovg_rel_quad_to(plutovg_t* pluto, double dx1, double dy1, double dx2, double dy2);
subroutine plutovg_rel_quad_to(pluto, dx1, dy1, dx2, dy2) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: dx1
  real(c_double), value :: dy1
  real(c_double), value :: dx2
  real(c_double), value :: dy2
end subroutine

! void plutovg_rel_cubic_to(plutovg_t* pluto, double dx1, double dy1, double dx2, double dy2, double dx3, double dy3);
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

! void plutovg_rect_init(plutovg_rect_t* rect, double x, double y, double w, double h);
subroutine plutovg_rect(pluto, x, y, w, h) bind(c)
  import :: c_ptr, c_double, c_int
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: x
  real(c_double), value :: y
  real(c_double), value :: w
  real(c_double), value :: h
end subroutine

! void plutovg_round_rect(plutovg_t* pluto, double x, double y, double w, double h, double rx, double ry);
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

! void plutovg_ellipse(plutovg_t* pluto, double cx, double cy, double rx, double ry);
subroutine plutovg_ellipse(pluto, cx, cy, rx, ry) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: rx
  real(c_double), value :: ry
end subroutine

! void plutovg_circle(plutovg_t* pluto, double cx, double cy, double r);
subroutine plutovg_circle(pluto, cx, cy, r) bind(c)
  import :: c_ptr, c_double
  implicit none
  type(c_ptr), value :: pluto
  real(c_double), value :: cx
  real(c_double), value :: cy
  real(c_double), value :: r
end subroutine

! void plutovg_arc(plutovg_t* path, double cx, double cy, double r, double a0, double a1, int ccw);
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

! void plutovg_add_path(plutovg_t* pluto, const plutovg_path_t* path);
subroutine plutovg_add_path(pluto, path) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: path
end subroutine

! void plutovg_new_path(plutovg_t* pluto);
subroutine plutovg_new_path(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_close_path(plutovg_t* pluto);
subroutine plutovg_close_path(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_get_current_point(const plutovg_t* pluto, double* x, double* y);
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

! void plutovg_set_fill_rule(plutovg_t* pluto, plutovg_fill_rule_t winding);
subroutine plutovg_fill(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_stroke(plutovg_t* pluto);
subroutine plutovg_stroke(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_clip(plutovg_t* pluto);
subroutine plutovg_clip(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_set_paint_type(const plutovg_t* pluto, plutovg_paint_type_t type);
subroutine plutovg_paint(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_fill_preserve(plutovg_t* pluto);
subroutine plutovg_fill_preserve(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_stroke_preserve(plutovg_t* pluto);
subroutine plutovg_stroke_preserve(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_clip_preserve(plutovg_t* pluto);
subroutine plutovg_clip_preserve(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

! void plutovg_fill_extents(plutovg_t* pluto, plutovg_rect_t* rect);
subroutine plutovg_fill_extents(pluto, rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: rect
end subroutine

! void plutovg_stroke_extents(plutovg_t* pluto, plutovg_rect_t* rect);
subroutine plutovg_stroke_extents(pluto, rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: rect
end subroutine

! void plutovg_clip_extents(plutovg_t* pluto, plutovg_rect_t* rect);
subroutine plutovg_clip_extents(pluto, rect) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
  type(c_ptr), value :: rect
end subroutine

! void plutovg_reset_clip(plutovg_t* pluto);
subroutine plutovg_reset_clip(pluto) bind(c)
  import :: c_ptr
  implicit none
  type(c_ptr), value :: pluto
end subroutine

end interface
end module plutovg
