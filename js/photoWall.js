var imageWidth,imgDataPath="/photos/galleryList.json",imgPath="/photos/images/",imgMaxNum=50,windowWidth=window.innerWidth||document.documentElement.clientWidth||document.body.clientWidth;imageWidth=windowWidth<768?145:250;let photo={page:1,offset:imgMaxNum,init:function(){var a=this;$.getJSON(imgDataPath,function(t){a.render(a.page,t),a.eventListen(t)})},constructHtml(t){var{imageWidth:t,imageX:a,imageY:i,imgPath:e,imgName:n,imgNameWithPattern:m}=t;return`<div class="card lozad" style="width:${t}px">
                  <div class="ImageInCard" style="height:${t*i/a}px">
                    <a data-fancybox="gallery" href="${e}${m}"
                          data-caption="${n}" title="${n}">
                            <img  class="lazyload" data-src="${e}${m}"
                            src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw=="
                            onload="lzld(this)"
                            lazyload="auto">
                    </a>
                  </div>
                  <p>${n}</p>
                </div>`},render:function(t,a=[]){if(!(this.data=a).length)return;var i,e,n,m,d="";let l="";var o="",[a={}]=(a.forEach((t,a)=>{a=0===a?"active":"";l+=`<li class="nav-item" role="presentation">
          <a class="nav-link ${a} photo-tab" id="home-tab" photo-uuid="${t.name}" data-toggle="tab" href="#${t.name}"  role="tab" aria-controls="${t.name}" aria-selected="true">${t.name}</a>
        </li>`}),a);let{children:r=[],name:s}=a;r.forEach((t,a)=>{i=t.slice(t.indexOf(" ")+1),e=i.split("/").pop(),m=t.split(" ")[0],n=m.split(".")[0],m=m.split(".")[1];t={imageWidth:imageWidth,imageX:n,imageY:m,name:s,imgName:e,imgPath:imgPath,imgNameWithPattern:i};d+=this.constructHtml(t)}),o+=` <div class="tab-pane fade show active"  role="tabpanel" aria-labelledby="home-tab">${d}</div>`;a=`<ul class="nav nav-tabs" id="myTab" role="tablist">${l}</ul>`,o=`<div class="tab-content" id="myTabContent">${o}</div>`;$("#imageTab").append(a),$(".ImageGrid").append(o),this.minigrid()},eventListen:function(m){let d=this;var l,o,r,s;$('a[data-toggle="tab"]').on("shown.bs.tab",function(t){$(".ImageGrid").empty();let a=$(t.target).attr("photo-uuid");let{children:i,name:e}=m.find(t=>t.name===a)||{},n="";i.forEach((t,a)=>{l=t.split(" ")[1],o=l.split("/").pop(),s=t.split(" ")[0],r=s.split(".")[0],s=s.split(".")[1];t={imageWidth:imageWidth,imageX:r,imageY:s,name:e,imgName:o,imgPath:imgPath,imgNameWithPattern:l};n+=d.constructHtml(t)}),$(".ImageGrid").append(n),d.minigrid()})},minigrid:function(){var t=new Minigrid({container:".ImageGrid",item:".card",gutter:12});t.mount(),$(window).resize(function(){t.mount()})}};photo.init();