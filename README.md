# Godot EditorScenePostImport Issue

This repo demonstrates EditorScenePostImport scripts not adding additional nodes to an import scene.

## Issue description
The *ninja.glb* file in this project has its `import_script/path` setting set to *post_import.gd* which simply prefixes the imported scene with *foo* and adds an `AnimationPlayer` node to the scene.

When importing and creating an inherited scene from *ninja.glb*, the `AnimationPlayer` node is never added.

## Steps to replicate
- Double click *ninja.glb* and click 'Reimport'
- Right click *ninja.glb* and click 'New Inherited Scene'

You'll see the scene name was prefixed with 'foo' to indicate the `EditorScenePostImport` is executing, however no additional `AnimationPlayer` has been added. No errors or warnings appear in the *Output* panel.
