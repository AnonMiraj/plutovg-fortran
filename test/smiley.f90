program smiley_face
    use, intrinsic :: iso_c_binding, only: c_double, c_int
    use plutovg
    implicit none

    integer(c_int), parameter :: width = 150
    integer(c_int), parameter :: height = 150

    type(c_ptr) :: surface
    type(c_ptr) :: pluto

    real(c_double) :: center_x
    real(c_double) :: center_y
    real(c_double) :: face_radius
    real(c_double) :: eye_radius
    real(c_double) :: mouth_radius
    real(c_double) :: eye_offset_x
    real(c_double) :: eye_offset_y
    real(c_double) :: eye_x
    real(c_double) :: eye_y
    real(c_double), parameter :: pi = 3.14159265358979323846

    center_x = width * 0.5
    center_y = height * 0.5
    face_radius = 70.0
    eye_radius = 10.0
    mouth_radius = 50.0
    eye_offset_x = 25.0
    eye_offset_y = 20.0
    eye_x = center_x - eye_offset_x
    eye_y = center_y - eye_offset_y

    surface = plutovg_surface_create(width, height)
    pluto = plutovg_create(surface)

    call plutovg_save(pluto)
    call plutovg_arc(pluto, center_x, center_y, face_radius, 0.0_c_double, 2.0 * pi, 0)
    call plutovg_set_rgb(pluto, 1.0_c_double, 1.0_c_double, 0.0_c_double)
    call plutovg_fill_preserve(pluto)
    call plutovg_set_rgb(pluto, 0.0_c_double, 0.0_c_double, 0.0_c_double)
    call plutovg_set_line_width(pluto, 5.0_c_double)
    call plutovg_stroke(pluto)
    call plutovg_restore(pluto)

    call plutovg_save(pluto)
    call plutovg_arc(pluto, eye_x, eye_y, eye_radius, 0.0_c_double, 2.0 * pi, 0)
    call plutovg_arc(pluto, center_x + eye_offset_x, eye_y, eye_radius, 0.0_c_double, 2.0 * pi, 0)
    call plutovg_fill(pluto)
    call plutovg_restore(pluto)

    call plutovg_save(pluto)
    call plutovg_arc(pluto, center_x, center_y, mouth_radius, 0.0_c_double, pi, 0)
    call plutovg_set_line_width(pluto, 5.0_c_double)
    call plutovg_stroke(pluto)
    call plutovg_restore(pluto)

    call plutovg_surface_write_to_png(surface, "smiley.png"//c_null_char)
    
    call plutovg_surface_destroy(surface)
    call plutovg_destroy(pluto)

end program smiley_face

