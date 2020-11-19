/// @description Process joystick events (since the Runner no longer processes them directly)
function joystick_process_events() {
	if (argument_count > 0) and (argument[0] > 0) return;

	// check to see if joystick 1 exists and process its events
	if (joystick_exists(1)) {

		var xaxis = joystick_xpos(1);
		if (xaxis < -0.3) event_perform(ev_mouse, ev_joystick1_left );
		if (xaxis >  0.3) event_perform(ev_mouse, ev_joystick1_right );
	
		var yaxis = joystick_ypos(1);
		if (yaxis < -0.3) event_perform(ev_mouse, ev_joystick1_up );
		if (yaxis >  0.3) event_perform(ev_mouse, ev_joystick1_down );

		if (joystick_check_button(1, 0)) event_perform(ev_mouse, ev_joystick1_button1 );
		if (joystick_check_button(1, 1)) event_perform(ev_mouse, ev_joystick1_button2 );
		if (joystick_check_button(1, 2)) event_perform(ev_mouse, ev_joystick1_button3 );
		if (joystick_check_button(1, 3)) event_perform(ev_mouse, ev_joystick1_button4 );
		if (joystick_check_button(1, 4)) event_perform(ev_mouse, ev_joystick1_button5 );
		if (joystick_check_button(1, 5)) event_perform(ev_mouse, ev_joystick1_button6 );
		if (joystick_check_button(1, 6)) event_perform(ev_mouse, ev_joystick1_button7 );
		if (joystick_check_button(1, 7)) event_perform(ev_mouse, ev_joystick1_button8 );
	}

	// check to see if joystick 1 exists and process its events
	if (joystick_exists(2)) {

		var xaxis = joystick_xpos(2);
		if (xaxis < -0.3) event_perform(ev_mouse, ev_joystick1_left );
		if (xaxis >  0.3) event_perform(ev_mouse, ev_joystick1_right );
	
		var yaxis = joystick_ypos(2);
		if (yaxis < -0.3) event_perform(ev_mouse, ev_joystick1_up );
		if (yaxis >  0.3) event_perform(ev_mouse, ev_joystick1_down );

		if (joystick_check_button(2, 0)) event_perform(ev_mouse, ev_joystick1_button1 );
		if (joystick_check_button(2, 1)) event_perform(ev_mouse, ev_joystick1_button2 );
		if (joystick_check_button(2, 2)) event_perform(ev_mouse, ev_joystick1_button3 );
		if (joystick_check_button(2, 3)) event_perform(ev_mouse, ev_joystick1_button4 );
		if (joystick_check_button(2, 4)) event_perform(ev_mouse, ev_joystick1_button5 );
		if (joystick_check_button(2, 5)) event_perform(ev_mouse, ev_joystick1_button6 );
		if (joystick_check_button(2, 6)) event_perform(ev_mouse, ev_joystick1_button7 );
		if (joystick_check_button(2, 7)) event_perform(ev_mouse, ev_joystick1_button8 );
	}


}
