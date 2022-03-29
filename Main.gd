extends Node2D

var x0 = 0
var y0 = 0
var x1 = 0
var y1 = 0

onready var line = $Line
onready var deg_input= $DegreeInput

func _ready():
	x0 = line.points[1].x
	y0 = line.points[1].y

func _process(_delta):
	x0 = line.points[1].x
	y0 = line.points[1].y

func rotate_line(deg):
	x1 = (cos(deg2rad(deg)) * x0) - (sin(deg2rad(deg)) * y0)
	y1 = (cos(deg2rad(deg)) * y0) + (sin(deg2rad(deg)) * x0)
	line.points[1] = Vector2(x1, y1)

func _on_RotateButton_pressed():
	if deg_input.text != "" or deg_input.text != " " or deg_input.text != "  " or deg_input.text != "  ":
		rotate_line(int(deg_input.text))
