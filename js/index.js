let targetTime = '2019/2/18 18:00:00';
// 加载轮播图广告
$(() => {
  $.ajax({
    type: 'get',
    url: 'data/index/getCarousel.php?category=carousel'
  }).then(data => {
    // 加载指定下标的图片和小圆点函数
    function loadCarousel(index) {
      let item = data[index];
      html = `<li>
          <a href="${item.href}">
            <img src="${item.img}" alt="${item.title}"/>
          </a>
        </li>`;
      $('#banner ul.banner-imgs').html(html).children('li').css('opacity', .5).animate({
        opacity: 1
      }, 500);

      // 小圆点更改样式
      $('#banner ul.banner-circle-list li').eq(index)
        .addClass('banner-circle-hover').siblings().removeClass('banner-circle-hover');
    }

    // 启动定时器函数
    function startCarousel(index) {
      let timer = setInterval(() => {
        loadCarousel(index++);
        if (index >= data.length)
          index = 0;
      }, 3000);
      return timer;

      ///////////////自动轮播效果
    }

    //加载小圆点列表
    let html = '';
    for (let i = 1; i <= data.length; i++) {
      html += `<li class="banner-circle">
          <i>${i}</i>
        </li>`
    }
    $('#banner>ul.banner-circle-list').html(html);
    //加载第一张图片
    loadCarousel(0);
    //开始轮播
    let timer = null;
    let moveInd = 1;//自动轮播的索引
    timer = startCarousel(moveInd);

    // 鼠标滑动到小圆点时，显示对应的图片
    $('#banner>ul.banner-circle-list li').hover(
      function () {
        clearInterval(timer);
        let index = $(this).index();//获得当前元素在其父元素下的索引
        loadCarousel(index);
      },
      function () {
        let index = $(this).index() + 1;//获得当前元素在其父元素下的索引
        timer = startCarousel(index);
      }
    );

    //prev按钮事件
    $('#banner button.banner-btn-prev').click(() => {
      let index = $('#banner ul.banner-circle-list li.banner-circle-hover').index();
      clearInterval(timer);
      index = index == 0 ? data.length - 1 : (--index);
      loadCarousel(index);
      index = (index == data.length - 1 ? 0 : (++index));
      timer = startCarousel(index);
    });
    //next按钮事件
    $('#banner button.banner-btn-next').click(() => {
      let index = $('#banner ul.banner-circle-list li.banner-circle-hover').index();
      clearInterval(timer);
      index = (index == data.length - 1 ? 0 : (++index));
      loadCarousel(index);
      index = (index == data.length - 1 ? 0 : (++index));
      timer = startCarousel(index);
    });

    //鼠标悬停时，停止定时器，离开时重新启动定时器
    $('#banner ul.banner-imgs').hover(
      () => {
        clearInterval(timer);
      },
      () => {
        let index = $('#banner ul.banner-circle-list li.banner-circle-hover').index();
        index = (index == data.length - 1 ? 0 : (++index));
        timer = startCarousel(index);
      }
    )
  });
});

//新品首发
$(() => {
  $.ajax({
    type: 'get',
    url: 'data/index/getRecommendProducts.php?category=new'
  }).then(data => {
    if (data == null) {
      return;
    }
    let html = '';
    //加载图片信息
    for (let item of data) {
      html += `<li>
            <a href="${item.href}">
              <div class="news-img img-current">
                <img src="${item.img}"/>
              </div>
              <div class="news-img img-hover">
                <img src="${item.hoverimg}"/>
              </div>
            </a>
            <div class="news-text">
              <div class="name">
                <a href="${item.href}">${item.name}</a>
              </div>
              <div class="price">
                <span class="sale-price">¥${item.saleprice}</span> `;
      if (item.counterprice != null && item.counterprice != 0) {
        html += `<span class="counter-pripce">¥${item.counterprice}</span>`;
      }
      html += `</div>
            </div>
          </li>`;
    }
    $('#news ul.news-list').html(html);

    // 左右两个按钮事件绑定
    const WIDTH = 1090;
    let $ul = $('#news ul.news-list');
    let pageSize = Math.ceil(data.length / 4);
    let totalWidth = WIDTH * pageSize;
    $('#news button.news-btn-prev').click(function () {
      let leftVal = parseFloat($ul.css('margin-left'));
      if (leftVal >= 0) {
        return;
      }
      $ul.css('margin-left', leftVal + WIDTH + 'px');
    });
    $('#news button.news-btn-next').click(function () {
      let leftVal = parseFloat($ul.css('margin-left'));
      if (-leftVal == (totalWidth - WIDTH)) {
        return;
      }
      $ul.css('margin-left', leftVal - WIDTH + 'px');
    });
  });
});

