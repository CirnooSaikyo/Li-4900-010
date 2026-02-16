extends Node
class_name Receiver
var _timer: Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func OnCalled() -> void:
	print("Hiiiiiiiiii, Hello recieved")
	
func StartTimerLoop() -> void:
	_timer = Timer.new()
	_timer.wait_time = 1.0
	_timer.one_shot = false
	_timer.timeout.connect(_on_timer_timeout)
	add_child(_timer)
	_timer.start()

func _on_timer_timeout() -> void:
	print("Loop running...")
