function [] = DrawTerrain(TerrainMap)
	surf(0:100: (size(TerrainMap, 2) - 1) * 100, 0:100: (size(TerrainMap, 1) - 1) * 100, TerrainMap);
end
