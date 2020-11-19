/// @description Returns the name of the joystick.
/// @param id	the id of the joystick (1 or 2)
/// @return {Number} the point-of view position of the joystick/gamepad with the given id. This is an angle between 0 and 360 degrees, where 0 is forwards, 90 to the right, 180 backwards and 270 to the left
function joystick_pov(argument0) {

	var jid=__joystick_2_gamepad(argument0);

	var mask = 0;
	mask |= (gamepad_button_value( jid, gp_padu) > 0) ? 1 : 0;
	mask |= (gamepad_button_value( jid, gp_padr) > 0) ? 2 : 0;
	mask |= (gamepad_button_value( jid, gp_padd) > 0) ? 4 : 0;
	mask |= (gamepad_button_value( jid, gp_padl) > 0) ? 8 : 0;

	return global.__jstick_povangle[mask];




}
