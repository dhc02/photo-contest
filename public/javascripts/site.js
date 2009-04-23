$(document).ready(function() {
  
  // hide flash messages after 2 seconds
  $("#flash div").animate({opacity: 1.0}, 2000).slideUp("slow");
  
  $(".photo").attr("rel", "highslide");
    
  $(".photo img").attr("title", "Click to Enlarge.");
  
  $(".photog").attr("target", "_blank");
  
  // change 'vote' links to ajax links
  /*
  $("a.vote").click( function() { 
    $.ajax({
        url: this.href,
        dataType: "script",
        beforeSend: function(xhr) {xhr.setRequestHeader("Accept", "text/javascript");}
    });
    return false;
  }); 
  */
  
  hs.graphicsDir = '/images/highslide/';
  hs.outlineType = 'rounded-white';
  hs.showCredits = false;
  hs.fadeInOut = true;
  hs.transitions = ['expand', 'crossfade'];
  
});


