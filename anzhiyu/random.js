var posts=["2024/10/17/ACL基础/","2024/10/17/CCNP交换 Lay2 Switching and VLAN/","2024/10/17/DOD（TCP_IP）/","2024/10/17/EIGRP基础/","2024/10/17/CCNP交换 Trunk VTP and pVLAN/","2024/10/17/NAT基础/","2024/10/17/OSI基础/","2024/10/17/STP基础/","2024/10/17/RIP基础/","2024/10/17/Spanning Tree And More/","2024/10/17/OSPF基础/","2024/10/17/VLAN基础/","2024/10/17/VLSM&子网划分基础/","2024/10/17/WAN广域网 & PPP/","2024/07/13/hello-world/","2024/02/16/kiwi-downdate/","2024/10/17/静态路由+思科系统操作/","2024/10/17/帧中继FrameDelay/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };