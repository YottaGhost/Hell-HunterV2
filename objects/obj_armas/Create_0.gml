mouDir=0;

acc=0;
cor = 5;
cor1 = 255;
cor2 = 5;

sound = gunHit;

stuckChance = 0;

homingB = false;
iceb=false;

dano = 1;

tim =0;
firerate=1;
proj = obj_bala;

upixelH = shader_get_uniform(sh_outline, "pixelH");
upixelW = shader_get_uniform(sh_outline, "pixelW");
corOut = shader_get_uniform(sh_outline, "outline_Color");

texelW = texture_get_texel_width(sprite_get_texture(sprite_index, 0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index, 0));