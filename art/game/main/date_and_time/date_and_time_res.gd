extends Resource

class_name date_and_time_res

@export var d = 1
@export var h = 12
@export var m = 30
@export var s = 0
@export var game_time = 0
@export var game_time_total = 0
# 50 游戏一小时约现实一分10秒  游戏一天 24 * 一分10秒 约 现实半小时
# 75 游戏一小时约现实50秒  游戏一天 24 * 50 / 60 约 现实20分钟
@export var time_scale = 75
