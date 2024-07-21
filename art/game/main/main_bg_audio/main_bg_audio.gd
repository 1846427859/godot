extends AudioStreamPlayer2D

var audios = [
	preload("res://art/Ninja Adventure - Asset Pack/Musics/1 - Adventure Begin.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/2 - The Cave.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/3 - Revelation.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/4 - Village.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/5 - Peaceful.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/6 - Story (Short).ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/6 - Story.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/7 - Sad Theme.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/8 - End Theme.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/9 - Quiet.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/10 - Dark Castle.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/11 - Clearing.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/12 - Temple.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/13 - Mystical.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/14 - Curse.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/15 - Credit Theme.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/16 - Melancholia.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/17 - Fight.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/18 - Aquatic.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/19 - Ascension.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/20 - Good Time.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/21 - Dungeon.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/22 - Dream.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/23 - Road.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/24 - Final Area.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/25 - End Theme 2.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/26 - Lost Village.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/27 - Chill.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/28 - Tension.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/29 - Lament.ogg"),
	preload("res://art/Ninja Adventure - Asset Pack/Musics/30 - Ruins.ogg"),
]

func _ready():
	var pick_audio = audios.pick_random()
	stream = pick_audio
	play()



func _on_finished():
	var pick_audio = audios.pick_random()
	stream = pick_audio
	play()
