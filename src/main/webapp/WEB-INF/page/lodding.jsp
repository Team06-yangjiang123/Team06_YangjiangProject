<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2018/2/8
  Time: 下午8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="refresh" content="9.6;/main">
    <title>进度条特效</title>
    <script type="text/javascript" src="../../js/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../../css/css.css" />
</head>
<body>

<div class="wrapper">
    <div class="load-bar">
        <div class="load-bar-inner" data-loading="0"> <span id="counter"></span> </div>
    </div>
    <h1>登录成功，正在加载系统</h1>
    <p style="font-size: 20px">请等待... </p>
</div>

<script type="text/javascript">
    $(function(){

        var interval = setInterval(increment,50);
        var current = 0;

        function increment(){
            current++;
            $('#counter').html(current+'%');
            if(current == 100) { current = 0; }
        }

        $('.load-bar').mouseover(function(){
            clearInterval(interval);
        }).mouseout(function(){
            interval = setInterval(increment,50);
        });

    });
</script>


</body>
</html>
