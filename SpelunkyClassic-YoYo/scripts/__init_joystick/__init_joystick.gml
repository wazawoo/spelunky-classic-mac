function __init_joystick() {
	gml_pragma( "global", "__init_joystick();");
	//#macro __JOYSTICK_2_GAMEPAD	(argument0 == 2) ? global.__jstick_pad2 : global.__jstick_pad1
	global.__jstick_pad1=4;
	global.__jstick_pad2=5;
	global.__jstick_povangle = [
									-1,		// 0 - centered
									0,		// 1 - up
									90,		// 2 - right
									45,		// 3 - up and right
									180,	// 4 - down
									-1,		// 5 - down and up (invalid)
									135,	// 6 - down and right
									-1,		// 7 - down, up and right (invalid)
									270,	// 8 - left
									315,	// 9 - left and up
									-1,		// 10 - left and right (invalid)
									-1,		// 11 - left, up and right (invalid)
									225,	// 12 - left and down
									-1,		// 13 - left, down and up (invalid)
									-1,		// 14 - left, down and right (invalid)
									-1,		// 16 - left, right, up and down (invalid)
								];


	// reference the function to ensure that it is brought in
	joystick_process_events(true);


}
