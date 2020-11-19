/// @description Checks to see if a joystick button has been pressed.
/// @param id	the id of the joystick (1 or 2)
/// @return  {Number} virtual key code for the numberpad buttons depending on direction being pressed by the joystick/gamepad with the given id
function joystick_direction(argument0) {
	var jid=__joystick_2_gamepad(argument0);

	var haxis = gamepad_axis_value( jid, gp_axislh );
	var vaxis = gamepad_axis_value( jid, gp_axislv );

	var dir = 0;
	if (vaxis < -0.3)
		dir = 6;
	else
	if (vaxis > 0.3)
		dir = 0;
	else
		dir = 3;

	if (haxis < -0.3)
		dir += 1;
	else
	if (haxis > 0.3)
		dir += 3;
	else 
		dir += 2;

	return vk_numpad0+dir;


}
