# Allows to modify the state of a constraint online
# string identifier for the controller of the corrisponding constraints
# Used 
string controller_id

# DEPRECATED hash identifier for this motion
int64 movement_id #DEPRECATED

# Note: For each of the following fields, leave an empty/default value will not modify the
#  corresponding field in the registered constraint, allowing to modify simply one field at a time.


# Specify position ranges for the current constraint set
# which was specified using ConstraintConfig.msg
# NOTE: arrays in pos_lo and pos_hi need to have the same size
float64[] pos_lo	# lower bound
float64[] pos_hi	# upper bound
string    selec   # selection of the dof handled (only used for the position constraint)
                  # Used only in position task
float64[] gain    # gain (size=1: constant gain, size=3: exponential gain)

