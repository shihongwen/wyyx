//加载数据
$(() => {
  let pid=location.search.split("=")[1];//"?lid=1"
  $.ajax({
    type:'post',
    url:'data/product/getProductById.php',
    data:'pid='+pid
  }).then(data=>{
    let html='';
    let picList=data.pic;
    html+=`<div class="mediumDiv">
            <img class="mImg" src="${picList[0].md}"/>
            <div class="mask"></div>
            <div class="superMask"></div>
          </div>
          <div class="largeDiv"></div>
          <ul class="img-list">`;
    for(let item of picList){
      html+=`<li class="i1">
              <img src="${item.sm}"
                   data-md="${item.md}"
                   data-lg="${item.lg}">
            </li>`;
    }
    html+='</ul>';
    $('div.item-intro div.item-img').html(html);
    $('ul.img-list li:first-child').addClass('checked');

    //放大镜
    let $largeDiv=$('div.item-img div.largeDiv');
    let $mask=$('div.item-img div.mask');
    let $superMask=$('div.item-img div.superMask');
    $superMask.mouseenter(function(e){
      $mask.show();
      $largeDiv.show();

    });
    $superMask.mouseleave(function(){
      $mask.hide();
      $largeDiv.hide();
    });
    let maskWidth=230,superMask=430,largImg=600;
    $superMask.mousemove(function(e){
      //让mask在superMask中移动
      let offsetX=e.offsetX;
      let offsetY=e.offsetY;
      //让鼠标一直在mask的中心位置
      let top=offsetY-maskWidth/2;
      let left=offsetX-maskWidth/2;
      let max=superMask-maskWidth;
      top=top<0?0:top>max?max:top;
      left=left<0?0:left>max?max:left;
      $mask.css({
        'top':top,
        'left':left
      });
      let largeTop=-top*((largImg-superMask)/max);
      let largeLeft=-left*((largImg-superMask)/max);

      $('div.item-img div.largeDiv')[0].style.backgroundPosition=largeLeft+'px '+largeTop+'px';
    });

    // 点击小图片
    $('ul.img-list').on('click',function (event) {
      let target=event.target;
      if(target.nodeName=='IMG'){
        // 中图片显示对应图片
        $('div.mediumDiv img.mImg').attr('src',target.dataset.md);
        //largDiv的背景图片变为data-lg 的内容
        $('div.item-img div.largeDiv')[0].style.backgroundImage=`url(${target.dataset.lg})`;
        $(target).parent().addClass('checked').siblings().removeClass('checked');
      }
    });

    //商品信息
    let product=data.product;
    html=`<div class="item-name lf">
              <p class="name">${product.title}</p>
              <p class="desc">${product.subtitle}</p>
            </div>
            <div class="comment rt">
              <p class="percent">${product.rate}%</p>
              <a href="#">好评率 &gt;</a>
            </div>`;
    $('div.item-info div.item-desc').html(html);

    //产品价格
    html=`<div class="price">
              <span class="label lf">价格</span>
              <p class="content clear">
                <span class="rp">
                  <span class="yuan">¥</span>
                  <span class="num">${product.saleprice}</span>
                </span>
                <span class="text">
                  <i class="superMember"></i>
                  <span>超级会员专享价¥${product.vip_price}</span>
                  <a href="#">立即开通 &gt;</a>
                </span>
              </p>
            </div>
            <div class="text">使用严选APP购买，仅需 ¥${product.app_price}</div>
            <!--领取优惠券-->
            <div class="getcoupon clear">
              <span class="label lf">领券</span>
              <ul class="coupons">
                <li class="coupon">
                  <span class="coupon-name">每满229减20</span>
                  <i class="coupon-sep"></i>
                  <span class="status">领取</span>
                </li>
              </ul>
            </div>
            <!--积分-->
            <div class="pointInfo">
              <span class="label">积分</span>
              <span class="text">购买最高得${product.point}积分</span>
            </div>
            <!--服务-->
            <div class="service clear">
              <span class="label lf">服务</span>
              <div class="content clear">
                <div class="service-item">
                  <span>·</span>
                  <span>支持30天无忧退换货</span>
                  <span>&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="service-item">
                  <span>·</span>
                  <span>48小时快速退款</span>
                  <span>&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="service-item">
                  <span>·</span>
                  <span>满88元免邮费</span>
                  <span>&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="service-item">
                  <span>·</span>
                  <span>网易自营品牌</span>
                  <span>&nbsp;&nbsp;&nbsp;</span>
                </div>
                <div class="service-item">
                  <span>·</span>
                  <span>国内部分地区无法配送</span>
                  <span>&nbsp;&nbsp;&nbsp;</span>
                </div>
              </div>
            </div>`;
    $('div.item-info div.item-price').html(html);

    //产品颜色选择
    html='';
    let xspicList=data.xs_pic;
    for(let xspic of xspicList){
      html+=`<li>
                <img src="${xspic.xs}">
                <i class="checked-icon"></i>
              </li>`;
    }
    $('div.item-info ul.cont').html(html);
    $('div.item-info ul.cont li:first-child').addClass('checked');

    //选择颜色
    $('div.item-detail div.item-color ul.cont li').click(function(){
      $(this).addClass('checked').siblings().removeClass('checked');
    });

    //产品细节加载
    $('div.detail-hot div.detail-html').html(product.details);
  });
});

//你可能还喜欢产品滚动
$(() => {
  //父元素(div.items)宽度为960 ==>WIDTH
  // li 的margin-left是24===>OFFSET
  // 默认每页显示4条产品===>PAGESIZE
  const WIDTH=960,OFFSET=24,PAGESIZE=4;
  let pages=3;//总共3页  应该是用总条数/PAGESIZE  此处自己指定了
  let pno=0;//当前显示的页码 从0开始，因为初始时 margin-left:0
  let timer=null;
  function scroll(){
    $(`div.may-love ul.dot-list li:eq(${pno})`)
      .addClass('hover').siblings().removeClass('hover');
    $('div.may-love ul.item-list').animate({
      'margin-left':(-WIDTH+24)*pno
    },600,function () {
      if(pno>=pages){
        pno=0;
        $('div.may-love ul.item-list').css('margin-left',0);
      }
      $(`div.may-love ul.dot-list li:eq(${pno})`)
        .addClass('hover').siblings().removeClass('hover');
    });
  }
  timer=setInterval(function(){
    pno++;
    scroll(pno);
  },3000);
  //页码滑动事件
  $('div.may-love ul.dot-list li').hover(
    // 鼠标移入
    function (){
      $(this).addClass('hover').siblings().removeClass('hover');
      clearInterval(timer);
      pno=$(this).index();
      scroll(pno);
    },
    // 鼠标移出
    function(){
      $(this).removeClass('hover');
      timer=setInterval(function(){
        pno++;
        scroll(pno);
      },3000);
    }
  );
  //左右两个按钮事件
  $('div.may-love i.icon-arrow').click(function(){
    clearInterval(timer);
    if(this.className.indexOf('prev')!=-1){
      pno--;
    }else if(this.className.indexOf('next')!=-1){
      pno++;
    }
    if(pno<0){
      pno=pages-1;
    }else if(pno>=pages){
      pno=0;
    }
    scroll();
    timer=setInterval(function(){
      pno++;
      scroll(pno);
    },3000);
  })
});
