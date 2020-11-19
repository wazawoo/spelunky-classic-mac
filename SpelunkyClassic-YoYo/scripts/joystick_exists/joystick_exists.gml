/// @description Checks for a joystick.
/// @param id	the id of the joystick (1 or 2)
/// @return  {Boolean} true if a joystick/gamepad with the given id is connected or false if it is not
function joystick_exists(argument0) {

	var jid=__joystick_2_gamepad(argument0);
	return gamepad_is_connected(jid);


}
