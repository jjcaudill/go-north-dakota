/// @description Print text and handle fade

// Draw text
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_count);
draw_text(512, 695, shown_text);

// Draws a black screen over the room and it will fade away by setting the alpha
draw_sprite_ext(spr_blank, 0, 0, 0, 3072, 768, 0, c_black, fade_alpha);
