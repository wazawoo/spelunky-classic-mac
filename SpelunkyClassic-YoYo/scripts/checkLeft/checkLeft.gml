function checkLeft() {
	if (gamepad.left)
	    return gamepad.left;

	else
	    return (keyboard_check(global.keyLeftVal));


}
