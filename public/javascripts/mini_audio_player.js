function show_player(id, url)
{
	var swf = new SWFObject("/flash/aj_tiny_player.swf?soundFileName=" + url + "&looping=false&autoplay=true", id + "_swf", "67", "24", "8")
	swf.write("player_" + id)
}