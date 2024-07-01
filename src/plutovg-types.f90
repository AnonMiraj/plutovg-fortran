module plutovg_types
  use iso_c_binding

  type, bind(c) :: plutovg_point_t
    real(c_double) :: x
    real(c_double) :: y
  end type plutovg_point_t

  type, bind(c) :: plutovg_rect_t
    real(c_double) :: x
    real(c_double) :: y
    real(c_double) :: w
    real(c_double) :: h
  end type plutovg_rect_t

  type, bind(c) :: plutovg_matrix_t
    real(c_double) :: m00
    real(c_double) :: m10
    real(c_double) :: m01
    real(c_double) :: m11
    real(c_double) :: m02
    real(c_double) :: m12
  end type plutovg_matrix_t

  type, bind(c) :: plutovg_color_t
    real(c_double) :: r
    real(c_double) :: g
    real(c_double) :: b
    real(c_double) :: a
  end type plutovg_color_t

  type, bind(c) :: plutovg_gradient_stop_t
    real(c_double) :: offset
    type(plutovg_color_t) :: color
  end type plutovg_gradient_stop_t

end module plutovg_types
