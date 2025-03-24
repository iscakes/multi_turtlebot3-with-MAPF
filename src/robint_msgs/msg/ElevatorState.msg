# elevator_status
TaskStateHeader header
uint8 r_state
uint8 r_feedback
string building_name
int32 floor_index
# 电梯开门状态：opened,opening,closed,closing
string door_status
# upgoing, downgoing, keeping
string lift_status
bool finished