(l=>{l.fn.snow=function(m){var d=l('<div id="snowbox" />').css({position:"absolute","z-index":"9999",top:"-50px"}).html("&#10052;"),r=l(document).height(),c=l(document).width(),m=l.extend({},{minSize:10,maxSize:20,newOn:1e3,flakeColor:"#FFFFFF"},m);setInterval(function(){var n=Math.random()*c-100,o=.5+Math.random(),e=m.minSize+Math.random()*m.maxSize,t=r-200,i=n-500+500*Math.random(),a=10*r+5e3*Math.random();d.clone().appendTo("body").css({left:n,opacity:o,"font-size":e,color:m.flakeColor}).animate({top:t,left:i,opacity:.2},a,"linear",function(){l(this).remove()})},m.newOn)}})(jQuery),$(function(){$.fn.snow({minSize:5,maxSize:20,newOn:500})});