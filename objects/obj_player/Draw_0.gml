shader_set(sh_outline);

shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(corOut, 255,255,255);

draw_self();
shader_reset();