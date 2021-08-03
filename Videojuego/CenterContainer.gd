extends CenterContainer



func _ready():
	pass

func _process(delta):
	$ParallaxBackground.scroll_base_offset.x += 0.5
