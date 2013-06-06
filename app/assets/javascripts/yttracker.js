<script type= "text/javascript" src="vendor/swfobject.js"</script>

<div id="ytapiplayer">
  Need Flash Player 8+ and JavaScript enabled.
</div>

<script type="text/javascript">
  
  var params = { allowScriptAccess: "always"};
  var atts = { id: "myytplayer" }
  swfobject.embedSWF("https://www.youtube.com/v/I8xZBfVsMzs&enablejsapi=1&playerapiid=ytplayer", "ytapiplayer", 
    "640", "360", 
    "8", 
    null, 
    null, 
    params, 
    atts);

</script>

function onYouTubePlayerReady(playerid) {
  ytplayer = document.getElementId("myytplayer");
}

