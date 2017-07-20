
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="A layout example with a side menu that hides on mobile, just like the Pure website.">
    <title>CEDCMS App</title>
    
    <link rel="stylesheet" href="https://unpkg.com/purecss@1.0.0/build/pure-min.css" integrity="sha384-" crossorigin="anonymous">
    
    
    
        <!--[if lte IE 8]>
            <link rel="stylesheet" href="css/layouts/side-menu-old-ie.css">
        <![endif]-->
        <!--[if gt IE 8]><!-->
            <link rel="stylesheet" href="css/layouts/side-menu.css">
        <!--<![endif]-->
</head>

 <script type="text/javascript">
     function initGeolocation()
     {
        if( navigator.geolocation )
        {
           // Call getCurrentPosition with success and failure callbacks
           //navigator.geolocation.getCurrentPosition( success, fail );
		   navigator.geolocation.getCurrentPosition(success, fail, {maximumAge:60000, timeout:10000, enableHighAccuracy:false});
        }
        else
        {
           alert("Sorry, your browser does not support geolocation services.");
        }
     }

     function success(position)
     {

         document.getElementById('longi').value = position.coords.longitude;
         document.getElementById('lat').value = position.coords.latitude;
		  
     }

     
        function fail(error) {
		document.getElementById('longi').value = 83.2185;
         document.getElementById('lat').value = 17.6868;
            switch (error.code) {
                    case error.PERMISSION_DENIED: alert("user did not share geolocation data");
                        break;
                    case error.POSITION_UNAVAILABLE: alert("could not detect current position");
                        break;
                    case error.TIMEOUT: alert("GPS is not switched on in your Mobile");
                        break;
                    default: alert("Something wrong with Your GPS");
                        break;
                }
            } 
     

   </script>    

<body onLoad="initGeolocation();">






<div id="layout">
    <!-- Menu toggle -->
    <a href="#menu" id="menuLink" class="menu-link">
        <!-- Hamburger icon -->
        <span></span>
    </a>

    <div id="menu">
        <div class="pure-menu">
            <a class="pure-menu-heading" href="#">Menu</a>

            <ul class="pure-menu-list">
                <li class="pure-menu-item"><a href="index.asp" class="pure-menu-link">Lodge Complaint</a></li>
                <!--<li class="pure-menu-item"><a href="#" class="pure-menu-link">List Complaints</a></li>

                <li class="pure-menu-item" class="menu-item-divided pure-menu-selected">
                    <a href="#" class="pure-menu-link">Services</a>
                </li>

                <li class="pure-menu-item"><a href="#" class="pure-menu-link">Contact</a></li>-->
            </ul>
        </div>
    </div>

    <div id="main">
        <div class="header">
            <h1>CEDCMS App</h1>
            <h2>Tell us about the problem</h2>
        </div>

        <div class="content">
		<form action="insert_basic_back.asp" method="post">
            <h2 class="content-subhead">Details</h2>
           <p> <input type="text" style="width:100%;height:200px;border-radius:2%"  name="details"></p>
		   <INPUT TYPE="hidden" NAME="longi" ID="longi" VALUE="">
     <INPUT TYPE="hidden" NAME="lat" ID="lat" VALUE="">
		   <input type="submit" name="Proceed" value="proceed">

          <!--  <h2 class="content-subhead">Plaese share a snap</h2>
            <p>
               <input type="file" accept="image/*" capture="camera">        </p>-->
</form>
           
           
        </div>
    </div>
</div>




<script src="js/ui.js"></script>

</body>
</html>
