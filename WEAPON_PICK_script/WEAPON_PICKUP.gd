extends RigidBody3D

var dropped = false
# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if dropped == true:
		apply_impulse(transform.basis.z , -transform.basis.z * 5)
		dropped = false
