# Definition of a constraint

string name      # 'human readable' name for the constraint

# TYPES of Constraints (ENUM)
# FILL IN into the function field
uint8 OTHER=0	     # defines special tasks known in SoT Database, not formulated as features variable
                     # Examples: Joint Limits
uint8 ANGLE=1		   # computes the angle between the two features
uint8 DISTANCE=2	 # computes the distance between the two features
uint8 POSITION=3	 # computes the difference of position between the two features
uint8 POITING_AT=4 # computes a pointing task

uint8 function    # SET this field with one of the enum reported above

Feature tool_feature
Feature world_feature

ConstraintCommand command # initial parameterization of the constraint.
