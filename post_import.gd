@tool

extends EditorScenePostImport

func _post_import(scene: Node):
	var player: AnimationPlayer = AnimationPlayer.new()

	scene.add_child(player)

	scene.name = 'foo' + str(scene.name)

	return scene # Remember to return the imported scene
