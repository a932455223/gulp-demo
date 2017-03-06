{% extends 'partial/_layout.swig' %}
{% block content %}
 <script>
    var imgList = [
    '../images/hb-loading.gif',
    '../images/guid.png',
    '../images/logo.png',
    '../images/title.png',
    '../images/home-jp.png',
    '../images/prize-1.png',
    '../images/prize-2.png',
    '../images/prize-3.png',
    '../images/bg.jpg',
    '../images/btn.png',
    '../images/hb-1.png',
    '../images/hb-2.png',
    '../images/hb-3.png',
    '../images/baoxiang-open.png',
    '../images/btn-game-start.png',
    ]
</script>

<aside class="mask active" id="M-loading"  title="加载弹框">
  <img src="../images/hb-loading.gif" alt="" style="display: none;">
  <div class="progress_bar">
        <div class="progress_inner">
            <div class="hb-loading " id="j-hb" style=""></div>
            <div class="bar"></div>
        </div>
        <div class="percent"></div>
    </div>
  <div class="mask-bg"></div>
</aside>

<aside class="mask" id="M-guid"  title="规则弹框">
  <img src="../images/guid.png" alt="" class="close-mask">
  <div class="close-btn close-mask"></div>
  <div class="mask-bg close-mask"></div>
</aside>

<section class="wrap J-loading-show">
  <header class="header">
     <div class="logo atom"><img src="../images/logo.png"></div>
      <div class="title atom animated zoomInDown"><img src="../images/title.png"></div>
      <div class="guid-btn abs-rt J-btn-guid">活动规则</div>
  </header>
 <section class="container">
  <div class="home-jp">
    <header class="home-jp-tit atom"><img src="../images/home-jp.png" alt=""></header>
    <!-- 奖品 -->
    <ul class="pz-group">
      <li class="pz-1 animated bounceIn">
        <div class="pz-img"><img src="../images/prize-1.png"></div>
        <div class="pz-info"><h1>精美礼品</h1><p>数量：若干</p></div>
      </li>
      <li class="pz-1 animated bounceIn">
        <div class="pz-img"><img src="../images/prize-2.png"></div>
        <div class="pz-info"><h1>宝疙瘩体验金</h1><p>数量：若干</p></div>
      </li>
      <li class="pz-1 animated bounceIn">
        <div class="pz-img"><img src="../images/prize-3.png"></div>
        <div class="pz-info"><h1>现金红包</h1><p>数量：若干</p></div>
      </li>
    </ul>
  </div>
</section>
<a class="btn btn-start atom animated infinite pulse" href="game.html"><h1>开始游戏</h1></a>
</section>

{% include 'partial/_footer.swig' %}
{% endblock %}