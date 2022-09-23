extends ColorRect


onready var animator: AnimationPlayer = $AnimationPlayer
onready var play_button: Button = find_node("ResumeButton")
onready var quit_button: Button = find_node("QuitButton")
var paused = false
func unpause():
	animator.play("UnPause")
	get_tree().paused = false
	paused = false
func pause():
	animator.play("Pause")
	get_tree().paused = true
	paused = true

func _process(_delta):
	if Input.is_action_just_pressed("pause") and paused == false:
		pause()
func _on_ResumeButton_pressed():
	unpause()


func _on_QuitButton_pressed():
	get_tree().quit()
