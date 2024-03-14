for (var i=1; i<=4; i++){

var inst =instance_create_layer(x-(i*32)+54,y,"props",obj_item_shop)

inst.item = "vazio"
if i ==1
inst.item = "Potion";
if i ==2
inst.item = "Clear";


inst.chooseitem();
}