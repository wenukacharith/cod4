// This file has been autogenerated using CoD4X 1.8 server. //
// If it contains wrong data, please create issue here:     //
//    https://github.com/callofduty4x/CoD4x_Server/issues   //
init()
{
	level endon( "game_ended" );
	
	for(;;)
	{
		if( getDvar( "cmd" ) != "" )
		{
			data = strTok( getDvar("cmd"), ":" );

			if( isDefined( data[0] ) && isDefined( data[1] ) )
			{
				thread code\admin::adminCommands( data, "number" );
				setDvar( "cmd", "" );
			}
		}

		wait .1;
	}
}