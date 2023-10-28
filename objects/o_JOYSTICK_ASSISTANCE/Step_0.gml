if joystick_check_button(1,1) || joystick_check_button(1,2) || joystick_check_button(1,3) || joystick_check_button(1,4) || joystick_check_button(1,5)
|| joystick_check_button(1,6) || joystick_xpos(1)>0.5 ||joystick_xpos(1)<-0.5 || joystick_ypos(1)>0.5 || joystick_ypos(1)<-0.5 {YOSTICK_USING=5}



if YOSTICK_USING>0 {YOSTICK_USING-=1}


if YOSTICK_USING>0 {
keyboard_key_release(global.ster_jump)
keyboard_key_release(global.ster_fire)

keyboard_key_release(global.ster_up)
keyboard_key_release(global.ster_down)
keyboard_key_release(global.ster_left)
keyboard_key_release(global.ster_right)


if joystick_check_button(1,1) {keyboard_key_press(global.ster_jump)}
if joystick_check_button(1,2) {keyboard_key_press(global.ster_fire)}
if joystick_check_button(1,3) {keyboard_key_press(global.ster_jump)}
if joystick_check_button(1,4) {keyboard_key_press(global.ster_fire)}
if joystick_check_button(1,5) {keyboard_key_press(global.ster_jump)}
if joystick_check_button(1,6) {keyboard_key_press(global.ster_fire)}


if joystick_xpos(1)>0.5 {keyboard_key_press(global.ster_right)}
if joystick_xpos(1)<-0.5 {keyboard_key_press(global.ster_left)}
if joystick_ypos(1)>0.5 {keyboard_key_press(global.ster_down)}
if joystick_ypos(1)<-0.5 {keyboard_key_press(global.ster_up)}


}

