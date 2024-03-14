shader_set(sh_outline);

shader_set_uniform_f(upixelW,texelW);
shader_set_uniform_f(upixelH,texelH);
shader_set_uniform_f(corOut, cor,cor1,cor2);

draw_self();
shader_reset();