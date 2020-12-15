extends KinematicBody

onready var Dialogue = get_node("/root/Game/UI/Dialogue")

var dialogue = [	
	"Hello, and welcome to Marksmen partner! Press E to continue.",
	"How fast you thinkin' y'all can shoot?",
	"Well, we're about to see. Please step right up and get those targets up in them trees, and then that drone if you will.",
	"Get ready. Set. G-! Oh wait. You're needing to press E to begin... "
]

func _ready():
	$AnimationPlayer.play("Idle")
	Dialogue.connect("finished_dialogue", self, "finished")



func _on_Area_body_entered(body):
	Dialogue.start_dialogue(dialogue)

func _on_Area_body_exited(body):
	Dialogue.hide_dialogue()


func finished():
	get_node("/root/Game/Target_Container").show()
	Global.timer = 120
	Global.update_time()
	get_node("/root/Game/UI/Timer").start()
