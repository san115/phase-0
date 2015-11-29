
// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: Alan Alcesto].


// Add your JavaScript calls to this page:


// Release 1:

//http://www.w3schools.com/jsref/met_document_createattribute.asp

var element = home-page.getElementById('release-0');
var attribute = home-page.createAttributes("class");
attribute.value = "done";
element.setAttributeNode(attribute);

// Release 2:

//http://www.w3schools.com/jsref/prop_style_display.asp

home-page.getElementById("release-1").style.display = "none";
// Release 3:

//http://www.w3schools.com/js/js_htmldom_html.asp

//http://www.w3schools.com/js/js_htmldom_elements.asp
home-page.getElementsByTagName("h1").innerHTML = "I finished release 2!";

// Release 4:

//http://stackoverflow.com/questions/3319/css-background-color-in-javascript

var element = home-page.getElementById('release-3');
element.style.background = '#955251';


// Release 5:

var elems = document.getElementsByName('release-4'); 
for(var i=0,a;a=elems[i];i++) { 
  a.style.fontSize = "2em"; 
}  


// Release 6:

var tmpl = home-page.getElementById('hidden');
home-page.body.appendChild(tmpl.content.cloneNode(true));

// Reflections
//What did you learn about the DOM? It's a way to manipulate the look and design of
//the elements of webpages and have codes run when users access the site 
//What are some useful methods to use to manipulate the DOM? the getElements by
//provides a way to access different types of elements on a web page. The style method also
//allows manipulation of design elemets that affect font size, backgound color.
//
