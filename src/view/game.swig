{% extends 'partial/_layout.swig' %}
{% block content %}
<style>body{-webkit-background-position-y: -3rem;background-position-y: -3rem;}</style>

<aside class="mask" id="M-guid" title="规则弹框">
  <img src="../images/guid.png" alt="" class="close-mask">
  <div class="close-btn close-mask"></div>
  <div class="mask-bg close-mask"></div>
</aside>

<section class="wrap wrap-game">

  <header class="header header-game">
     <div class="logo atom"><img src="../images/logo.png"></div>
      <div class="title atom"><img src="../images/title.png"></div>
      <div class="guid-btn abs-rt J-btn-guid">活动规则</div>
  </header>

 <section class="container">
  <div class="ge-wrap">
    <div class="ge-box">
      <div class="hb hb-1"></div>
      <div class="hb hb-2"></div>
      <div class="hb hb-3"></div>
      <div class="hb hb-4"></div>
      <div class="baoxiang-open atom animated tada infinite" title="宝箱"></div>
      <div class="btn-game-start" title="开始游戏">
        <div class="start-btn"></div>
        <div class="btn-game-note">还剩:<b>30</b>次机会</div>
      </div>
    </div>
  </div>
 </section>


<article class="prz-list mt20" title="中奖名单">
  <div class="prz-list-box cent-block">
    <h1>中奖名单</h1>
    <ul class="prz-list-ulist">
      <li>
        <div class="uface imglazy"><span style="background-image: url(http://t.cn/Rtt0XX4);"></span></div>
        <div class="ucnt">
          <div class="uafter">5分</div>
          <div class="uinfo">
            <div class="utit">136****26363</div>
            <div class="usubtit">2016/09/09 13:12:12</div>
          </div>
        </div>
      </li>
      <li>
        <div class="uface imglazy"><span style="background-image: url(http://t.cn/Rtt0XX4);"></span></div>
        <div class="ucnt">
          <div class="uafter">5分</div>
          <div class="uinfo">
            <div class="utit">136****26363</div>
            <div class="usubtit">2016/09/09 13:12:12</div>
          </div>
        </div>
      </li>
      <li>
        <div class="uface imglazy"><span style="background-image: url(http://t.cn/Rtt0XX4);"></span></div>
        <div class="ucnt">
          <div class="uafter">5分</div>
          <div class="uinfo">
            <div class="utit">136****26363</div>
            <div class="usubtit">2016/09/09 13:12:12</div>
          </div>
        </div>
      </li>
      <li>
        <div class="uface imglazy"><span style="background-image: url(http://t.cn/Rtt0XX4);"></span></div>
        <div class="ucnt">
          <div class="uafter">5分</div>
          <div class="uinfo">
            <div class="utit">136****26363</div>
            <div class="usubtit">2016/09/09 13:12:12</div>
          </div>
        </div>
      </li>
      <li>
        <div class="uface imglazy"><span style="background-image: url(http://t.cn/Rtt0XX4);"></span></div>
        <div class="ucnt">
          <div class="uafter">5分</div>
          <div class="uinfo">
            <div class="utit">136****26363</div>
            <div class="usubtit">2016/09/09 13:12:12</div>
          </div>
        </div>
      </li>
    </ul>
  </div>
</article>

</section>

{% include 'partial/_footer.swig' %}
{% endblock %}