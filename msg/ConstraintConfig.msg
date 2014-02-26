# This string is an identifier for the controller used and the discrete
# state managing in SoT.
# For RoboHow demo, used only for debugging purpose.
# Please set a convenient name, and keep the same label
string controller_id

# List of constraints configuration to be used in SoT Controller
# Each constraint in this list will be considered in the optimization problem.
# The constraints are ORDERED by priority (first one, HIGH!!! Prioriy)
# A constraint previously added will be REMOVED if not present in the list
Constraint[] constraints
