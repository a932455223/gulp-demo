{% extends 'partial/_layout.swig' %}
{% block content %}

<aside class="mask" id="M-guid"  title="规则弹框">
  <img src="../images/guid.png" alt="" class="close-mask">
  <div class="close-btn close-mask"></div>
  <div class="mask-bg close-mask"></div>
</aside>

<section class="wrap">
  <header class="header" style="height: 11rem">
     <div class="logo atom"><img src="../images/logo.png"></div>
      <div class="title atom animated zoomInDown"><img src="../images/title.png"></div>
      <div class="guid-btn abs-rt J-btn-guid">活动规则</div>
  </header>
  
  <!-- 一等奖 -->
  <section class="container" >
    <div class="qr-box">
      <div class="qr-box-img animated flipInX"><img src="../images/qrcode.jpg" alt=""></div>
      <div class="qr-box-note">
        <span></span><span></span><span></span><span></span>
        <img src="../images/finger.png" alt="" class="qr-img">
        <div class="qr-cnt">
          <p>长按图中二维码</p>
          <p>来 <b>参加活动</b></p>
        </div>
      </div>
    </div>
  </section>
</section>
<style>
.qr-box {text-align: center; }
.qr-box-img {width: 11.5rem; margin: 0 auto; background-color: #fff; box-shadow: 4px 5px 0px 0px rgba(0, 0, 0, 0.2); padding: 0.5rem; }
.qr-box-img img {display: block; }
.qr-box-note {color: #fff; display: inline-block; margin: 1.0rem 0 .5rem; padding: 1.25rem; position: relative; }
.qr-box-note:before, .qr-box-note:after {content: " "; display: table; }
.qr-box-note:after {clear: both; }
.qr-box-note > span {width: 1.0rem; height: 1rem; border-color: #fff; border-style: solid; border-width: 0; position: absolute; }
.qr-box-note > span:first-child {top: 0; left: 0; border-left-width: 1px; border-top-width: 1px; }
.qr-box-note > span:nth-child(2) {top: 0; right: 0; border-right-width: 1px; border-top-width: 1px; }
.qr-box-note > span:nth-child(3) {bottom: 0; right: 0; border-right-width: 1px; border-bottom-width: 1px; }
.qr-box-note > span:nth-child(4) {bottom: 0; left: 0; border-left-width: 1px; border-bottom-width: 1px; }
.qr-box-note .qr-img {width: 2.5rem; float: left; }
.qr-box-note .qr-cnt {margin-left: 3rem; text-align: left; }
.qr-box-note .qr-cnt p {margin: 0; font-size: 0.8rem; }
.qr-box-note .qr-cnt b {color: #F8EA63; }
</style>

{% include 'partial/_footer.swig' %}
{% endblock %}