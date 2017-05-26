global.M_INDEX++
global.BUFFER_IND[global.M_INDEX]=vertex_create_buffer()
vertex_begin(global.BUFFER_IND[global.M_INDEX],global.INDEX_MOD)
return global.M_INDEX;
