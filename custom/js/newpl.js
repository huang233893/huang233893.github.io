(()=>{let e={API_URL:"https://twi.sumi233.top",ADMIN_EMAIL_MD5:"06e6482a556524b9a7f7f50476b5fd54b8ce92fa598bf093ed8b4293c45e040f",PAGE_SIZE:5,LOADING_GIF:"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/loading1.gif",async fetchComments(){let t=new AbortController;var e=setTimeout(()=>t.abort(),5e3);try{var i=(await(await fetch(this.API_URL,{method:"POST",headers:{"Content-Type":"application/json"},body:JSON.stringify({event:"GET_RECENT_COMMENTS",includeReply:!0,pageSize:this.PAGE_SIZE}),signal:t.signal})).json()).data;return i}catch(t){return console.error("获取评论出错:",t),null}finally{clearTimeout(e)}},formatTimeAgo(t){var e=Math.floor((Date.now()-new Date(t))/1e3);return e<60?"刚刚":e<3600?Math.floor(e/60)+"分钟前":e<86400?Math.floor(e/3600)+"小时前":e<604800?Math.floor(e/86400)+"天前":new Date(t).toLocaleDateString("zh-CN",{month:"numeric",day:"numeric"})+"日"},formatContent(t){return t?t.replace(/<pre><code>[\s\S]*?<\/code><\/pre>/g,"[代码块]").replace(/<code>([^<]{4,})<\/code>/g,"[代码]").replace(/<code>([^<]{1,3})<\/code>/g,"$1").replace(/<img[^>]*>/g,"[图片]").replace(/<a[^>]*?>[\s\S]*?<\/a>/g,"[链接]").replace(/<[^>]+>/g,"").replace(/&(gt|lt|amp|quot|#39|nbsp);/g,t=>({">":">","<":"<","&":"&",quot:'"',"#39":"'",nbsp:" "})[t.slice(1,-1)]).replace(/\s+/g," ").trim():""},generateCommentHTML(t){var{created:t,comment:e,url:i,avatar:a,nick:n,mailMd5:s,id:o}=t,t=this.formatTimeAgo(t),e=this.formatContent(e);return`
        <div class="aside-list-item" title="${e}" onclick="pjax.loadUrl('${i}#${o}')">
          <div class="thumbnail">
            <img class="aside-list-avatar" src="${a}" alt="avatar">
          </div>
          <div class="content">
            <div class="aside-list-author">
              <div class="aside-list-author-name">
                <span>${n}</span>${s===this.ADMIN_EMAIL_MD5?`
        <svg t="1731283534336" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="29337" width="22" height="22"><path d="M512 0C230.4 0 0 230.4 0 512s230.4 512 512 512 512-230.4 512-512S793.6 0 512 0z m291.84 366.08c-46.08 0-79.36 23.04-92.16 66.56l-163.84 358.4h-66.56L312.32 435.2c-17.92-46.08-46.08-71.68-89.6-71.68v-35.84H512v35.84h-40.96c-25.6 2.56-30.72 23.04-12.8 61.44l102.4 225.28 89.6-199.68c25.6-56.32 2.56-84.48-71.68-89.6v-35.84h225.28v40.96z" fill="#06c013" p-id="29338" data-spm-anchor-id="a313x.search_index.0.i73.2b2d3a81BgxnVW" class=""></path></svg>`:""}
              </div>
              <span class="aside-list-date">${t}</span>
            </div>
            <div class="aside-list-content">${e}</div>
          </div>
        </div>
      `},getErrorTemplate(t,e){return`
        <div style="min-height: 346px;display: flex;padding: 20px;text-align: center;justify-content: center;align-items: center;flex-direction: column;">
          <i class="fas fa-${t}" style="font-size: 2rem; color: ${"exclamation-circle"===t?"#ff6b6b":"#999"}; margin-bottom: 10px;"></i>
          <p style="color: #666;margin: 0;">${e}</p>
        </div>
      `},async insertComponent(){let e=document.getElementById("latest-comments");if(e){e.innerHTML=`<img src="${this.LOADING_GIF}" style="display: flex;min-height: 346px;object-fit: cover;">`;var i=await this.fetchComments();let t;t=null===i?this.getErrorTemplate("exclamation-circle","哎呀！评论加载失败，刷新一下再来吧~"):0===i.length?this.getErrorTemplate("comment-slash","还没有评论呢~ 快来抢沙发吧！"):i.map(this.generateCommentHTML.bind(this)).join(""),e.style.opacity="0",e.innerHTML=t,requestAnimationFrame(()=>{e.style.transition="opacity 0.3s ease-in",e.style.opacity="1"})}}};["DOMContentLoaded","pjax:success"].forEach(t=>document.addEventListener(t,()=>{var t;(t=document.createElement("style")).textContent=`
      #aside-content .aside-list > .aside-list-item .content{
        width: 3.2em !important;
        height: 3.2em !important;
        display: flex;
        flex-direction: column;
        justify-content: space-around;
      }
      #aside-content .aside-list > .aside-list-item .thumbnail {
        width: 3.2em!important;
        height: 3.2em!important;
      }
      
      .card-latest-comments .item-headline i {
        color: var(--anzhiyu-main);
      }

      .card-latest-comments .headline-right {
        position: absolute;
        right: 24px;
        top: 16px;
        transition: all 0.3s;
        opacity: 0.6;
      }

      .card-latest-comments .headline-right:hover {
        color: var(--anzhiyu-main);
        opacity: 1;
        transform: rotate(90deg);
      }

      .aside-list-author {
        display: flex;
        align-items: center;
        font-weight: bold;
        height: 22px;
        gap: 5px;
      }

      .aside-list-date {
        font-size: 0.7rem;
        font-weight: normal;
        margin-left: auto;
      }

      .aside-list-content {
        font-size: 0.9rem;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        text-decoration: none;
        line-height: 1.2;
      }

      .aside-list-item:last-child {
        margin-bottom: 0!important;
      }

      [data-theme='dark'] .aside-list-item-right {
        filter: brightness(0.95);
      }

      .aside-list-author-name {
        display: flex;
        align-items: center;
        white-space: nowrap;
        gap: 4px;
        max-width: 65%;
      }

      .aside-list-author-name span {
        overflow: hidden;
        text-overflow: ellipsis;
      }

      .aside-list-author-name svg {
        flex-shrink: 0;
      }
    `,document.head.appendChild(t),e.insertComponent()}))})();