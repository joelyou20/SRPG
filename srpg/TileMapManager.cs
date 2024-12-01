using Godot;
using System;

public partial class TileMapManager : TileMapLayer
{
	private Vector2I _greenBlockAtlasPos = new(2, 0);
	private int _mainSource = 0;
	
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
		for(int y = 0; y < 3; y++) {
			for (int x = 0; x < 3; x++)
			{
				SetCell(new Vector2I(2 + x,  2 + y), _mainSource, _greenBlockAtlasPos);
			}
		}
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
}
