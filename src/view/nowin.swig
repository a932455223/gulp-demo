{% extends 'partial/_layout.swig' %}
{% block content %}

<aside class="mask" id="M-guid"  title="规则弹框">
  <img src="../images/guid.png" alt="" class="close-mask">
  <div class="close-btn close-mask"></div>
  <div class="mask-bg close-mask"></div>
</aside>

<section class="wrap">
  <header class="header" style="height: 10rem">
     <div class="logo atom"><img src="../images/logo.png"></div>
      <div class="title atom animated zoomInDown"><img src="../images/title.png"></div>
      <div class="guid-btn abs-rt J-btn-guid">活动规则</div>
  </header>
  
  <section class="container">
    <div class="win-pz-tit">
      <h1 style="margin-top: 4rem">很遗憾!</h1>  
      <h1 class="mt10">您未中奖</h1>  
    </div>
    <a class="btn" href=""><h2>去理财平台逛逛有惊喜</h2></a>
  </section>


</section>

{% include 'partial/_footer.swig' %}
{% endblock %}