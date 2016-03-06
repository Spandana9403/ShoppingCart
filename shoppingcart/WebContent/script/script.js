var image=["images/p26.jpg","images/p11.jpg","images/p27.jpg","images/p19.jpg","images/p9.jpg","images/p28.jpg","images/p21.jpg","images/p12.jpg","images/p29.jpg","images/p12.jpg","images/p6.jpg","images/p30.jpg","images/p14.jpg","images/p3.jpg","images/p15.jpg","images/p31.jpg","images/p23.jpg","images/p5.jpg","images/p7.jpg","images/p24.jpg","images/p32.jpg","images/p1.jpg","images/p33.jpg","images/p4.jpg","images/p16.jpg","images/p8.jpg","images/p25.jpg","images/p10.jpg"];

var step=0;

function slideit()
{
	
	if(!document.images)
		{
		return 
		}
	document.getElementById("slide").src=image[step];
	if(step<26)
		{
		    step++;
		}
	else
		{
		  step=0;
		}
	
	setTimeout("slideit()",2000);
}

function createXMLHttpRequest(){
	  // See http://en.wikipedia.org/wiki/XMLHttpRequest
	  // Provide the XMLHttpRequest class for IE 5.x-6.x:
	  if( typeof XMLHttpRequest == "undefined" ) XMLHttpRequest = function() {
	    try { return new ActiveXObject("Msxml2.XMLHTTP.6.0") } catch(e) {}
	    try { return new ActiveXObject("Msxml2.XMLHTTP.3.0") } catch(e) {}
	    try { return new ActiveXObject("Msxml2.XMLHTTP") } catch(e) {}
	    try { return new ActiveXObject("Microsoft.XMLHTTP") } catch(e) {}
	    throw new Error( "This browser does not support XMLHttpRequest." )
	  };

	  return new XMLHttpRequest();
}
function search1()
{
	
	 var AJAX = createXMLHttpRequest();
	 AJAX.open("GET", "searchbook.jsp");
	 AJAX.send("");
	 AJAX.onreadystatechange = handler;
     var x=""; 
     var x1=true;
	  function handler()
	  {
	  	  if(AJAX.readyState == 4 && AJAX.status == 200)
	  		  {
	  		  var response=AJAX.responseText;
	  		  var title=response.split(",");
	  		  for(var i=0;i<title.length;i++)
	  			  { 
	  			    x=x+'<option value="'+title[i]+'"/>';
	  			  
	  			  }
	  		document.getElementById("search").innerHTML;
	  		//console.log(x);
	  		  }
	  }    
}

function validate()
{
	var AJAX = createXMLHttpRequest();
	 var username=document.getElementById("username").value;
	 var password=document.getElementById("password").value;
	 AJAX.open("GET", "loginvalidate.jsp?username="+username+"&password="+password);
	 AJAX.send("");
	 AJAX.onreadystatechange = handler;
    var x=""; 
 
    function handler()
	  {
	  	  if(AJAX.readyState == 4 && AJAX.status == 200)
	  		  {
	  		  var response=AJAX.responseText;
	  		  var res=response.split(",");
	  		  
                   	  		  
	  		      var c=parseInt(res[0]);
	  		    	  if(isNaN(c))
	  		    
	  		    	  {
	  		    		  
	  		    	     var name="Welcome, " +res[0];
	  		             document.getElementById("username").style.display="none";
	  		             document.getElementById("password").style.display="none";
	  		             document.getElementById("loginbutton").style.display="none";
	  		             document.getElementById("welcome").style.display="block";
	  		             document.getElementById("welcome").innerHTML=name;
	  		             document.getElementById("logout").style.display="block";
	  		             document.getElementById("wishlist").style.display="block";
	  		             document.getElementById("wishlistitems").style.display="block";
	  		             document.getElementById("items").style.display="block";
	  		             document.getElementById("user").value=res[1];
	  		             document.getElementById("cartcount").value=res[2];
	  		             document.getElementById("cartincrement").innerHTML=parseInt(res[2]);
	  		             document.getElementById("wishcount").value=res[3];
	  		             document.getElementById("wishlistitems").innerHTML=res[3];
	  		    	  }
	  		    	  
	  		    	  else
	  		    		  {
	  		    		     document.getElementById("username").value="";
	  		                 document.getElementById("password").value="";
	  		    		     alert("Invalid Login Credential's Please Try Again");	    		                  
	  		    		    
	  		    		  }
	  		    	  
	  		    		  
	  		  }
	  }
    
}

function cart(x)
{
	var AJAX = createXMLHttpRequest();
	var username=document.getElementById("user").value;
	var title=x;
	AJAX.open("GET", "http://localhost:8030/shoppingcart/restful/bookservice/store/"+username+"/"+title);
	AJAX.send("");
	AJAX.onreadystatechange = handler;
	
	 function handler()
	  {
	  	  if(AJAX.readyState == 4 && AJAX.status == 200)
	  		  {
	               var response=AJAX.responseText;
	               if(response=="successful")
	            	   {
	            	     alert("Successfully Added To Cart");
	            	     var co=parseInt(document.getElementById("cartcount").value);
	            	     co=parseInt(co)+1;
	            	     document.getElementById("cartincrement").innerHTML=co;
	            	     document.getElementById("cartcount").value=co;
	            	     
	            	     
	            	     var AJAX1=createXMLHttpRequest();
	            	     AJAX1.open("GET","updatecartcount.jsp?cartco="+co);
	            	     AJAX1.send("");
	            	     
	            	     AJAX1.onreadystatechange=handler1;
	            	     
	            	     function handler1()
	            	     {
	            	    	 if(AJAX1.readyState == 4 && AJAX1.status == 200);
	            	    	 
	            	    	        {
	            	    	        	var response=AJAX1.responseText;
	            	    	        }
	            	    	 
	            	     }
	            	     
	            	   }
	
	  		  }
	  }
}

function wishlist(x)
{
	var AJAX = createXMLHttpRequest();
	var username=document.getElementById("user").value;
	var title=x;
	AJAX.open("GET", "http://localhost:8030/shoppingcart/restful/bookservice/store1/"+username+"/"+title);
	AJAX.send("");
	AJAX.onreadystatechange = handler;
  	
	 function handler()
	  {
	  	  if(AJAX.readyState == 4 && AJAX.status == 200)
	  		  {
	               var response=AJAX.responseText;
	               if(response=="successful")
	            	   {
	            	     alert("Successfully Added To WishList");
	            	     var co=parseInt(document.getElementById("wishcount").value);
	            	     co=parseInt(co)+1;
	            	     document.getElementById("wishlistitems").innerHTML=co;
	            	     document.getElementById("wishcount").value=co;
	            	     
	            	     
	            	     var AJAX1=createXMLHttpRequest();
	            	     AJAX1.open("GET","updatewishcount.jsp?wishco="+co);
	            	     AJAX1.send("");
	            	     
	            	     AJAX1.onreadystatechange=handler1;
	            	     
	            	     function handler1()
	            	     {
	            	    	 if(AJAX1.readyState == 4 && AJAX1.status == 200);
	            	    	 
	            	    	        {
	            	    	        	var response=AJAX1.responseText;
	            	    	        }
	            	    	 
	            	     }
	            	     
	            	   }
	
	  		  }
	  }
	
}


