$(() => {
  $(window).scroll(function () {
    let top=$(this).scrollTop();
    if(top>=200){
      $('#fixedtool').show();
    }else{
      $('#fixedtool').hide();
    }
  });
  // 加载
  $.ajax({
    type:'get',
    url:'fixedtool.html'
  }).then(html=>{
    $('#fixedtool').html(html);
    // 立即订阅弹出框
    $('div.fixedtool div.fixedtool-subscribe').mouseenter(function(){
      $(this).children('div.dialog').show();
      console.log('移入');
    });
    $('div.fixedtool div.fixedtool-subscribe').mouseleave(function(){
      $(this).children('div.dialog').hide();
      console.log('移出');
    });
    // 回顶部
    $(window).scroll(function(){
        let top=$(this).scrollTop();
        if(top>=1000){
          $('div.fixedtool div.goTop').show();
        }else{
          $('div.fixedtool div.goTop').hide();
        }
    });
    $('div.fixedtool div.goTop').click(function(){
        $(window).scrollTop(0);
    });
  });
});