extends Node2D

export(Vector2) var parallax_offset : Vector2 = Vector2() setget set_parallax_offset, get_parallax_offset

var _size_bg : Vector2
var _size_mountain_back : Vector2
var _offset_mountain_back : Vector2
var _size_mountain_mid : Vector2
var _offset_mountain_mid : Vector2
var _size_landing : Vector2
var _offset_landing : Vector2
var _size_fg : Vector2
var _offset_fg : Vector2

func _ready():
	_size_bg = $bg.get_rect().size
	_size_mountain_back = $"mountain-back".get_rect().size
	_offset_mountain_back = $"mountain-back".offset
	_size_mountain_mid = $"mountain-mid".get_rect().size
	_offset_mountain_mid = $"mountain-mid".offset
	_size_landing = $"landing/sprite".get_rect().size #$landing.sprite.get_rect().size
	_offset_landing = $landing/sprite.offset
	_size_fg = $fg.get_rect().size
	_offset_fg = $fg.offset

func set_parallax_offset(p_parallax_offset):
	parallax_offset = p_parallax_offset

func get_parallax_offset():
	return parallax_offset

func _process(delta):
	var factor = Vector2(
		parallax_offset.x / _size_bg.x,
		parallax_offset.y / _size_bg.y
	)
	
	var mx = (_size_mountain_back.x - _size_bg.x) * factor.x
	var my = -(_size_mountain_back.y/8) * factor.y
	var mt_parallax_offset = Vector2(mx,my)
	$"mountain-back".offset = _offset_mountain_back + mt_parallax_offset
	
	mx = (_size_mountain_mid.x - _size_bg.x) * factor.x
	my = -(_size_mountain_mid.y/4) * factor.y
	mt_parallax_offset = Vector2(mx,my)
	$"mountain-mid".offset = _offset_mountain_mid + mt_parallax_offset
	
	mx = (_size_landing.x - _size_bg.x) * factor.x
	my = -(_size_landing.y/2) * factor.y
	mt_parallax_offset = Vector2(mx,my)
	$"landing/sprite".offset = _offset_landing + mt_parallax_offset
	
	mx = (_size_fg.x - _size_bg.x) * factor.x
	my = -(_size_fg.y) * factor.y
	mt_parallax_offset = Vector2(mx,my)
	$"fg".offset = _offset_landing + mt_parallax_offset



