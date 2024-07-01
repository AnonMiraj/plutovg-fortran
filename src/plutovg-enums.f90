module plutovg_enums
  use iso_c_binding

  ! Gradient Type (type: plutovg_gradient_type_t)
  enum, bind(c)
    enumerator :: plutovg_gradient_type_linear = 0
    enumerator :: plutovg_gradient_type_radial = 1
  end enum

  ! Spread Method (type: plutovg_spread_method_t)
  enum, bind(c)
    enumerator :: plutovg_spread_method_pad = 0
    enumerator :: plutovg_spread_method_reflect = 1
    enumerator :: plutovg_spread_method_repeat = 2
  end enum

  ! Texture Type (type: plutovg_texture_type_t)
  enum, bind(c)
    enumerator :: plutovg_texture_type_plain = 0
    enumerator :: plutovg_texture_type_tiled = 1
  end enum

  ! Paint Type (type: plutovg_paint_type_t)
  enum, bind(c)
    enumerator :: plutovg_paint_type_color = 0
    enumerator :: plutovg_paint_type_gradient = 1
    enumerator :: plutovg_paint_type_texture = 2
  end enum

  ! Line Cap (type: plutovg_line_cap_t)
  enum, bind(c)
    enumerator :: plutovg_line_cap_butt = 0
    enumerator :: plutovg_line_cap_round = 1
    enumerator :: plutovg_line_cap_square = 2
  end enum

  ! Line Join (type: plutovg_line_join_t)
  enum, bind(c)
    enumerator :: plutovg_line_join_miter = 0
    enumerator :: plutovg_line_join_round = 1
    enumerator :: plutovg_line_join_bevel = 2
  end enum

  ! Fill Rule (type: plutovg_fill_rule_t)
  enum, bind(c)
    enumerator :: plutovg_fill_rule_non_zero = 0
    enumerator :: plutovg_fill_rule_even_odd = 1
  end enum

  ! Operator (type: plutovg_operator_t)
  enum, bind(c)
    enumerator :: plutovg_operator_src = 0
    enumerator :: plutovg_operator_src_over = 1
    enumerator :: plutovg_operator_dst_in = 2
    enumerator :: plutovg_operator_dst_out = 3
  end enum

end module plutovg_enums
