andar =obj_player.andar;

if andar == 1
instance_create_layer(x,y, "inimigos",obj_cube);

if andar == 2
instance_create_layer(x,y, "inimigos",obj_skullB);

if andar == 3
instance_create_layer(x,y, "inimigos",obj_FinalBoss);
