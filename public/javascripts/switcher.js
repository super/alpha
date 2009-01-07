function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			oldonload();
			func();
		}
	}
}
Effect.OpenUp = function(element) {
  element = $(element);
  new Effect.BlindDown(element, arguments[1] || {});
}

Effect.CloseDown = function(element) {
  element = $(element);
  new Effect.BlindUp(element, arguments[1] || {});
}

Effect.Combo = function(element) {
  element = $(element);
  if(element.style.display == 'none') { new Effect.OpenUp(element, arguments[1] || {}); }
  else { new Effect.CloseDown(element, arguments[1] || {}); }
}

function addClass(element,value) {
  if (!element.className) {
    element.className = value;
  } else {
    newClassName = element.className;
    newClassName+= " ";
    newClassName+= value;
    element.className = newClassName;
  }
}

function highlightRows() {
  if(!document.getElementsByTagName) return false;
  var rows = document.getElementsByTagName("tr");
  for (var i=0; i<rows.length; i++) {
    rows[i].oldClassName = rows[i].className
    rows[i].onmouseover = function() {
      addClass(this,"hover");
    }
    rows[i].onmouseout = function() {
      this.className = this.oldClassName
    }
  }
}
addLoadEvent(highlightRows);
