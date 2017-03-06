//imgList:一个图片的地址列表
//onload：function 类型，图片成功加载后触发
//onError:function 类型，图片加载失败时触发
//complete:function类型,每个图片都请求动作完成后触发，请求动作完成不等同于请求成功，图片没有请求到也认为动作完成
function imgLoading(imgList, events) {
    var len = imgList.length;
    var num = 0;
    for (var i = 0; i < len; i++) {
        var img = new Image();
        img.onload = function() {
                num = num + 1;
            var percent = num / len * 100;
            events.onload.call(this, percent);
            if(num === imgList.length){
                    events.complete();
                }
        };
        img.onerror = function(){
            num = num +1;
            events.onError && events.onError.call(this);

            if(num === imgList.length){
                events.complete();
            }
        }
        img.src = imgList[i];

    }
}

imgLoading(imgList, {
    onload: function(percent) {
        $('.progress_bar').find('.percent').html(percent.toFixed(0)+'%');
        $('.progress_bar').find('.bar').css('width',percent+'%');
        $('.progress_bar').find('#j-hb').css('margin-left',percent+'%');
        $('.J-loading-show').hide();
    },
    onError: function() {
        console('图片加载失败：'+this.src);
    },
    complete:function(){
        $('#M-loading').hide();
        $('.J-loading-show').fadeIn(300);
    }
});