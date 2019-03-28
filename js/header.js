$(() => {
  // 加载头部信息
  $.ajax({
    type:'get',
    url:'header.html'
  }).then(html=>{
    let $header=$("#header");
    $header.html(html);
    // 下拉框效果
    $("[data-toggle=dropdown]").mouseenter(function(){
      $(this).children("[data-toggle=dropdownList]").removeClass('hidden');
    });
    $("[data-toggle=dropdown]").mouseleave(function(){
      $(this).children("[data-toggle=dropdownList]").addClass('hidden');
    });

    // 公告滚动
    $this=$('[data-toggle=scroll]');
    let num=$this.children().length;
    let top=$this.attr("data-height");//每次移动的值
    let totalTop=top*num;
    let marginTop=parseInt($this.css('margin-top'));;
    let initTop=marginTop;//开始状态下的margin-top
    let timer=null;
    function moved(){
      $this.animate({marginTop:marginTop},500,() => {
        if(-marginTop>=totalTop-top){
          $this.css('margin-top',initTop);
        }
      });
    }
    // 启动定时器，调用动画
    timer=setInterval(() => {
      marginTop=parseInt($this.css('margin-top'));
      marginTop-=top;
      moved();
    },2000);
    // hover时关掉定时器
    $this.hover(
      () => {
        clearInterval(timer);
      },
      () => {
        timer=setInterval(() => {
          marginTop=parseInt($this.css('margin-top'));
          marginTop-=top;
          moved();
        },2000);
      }
    );
  })
});


