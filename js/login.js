$(() => {
  $('.box-header>span').click(function(){
    $(this).addClass('box-checked').siblings().removeClass('box-checked');
    let box=$(this).attr('data-toggle');
    if(box=='login-phone'){
      $('.login-box .login-phone').show();
      $('.login-box .login-email').hide();
    }else if(box=='login-email'){
      $('.login-box .login-phone').hide();
      $('.login-box .login-email').show();
    }
  });
});