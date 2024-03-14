


time += 0.016;
image_alpha -= 0.035;
if time >=0.3 {
image_blend = choose(c_aqua, c_purple, c_fuchsia);
time =0;
}


if image_alpha <=0
instance_destroy();