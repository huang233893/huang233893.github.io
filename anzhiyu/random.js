var posts=["CCNA/ACL基础/","CCNA/DOD（TCP_IP）/","CCNA/EIGRP基础/","CCNA/OSI基础/","CCNA/OSPF基础/","CCNA/NAT基础/","CCNA/RIP基础/","CCNA/STP基础/","CCNA/Spanning Tree And More/","CCNA/VLAN基础/","CCNA/VLSM和子网划分基础/","CCNA/WAN广域网和PPP/","CCNA/帧中继FrameDelay/","CCNA/静态路由+思科系统操作/","CCNP/CCNP交换 DHCP协议详解及配置/","CCNP/CCNP交换 EtherChannel/","CCNP/CCNP交换 HSRP VRRP GLBP/","CCNP/CCNP交换 Lay2 Switching and VLAN/","CCNP/CCNP交换 Trunk VTP and pVLAN/","CCNP/CCNP交换 VLAN间的路由及三层交换机的部署/","CCNP/CCNP路由 BGP/","CCNP/CCNP路由 EIGRP部分/","CCNP/CCNP路由 OSPF和LSA部分/","CCNP/CCNP路由 路由和路径/","CCNP/CCNP路由 路由选择原理/","Linux/Linux Bash Shell 脚本编写/","Linux/Linux RAID磁盘阵列/","Linux/Linux服务器基础/","Linux/Linux简介/","Weekly/zhouji1/","Windows/win11dev1/","Windows/win11dev/","Windows/win11dev2/","Windows/win11dev3/","Windows/win11dev4/","Windows/win11dev5/","eNSP/eNSP指令及基础/","其他/sumiblogappsup/","刷机/Agassi2-W09BHN/","刷机/kiwi-downdate/","刷机/projecttreble/","教程/MacOSXDP3install/","教程/blog2048plus/","教程/blogbackup/","教程/blogelectronfish/","教程/blogflinkcountfix/","教程/dnscloudflare/","教程/redmi2linux/","测试/hello-world/","酥米的碎碎念/南沙游记/","酥米的碎碎念/番禺市桥游记/","酥米的碎碎念/酥米的碎碎念1/","酥米的碎碎念/酥米的碎碎念2/","酥米的碎碎念/顺德容桂游记/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };var friend_link_list=[{"name":"酥米","link":"https://www.sumi233.top/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed/top/huang233893/imgs/blog/userfb6a1018b84ce485.jpg","descr":"终有一日，寻梦中人","recommend":true},{"name":"安知鱼","link":"https://blog.anheyu.com/","avatar":"https://npm.elemecdn.com/anzhiyu-blog-static@1.0.4/img/avatar.jpg","descr":"生活明朗，万物可爱","recommend":true},{"name":"GcYJdRniC1","link":"https://www.ptilopsis.xyz/","avatar":"https://www.ptilopsis.xyz/wp-content/uploads/2024/12/20241212152832.webp","descr":"GcYJdRniC1's Blog!","recommend":true},{"name":"槿鸢","link":"https://ipox.cn/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed/top/huang233893/imgs/blog/link%20(1).png","descr":"槿鸢茶屋 —— 咕咕咕","recommend":true},{"name":"如笙","link":"https://blog.rusheng.top","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20230805122421.png","descr":"人生如梦，不过三六"},{"name":"白荼","link":"https://blog.iletter.top/","avatar":"https://www.ittoolman.top/images/avatar.png","descr":"没有什么可以留住，除了死亡。"},{"name":"天影大侠的小站","link":"https://blog.skyshadow.fun","avatar":"https://weavatar.com/avatar/7388ea4765a319d5f83fea61c3236384?s=1000","descr":"天影大侠的小站"},{"name":"澄沨的漫游茶记","link":"https://champhoon.xyz/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/%E6%BC%AB%E6%B8%B8%E8%8C%B6%E8%AE%B0.ico","descr":"Stay hungry, Stay foolish.","recommend":true},{"name":"天海博客","link":"https://woolyun.com/","avatar":"https://woolyun.com/wp-content/uploads/2025/05/yyl-e1746698677584.jpg","descr":"建站经验记录，实用工具推荐，免费资源分享。","recommend":true},{"name":"柒渊阁","link":"https://www.myxz.top/","avatar":"https://sourceimage.s3.bitiful.net/myxz.avif","descr":"柒上月日，无铭之阁"},{"name":"Oyiso's Blog","link":"https://oyiso.cn","avatar":"https://oyiso.cn/logo.png","descr":"The shortest answer is doing","recommend":true},{"name":"Foxhole","link":"https://blog.southfox.me/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/58982705.png","descr":"狐狸反走矣","recommend":true},{"name":"Donghai","link":"https://mgrowup.com/","avatar":"https://img.mgrowup.com/imgs/2025/08/5f764a786563fb90.jpg","descr":"真诚记录，生活值得"},{"name":"晴雨笔记","link":"https://memo.moieo.net/","avatar":"https://cn.cravatar.com/avatar/89b071e828602b9f77003bdcc5b0e05c?s=150","descr":"素白清韵，简静安然"},{"name":"Ganzhe","link":"https://www.ganzhe.site/","avatar":"https://pic.imgdb.cn/item/64895d391ddac507cce97bc3.webp","descr":"顺其自然，持之以恒"},{"name":"UWillno's Blog","link":"https://uwillno.com","avatar":"https://uwillno.com/uwlogo.png","descr":"各类记录与Qt for WebAssembly技术测试"},{"name":"ZY知识库","link":"https://blog.pljzy.top/","avatar":"https://blog.pljzy.top/_astro/logo.BxIxyJV1_Z19cEQW.webp","descr":"一个技术探索与分享的平台"},{"name":"ATao","link":"https://blog.atao.cyou/","avatar":"https://cdn.atao.cyou/Web/Avatar.png","descr":"做自己喜欢的事"},{"name":"Refactored","link":"https://www.refact.cc/","avatar":"https://www.refact.cc/avatar.png","descr":"形体是简单而纯粹的，它不是完整的群体，每个形体都指向其复杂性，并最终被复杂性联系在一起。"},{"name":"Mo的记事簿","link":"https://blog.xiowo.net/","avatar":"https://blog.xiowo.net/img/avatar.png","descr":"万年鸽王,哈哈OvO","recommend":true},{"name":"辰渊尘の个人博客","link":"https://blog.mcxiaochen.top/","avatar":"https://blog.mcxiaochen.top/favicon.ico","descr":"05后,高中生,内容偏技术向希望能对你有用QwQ","recommend":true},{"name":"彬红茶日记","link":"https://note.redcha.cn","avatar":"https://note.redcha.cn/upload/favicon-256x256.png","descr":"记录自己天地下的美好","recommend":true},{"name":"LanKe","link":"https://blog.blueke.top","avatar":"https://blog.blueke.top/logo.png","descr":"请为一切不真实之物骄傲，因为我们高于这个世界！"},{"name":"躬行笔记","link":"https://www.fuzhoupyy.work","avatar":"https://www.fuzhoupyy.work/usr/themes/blog/images/tx.jpg","descr":"古人学问无遗力，少壮工夫老始成。 纸上得来终觉浅，绝知此事要躬行。"},{"name":"青灯暮雨","link":"https://www.blatr.cn","avatar":"https://www.blatr.cn/images/adminAvatar.jpg","descr":"再渺小的星光，也有属于它的光芒","recommend":true},{"name":"喜之梁","link":"https://blog.liang.one","avatar":"https://bu.dusays.com/2025/10/02/68de1a78e7aa4.webp","descr":"多点关心多点爱"},{"name":"春华秋实","link":"https://linqiushi.top","avatar":"https://youke1.picui.cn/s1/2025/10/07/68e52c2a55563.png","descr":"无恙桃花，依然燕子，春景多别"},{"name":"严重浪漫","link":"https://www.bat69.com/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/yanzhonglangman.webp","descr":"严重浪漫博客","recommend":true},{"name":"定の栈","link":"https://saop.cc","avatar":"https://saop.cc/avatar.webp","descr":"LINK START!","recommend":true},{"name":"Ryan Wang","link":"https://ryanc.cc/","avatar":"https://ryanc.cc/upload/avatar-128-2024.jpg","descr":"Hi there 👋","recommend":true},{"name":"Eilo's Blog","link":"https://aptu.net/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/eilo.jpg","descr":"等等我记一下"},{"name":"李开开博客","link":"https://blog.caonmd.com/","avatar":"https://blog.caonmd.com/upload/%E5%A4%B4%E5%83%8F-%E5%9C%86.png","descr":"李开开的技术学习与日常分享"},{"name":"bbb-lsy07","link":"https://blog.6uu.us","avatar":"https://blog.6uu.us/upload/00000.png","descr":"科技激荡人文，洞见智慧本真。"},{"name":"老罗博客","link":"https://www.luosir.cn/","avatar":"https://q2.qlogo.cn/g?b=qq&nk=10936102&s=100","descr":"记录喜欢折腾的日常"},{"name":"默小班","link":"https://www.memxb.top/","avatar":"https://wmimg.com/i/780/2025/07/68677fe53c2d1.png","descr":"一个初中生的小站点。"},{"name":"皮皮社","link":"https://www.pipishe.com/","avatar":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/pipishe.webp","descr":"皮一下，很开心！"},{"name":"小林先森","link":"https://blog.1edg.cn","avatar":"https://pic1.imgdb.cn/item/68eda974c5157e1a886d6347.png","descr":"小林的视界，分享生活，留住感动"},{"name":"哈喽！林墨白","link":"https://blog.lmb.blue/","avatar":"https://files.blog.lmb.blue/assets/img/logo/pink-black.png","descr":"沉墨满纸，一笑若白。","recommend":true},{"name":"ElysiumStack","link":"https://www.elysium-stack.cn/","avatar":"https://www.elysium-stack.cn/upload/ee0757e6-ebb4-46d0-a388-660f648653ea.jpg","descr":"不会摄影的设计师不是优秀的旅行家","recommend":true},{"name":"Xuan's blog","link":"https://blog.ybyq.wang/","avatar":"https://blog.ybyq.wang/usr/themes/handsome/assets/img/avatar.png","descr":"分享技术教程和学习笔记","recommend":true},{"name":"网易云直链解析","link":"https://api.toubiec.cn/wyapi.html","avatar":"https://ts3.tc.mm.bing.net/th/id/ODF.jjoQ4Vf3Wtohq3QsAi1UMA?w=32&h=32&qlt=70&pcl=fffffa&o=7&cb=thws4&pid=1.2&rm=3","descr":"好用的直链解析网站","siteshot":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202025-08-27%20193433.jpg"},{"name":"安知鱼官方主题文档","link":"https://docs.anheyu.com/","avatar":"https://docs.anheyu.com/cover.webp","descr":"主题文档手册","siteshot":"https://npm.elemecdn.com/anzhiyu-theme-static@1.1.6/img/blog.anheyu.com.jpg"},{"name":"转换云","link":"https://www.zhuanhuanyun.cn/","avatar":"https://www.zhuanhuanyun.cn/static/project/zhy/web/static/picture/icon_1.png?v=1","descr":"网易云/qq音乐歌曲格式转换","siteshot":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202025-08-27%20193700.jpg"},{"name":"语雀","link":"https://www.yuque.com/yuqueyonghunp7010/vr4bcp","avatar":"https://ts3.tc.mm.bing.net/th/id/ODF.4txnRZL6KPK00SXkgkMLag?w=32&h=32&qlt=70&pcl=fffffa&o=7&cb=thws4&pid=1.2&rm=3","descr":"酥米的语雀，需要登录才能访问","siteshot":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/%E5%B1%8F%E5%B9%95%E6%88%AA%E5%9B%BE%202025-08-27%20194512.jpg"},{"name":"ThisClover","link":"https://cover.weizwz.com/","avatar":"https://cover.weizwz.com/_next/image?url=%2Flogo.png&w=64&q=75","descr":"开源的博客、视频封面生成器","siteshot":"https://cdn.sumi233.top/gh/huang233893/blog-image-bed@main/top/huang233893/imgs/blog/Thiscloverpages.jpg"}];
    var refreshNum = 1;
    function friendChainRandomTransmission() {
      const randomIndex = Math.floor(Math.random() * friend_link_list.length);
      const { name, link } = friend_link_list.splice(randomIndex, 1)[0];
      Snackbar.show({
        text:
          "点击前往按钮进入随机一个友链，不保证跳转网站的安全性和可用性。本次随机到的是本站友链：「" + name + "」",
        duration: 8000,
        pos: "top-center",
        actionText: "前往",
        onActionClick: function (element) {
          element.style.opacity = 0;
          window.open(link, "_blank");
        },
      });
    }
    function addFriendLinksInFooter() {
      var footerRandomFriendsBtn = document.getElementById("footer-random-friends-btn");
      if(!footerRandomFriendsBtn) return;
      footerRandomFriendsBtn.style.opacity = "0.2";
      footerRandomFriendsBtn.style.transitionDuration = "0.3s";
      footerRandomFriendsBtn.style.transform = "rotate(" + 360 * refreshNum++ + "deg)";
      const finalLinkList = [];
  
      let count = 0;

      while (friend_link_list.length && count < 3) {
        const randomIndex = Math.floor(Math.random() * friend_link_list.length);
        const { name, link, avatar } = friend_link_list.splice(randomIndex, 1)[0];
  
        finalLinkList.push({
          name,
          link,
          avatar,
        });
        count++;
      }
  
      let html = finalLinkList
        .map(({ name, link }) => {
          const returnInfo = "<a class='footer-item' href='" + link + "' target='_blank' rel='noopener nofollow'>" + name + "</a>"
          return returnInfo;
        })
        .join("");
  
      html += "<a class='footer-item' href='/link/'>更多</a>";

      document.getElementById("friend-links-in-footer").innerHTML = html;

      setTimeout(()=>{
        footerRandomFriendsBtn.style.opacity = "1";
      }, 300)
    };