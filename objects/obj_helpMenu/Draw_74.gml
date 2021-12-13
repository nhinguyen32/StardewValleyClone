/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_gold);
draw_set_color(make_color_rgb(107,33,0));
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);

draw_text(x,y_text,"Controls");
y_text-=65;
draw_text(x,y_text,"ESCAPE: Pause game");
y_text-=65;
draw_text(x,y_text,"Click F to use tools");
y_text-=65;
draw_text(x,y_text,"1: Pick up");
y_text=65;
draw_text(x,y_text,"2: Hoe");
y_text-=65;
draw_text(x,y_text,"3: Seed");
y_text-=65;
draw_text(x,y_text,"4: Water");
