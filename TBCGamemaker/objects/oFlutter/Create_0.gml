image_alpha = .7;

flutter_cols[0] = $FF521284;
flutter_cols[1] = $FF583635;
flutter_cols[2] = $FF3B083D;
flutter_cols[3] = $FF0d0d72;

x = random(room_width);
y = random(room_height);

image_angle = point_direction(x, y, room_width / 2, room_height / 2);
flutter_col_index = irandom(3);