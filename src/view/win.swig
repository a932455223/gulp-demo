{% extends 'partial/_layout.swig' %}
{% block content %}

<aside class="mask" id="M-guid"  title="规则弹框">
  <img src="../images/guid.png" alt="" class="close-mask">
  <div class="close-btn close-mask"></div>
  <div class="mask-bg close-mask"></div>
</aside>

<section class="wrap">
  <header class="header" style="height: 7rem">
     <div class="logo atom"><img src="../images/logo.png"></div>
      <div class="win-title atom"><img src="../images/win-title.png"></div>
     <div class="guid-btn abs-rt J-btn-guid">活动规则</div>
  </header>
  
  <!-- 体验金 -->
 <!--  <section class="container" >
    <div class="win-pz"><img src="../images/prize-2.png"></div>
    <h3 class="win-pz-tit"><p>您获得的奖品是</p><p style="margin-top:.25rem;color: #fed800;">金壶·宝疙瘩理财体验金一份</p></h3>

    <div class="form">
      <a class="btn" href=""><h1>领取体验金</h1></a>
    </div>

  </section>
 -->
  <!-- 现金红包或礼品展示内容 -->
  <section class="container"   style="display: no1ne" >
    <div class="win-pz"><img src="../images/prize-1.png"></div>
    <h3 class="win-pz-tit"><p>您获得的奖品是</p><p style="margin-top:.25rem;color: #fed800;"">精美礼品一份</p></h3>
    <div class="form">
      <div class="form-txt">
        <p>恭喜亲爱的 <b>lucid0e0</b> 获得精美礼品一份，</p>
        <p>请凭借中奖页面到现场工作人员领取。</p>
      </div>
      <a class="btn" href=""><h2>去理财平台逛逛有惊喜</h2></a>
    </div>
  </section>

{% include 'partial/_footer.swig' %}
{% endblock %}

    