/// @description Insert description here
// You can write your code in this editor



switch(selection_string_rep()) {

	// Really hacky way of doing a 2 variable switch case but
	// I hate if statements

	// FIGHT
	case "0,0":
		var spells_menu = instance_create_layer(x, y, "UI", oCombatSpellsMenu);
		spells_menu.init();
		instance_destroy();
		break;

	case "0,1":

		break;

	case "1,0":

		break;

	case "1,1":

		break;
}