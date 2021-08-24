/// @description Draw given text
draw_self(); //Otherwise it won't show up
 //Draws the text according to the properties we've set up
draw_text_ext(bbox_left + 32, bbox_top + 32, string_hash_to_newline(currentText), 16, maxLength);

