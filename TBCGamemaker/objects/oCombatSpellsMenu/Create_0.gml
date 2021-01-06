/// @description Insert description here
// You can write your code in this editor
event_inherited();

options = noone;

function init() {

	image_alpha = opacity;

	options[0][0] = oSpellManager.get_spell_attribute(oSpellManager.get_spell_at_index(0), "Name");
	options[0][1] = oSpellManager.get_spell_attribute(oSpellManager.get_spell_at_index(1), "Name");
	options[1][0] = oSpellManager.get_spell_attribute(oSpellManager.get_spell_at_index(2), "Name");
	options[1][1] = oSpellManager.get_spell_attribute(oSpellManager.get_spell_at_index(3), "Name");
		

}

function set_follow_object(par_follow_object) {

	follow_object = par_follow_object;

}

init();