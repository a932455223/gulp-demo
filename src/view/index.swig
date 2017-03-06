{% extends 'partial/_layout.swig' %}
{% block content %}
	<style>
	  h4{margin: 0;}
	  body{font-size: .8rem;background-color: #fff;}
	  td{padding: .25rem}
	  a{color:blue;}
	</style>
  <div style="padding:1rem;max-width:18.75rem;margin: 0 auto;">
    <h1>Yeapoo Marketing Mobile <a href="../../admin/page/" style="font-size: 14px  ">切换到 Admin</a></h1>
    <br>
    <table class="table"  width="100%">
      <tbody>
        <tr><td colspan="1000"><h4>营销活动</h4> <small>campaign</small></td></tr>
        <tr>
          <td><input type="checkbox" checked></td>
          <td>欢迎页 </td><td><a href="home.html">home</a></td>
        </tr>
        <tr>
          <td><input type="checkbox" checked></td>
          <td>游戏页 </td><td><a href="game.html">game</a></td>
        </tr>
        <tr>
          <td><input type="checkbox" checked></td>
          <td>中奖</td><td><a href="win.html">win</a></td>
        </tr>
        <tr>
          <td><input type="checkbox" checked></td>
          <td>未中奖</td><td><a href="nowin.html">nowin</a></td>
        </tr>
        <tr>
          <td><input type="checkbox" checked></td>
          <td>活动未开始</td><td><a href="over.html">over</a></td>
        </tr>
      </tbody>
    </table>
</div>

{% include 'partial/_footer.swig' %}
{% endblock %}