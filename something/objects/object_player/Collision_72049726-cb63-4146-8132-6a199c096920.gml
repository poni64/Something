/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0595C0B8
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "player_respawn"
player_respawn = 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E2DB26C
/// @DnDArgument : "var" "player_respawn"
/// @DnDArgument : "value" "1"
if(player_respawn == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F20338D
	/// @DnDParent : 4E2DB26C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "32"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "object_player"
	/// @DnDSaveInfo : "objectid" "bac55afb-8653-4c2b-bf19-c0e10621b149"
	instance_create_layer(x + 0, y + 32, "Instances", object_player);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 29DED651
	/// @DnDParent : 4E2DB26C
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62332A15
	/// @DnDDisabled : 1
	/// @DnDParent : 4E2DB26C
	/// @DnDArgument : "var" "player_respawn"
}