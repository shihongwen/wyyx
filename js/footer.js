//加载尾部信息
$(() => {
  $.ajax({
    type:'get',
    url:'footer.html'
  }).then(html=>{
    $('#footer').html(html);
  })
});