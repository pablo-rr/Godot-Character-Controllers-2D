# Godot-Character-Controllers-2D

This repository includes:
  - CharacterController2D.gd (holds most of the functionality of the controllers, but doesn't act as a controller, more like a parent class)
  - ScrollerController2D.gd (for platformer games, or side-scroll games, suck as a Mario Bros or Sonic)
  - TopDownController2D.gd (for top-down games, such as Hotline Miami or the first Grand Theft Auto)

## How to use

1. Download the latest version in the 'Release' tab
2. Extract in your project's folder
3. Put one of the controllers (ScrollerController2D or TopDownController2D) inside a KinematicBody2D
4. Modify the variables as you like
5. Add a CollisionShape2D inside the KinematicBody2D
6. Press play and enjoy

** Be sure to place all the scripts in the same folder, as ScrollerController2D and TopDownController2D extend from CharacterController2D

** It is recomended not to modify the scripts if you don't understand what's happening inside
