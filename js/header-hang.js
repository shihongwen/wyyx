$(
  // 加载header-hang
  $.ajax({
    type:'get',
    url:'header-hang.html'
  }).then(data=>{
    $('#header-hang').html(data);
    //用户中心鼠标hover事件
    $('div.header-hang ul.header-hang-icons li.user').hover(
      function(){
        $(this).children('.header-hang-user-pop').show();
      },
      function(){
        $(this).children('.header-hang-user-pop').hide();
      }
    )
    //导航列表的hover事件
    $('ul.header-hang-nav li.header-hang-nav-pop').hover(
      function(){
        $(this).children('div.header-hang-nav-box')
          .css('display','flex')
          .animate({'opacity':'1'},.5);
      },
      function(){
        $(this).children('div.header-hang-nav-box')
          .animate({'opacity':'0'},.5,function(){
            let opc=$(this).css('opacity');
            if(opc<=0){
              $(this).hide();
            }
          });
      }
    )
  })
);
//悬浮的头部设置
$(() => {
  $(window).scroll(() => {
    let top = $(this).scrollTop();
    if (top >= 150) {
      $('#header-hang').css('margin-top', 0).css('z-index', 20);
    } else {
      $('#header-hang').css('margin-top', -50);
    }
  });
});