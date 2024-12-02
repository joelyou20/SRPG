extends Node2D

@onready var tile_map_layer : TileMapLayer = get_node(".");

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass;
	
func _input(event):
	if Input.is_action_just_pressed("click"):
		var mouse_pos = get_global_mouse_position();
		var tile_mouse_pos: Vector2i = tile_map_layer.local_to_map(mouse_pos);
		var source_id = 0;
		var atlas_coord = Vector2i(0,0);
		
		if is_cell_occupied(tile_mouse_pos):
			tile_map_layer.set_cell(tile_mouse_pos, source_id, atlas_coord);
		
# Function to check if a tile exists at the given position
func is_cell_occupied(coords: Vector2i) -> bool:
	var tile_id = tile_map_layer.get_cell_tile_data(coords)
	return tile_id != null;
