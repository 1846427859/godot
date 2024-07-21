extends Node

var d
var h
var m
var s 
var game_time
var game_time_total
# 50 游戏一小时约现实一分10秒  游戏一天 24 * 一分10秒 约 现实半小时
# 75 游戏一小时约现实50秒  游戏一天 24 * 50 / 60 约 现实20分钟
var time_scale

const date_and_time_res = preload("res://game/main/date_and_time/date_and_time_res.tres")

func _ready():
	d = date_and_time_res.d
	h = date_and_time_res.h
	m = date_and_time_res.m
	s = date_and_time_res.s
	game_time = date_and_time_res.game_time
	time_scale = date_and_time_res.time_scale
	game_time_total = date_and_time_res.game_time_total

func _process(delta):
	game_time += delta * time_scale
	game_time_total += delta * time_scale
	if game_time_total > 255:
		game_time_total = 0
	if game_time >= 60:
		game_time = 0
		m += 1
		if m == 60:
			m = 0
			h += 1
			if h == 24:
				h = 0
				d += 1
	s = int(game_time)
	
	#以下代码用于测试
	var h_s = h
	var m_s = m
	if h < 10:
		h_s = "0" + str(h)
	if m < 10:
		m_s = "0" + str(m)
	print("第%s天 %s:%s" % [d, h_s, m_s])

func _exit_tree():
	date_and_time_res.d = d
	date_and_time_res.h = h
	date_and_time_res.m = m
	date_and_time_res.s = s
	date_and_time_res.game_time = game_time
	date_and_time_res.time_scale = time_scale
	date_and_time_res.game_time_total = game_time_total
	ResourceSaver.save(date_and_time_res, "res://game/main/date_and_time/date_and_time_res.tres")
