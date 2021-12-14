/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_middle);
draw_set_valign(fa_bottom);
draw_set_font(fnt_gold);
draw_set_color(make_color_rgb(107,33,0));
draw_text(x,y_text-175,"Controls");
draw_text(x,y_text-100,"Esc: pause");
draw_text(x,y_text-100+y_space,"1: pickup   2: hoe");
draw_text(x,y_text-100+y_space*2,"3: seeds   4: water");
draw_text(x,y_text-100+y_space*3,"F to interact");
draw_text(x,y_text-100+y_space*4,"WASD/arrow keys: move");
draw_text(x,y_text-100+y_space*5,"Interact with door");
draw_text(x,y_text-100+y_space*6,"to skip day or renovate");