//人气推荐
$(() => {
  $.ajax({
    type: 'get',
    url: 'data/index/getRecommendProducts.php?category=recommend'
  }).then(data => {
    let html = '';
    for (let item of data) {
      let lev = item.lev;
      if (lev == 'big') {
        html += `<div class="recommend-big">
          <div class="recommend-img">
            <a href="${item.href}">
              <img src="${item.img}"/>
            </a>
          </div>
          <div class="recommend-text">`;
        if (item.tag != null && item.tag != '') {
          html += `<p class="tag"><span>${item.tag}</span></p>`;
        }
        html += `<p class="name">
              <a href="${item.href}">${item.name}</a>
            </p>
            <div class="price">`;
        if (item.saleprice != null && item.saleprice != 0) {
          html += `<span class="sale-price">¥${item.saleprice}</span>`;
        }
        html += `<span class="counter-pripce">¥${item.counterprice}</span>
            </div>
          </div>
        </div>`;
      }
    }
    html += '<ul class="recommend-list">';
    for (let item of data) {
      let lev = item.lev;
      if (lev != 'big') {
        html += `<li>
            <div class="recommend-img">
              <a href="${item.href}">
                <img src="${item.img}"/>
              </a>
            </div>
            <div class="recommend-text">`;
        if (item.tag != null && item.tag != '') {
          html += `<p class="tag"><span>${item.tag}</span></p>`;
        }
        html += `<div class="recommend-detail">
                <p class="name">
                  <a href="${item.href}">${item.name}</a>
                </p>
                <div class="price">
                  <span class="sale-price">¥${item.saleprice}</span>`;
        if (item.counterprice != null && item.counterprice != 0) {
          html += `<span class="counter-pripce">¥${item.counterprice}</span>`;
        }
        html += `</div>
              </div>
            </div>
          </li>`;
      }
    }
    html += '</ul>';
    $('#recommend div.recommend-main').html(html);
  })
});

//限时购
$(() => {
  function task() {
    let now = new Date();
    let target = new Date(targetTime);
    var s = (target - now) / 1000;
    var h = parseInt(s / 3600);
    if (h / 10 < 1) {
      h = '0' + h;
    }
    var m = parseInt((s % 3600) / 60);
    if (m / 10 < 1) {
      m = '0' + m;
    }
    s = parseInt(s % 60);
    if (s / 10 < 1) {
      s = '0' + s;
    }
    // console.log(h+":"+m+":"+s);
    $('#limitBuy div.limit-timer span.cd-hour').html(h);
    $('#limitBuy div.limit-timer span.cd-minute').html(m);
    $('#limitBuy div.limit-timer span.cd-second').html(s);
  }

  setInterval(task, 1000);
});

//首页楼层中banner
$(() => {
  $.ajax({
    type: 'get',
    url: 'data/index/getIndexFloorBanner.php?category=floor1'
  }).then(data => {
    //加载页码小圆点列表
    html = '';
    for (let item of data) {
      html += '<li></li>';
    }
    $('div.index-floor ul.floor-circle').html(html);

    //加载指定的图片和页码
    function load(index) {
      let item = data[index];
      html = `<li>
              <a href="${item.href}">
                <img src="${item.img}"/>
              </a>
            </li>`;
      $('div.index-floor ul.floor-banner').html(html).children('li')
        .css('opacity', 0.5).animate({'opacity': 1}, 600);
      $('div.index-floor ul.floor-circle').children('li')
        .eq(index).addClass('hover').siblings().removeClass('hover');
    }

    let moved = 0;//正在显示的图片
    load(moved);
    //prev和next按钮
    $('div.index-floor button.floor-btn').click(function () {
      if (this.className.indexOf('floor-btn-prev')!=-1) {
        moved--;
        if (moved < 0)
          moved = data.length - 1;
      }else if(this.className.indexOf('floor-btn-next')!=-1){
        moved++;
        if(moved>=data.length)
          moved=0;
      }
      load(moved);
    });

    //页码小圆点的hover
    $('div.index-floor ul.floor-circle li').hover(function(){
      let index=$(this).index();
      load(index);
    })
  })
});
