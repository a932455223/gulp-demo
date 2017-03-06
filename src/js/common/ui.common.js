$(function () {
  $('.close-mask').click(function(event) {
    $(this).parents('.mask').removeClass('active')
  });
  $('#b1').click(function(event) {
   $('#a1').hide();
   $('#a2').show();
  });
  $('.J-btn-share').click(function(event) {
    $('#M-share').addClass('active')
  });
    $('.J-btn-guid').click(function(event) {
    $('#M-guid').addClass('active')
  });
  $('.start-btn').mouseover(function(event) {
    $(this).addClass('active')
  });
/**
  *
  * 数据模拟123i
  *
  **/
  var mock = $('[data-mock]')
  mock.each(function(){
    var count = this.dataset.mock;
     var p = $(this).parent();
     var index = p.children().index(this);
      var f = p.children().eq(index);
      var cnt = f.prop("outerHTML");
        for(var i =0;i<count;i++){
        f.after(cnt);
      } 
  });

})


    
$.fn.addClassTransitioin = function(classnames) { //多个类名用空格
    $(this).each(function() {
        var $this = $(this);
        $this.css('display', 'block');
        $this.off('webkitTransitionEnd');
        setTimeout(function() {
            $this.addClass(classnames);
        },20);
    });
}

$.fn.removeClassTransitioin = function(classnames,duration) { //多个类名用空格
    $(this).each(function() {
        var $this = $(this);
        $this.removeClass(classnames);
        $this.one('webkitTransitionEnd', function() {
            $this.css('display', 'none');
        });
    });
}