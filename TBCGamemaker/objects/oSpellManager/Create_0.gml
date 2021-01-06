/// @description Insert description here
// You can write your code in this editor
spells_array = noone;

function init() {

  var file = file_text_open_read("spells.json");
  var data = "";
  while (!file_text_eof(file)) {
    data += file_text_read_string(file);
    file_text_readln(file);
  }
  file_text_close(file);

  var decodedData = json_decode(data);
  spells_array = ds_map_find_value(decodedData, "default"); 

}

function get_spell_at_index(idx) {

	return ds_list_find_value(spells_array, idx)
	
}

function get_spell_attribute(spell, attribute) {

	return ds_map_find_value(spell, attribute);

}

init();