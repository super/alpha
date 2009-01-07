/*
  Assorted Javascript Functions for FlashDen website v2.
  Author: Ryan Allen / Collis Ta'eed (March 2007)
*/

function expand_nav(link)
{
	var ul = find_enclosing_ul(link)
	if (ul.style.display == 'none')
	{
		ul.style.display = 'block'
	}
	else
	{
		ul.style.display = 'none'
	}
	if (link.className == 'down')
	{
		link.className='down_open'
	}
	else
	{
		link.className='down'
	}
}
		
function find_enclosing_ul(link)
{
	var search_node = link
	while (true)
	{
		var node = search_node.nextSibling
		if (node && node.nodeName == 'UL')
		{
			break
		}
		else
		{
			search_node = node
		}
	}
	return node	
}


// Ties a set of tabs and content id's together, and switches between them
// <div id='tab_1'> and <div id="content_1"> for example
// Usage: tabswitch('1', 4, 'tab', 'panel') would switch on tab_1 and panel_1

function tabswitch(active, number, tab_prefix, content_prefix) {
	
	for (var i=1; i < number+1; i++) {
	  document.getElementById(content_prefix+'_'+i.toString()).style.display = 'none';
	  document.getElementById(tab_prefix+'_'+i.toString()).className = 'off';
	}
	document.getElementById(content_prefix+'_'+active).style.display = 'block';
	document.getElementById(tab_prefix+'_'+active).className = 'active';	
	
}







