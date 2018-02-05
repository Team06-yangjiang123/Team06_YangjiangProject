<%--
  Created by 蓝鸥科技有限公司  www.lanou3g.com.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>首页</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="../../scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        .header {
            background: url(../../img/header.gif) repeat-x 0 -1px;
        }

    </style>
</head>
<body style="background-color: #0b549a">

<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
    <div class="header" region="north" height="55%" showSplit="false" showHeader="false">
        <img src=../../img/pagerHeard.png style="position: absolute;width: 100%;height: 100%">
        <img src="../../img/user.png" style="width: 20px;height: 20px;position: absolute;z-index: 2; left: 55%;top: 7%">
        <span style="position: absolute;z-index: 2;font-size: 10px;left: 56.5%;top: 7%;">当前用户：${"#"}</span>

        <img src="../../img/off.png" style="width: 16px;height: 16px;position: absolute;z-index: 2; left: 84%;top: 7%">
        <span style="position: absolute;left: 85.7%;top: 7%;z-index: 2"><a href="#" style="font-size: 10px;text-decoration: none;color: #0b93d9">退出登录</a></span>

        <img src="../../img/service.png" style="width: 20px;height: 20px;position: absolute;z-index: 2; left: 90%;top: 7%">
        <span style="position: absolute;left: 91.5%;top: 7%;z-index: 2"><a href="#" style="font-size: 10px;text-decoration: none;color: #529bff">联系客服妹妹</a></span>
    </div>
    <div title="south" region="south" showSplit="false" showHeader="false" height="30">
        <div style="line-height:28px;text-align:center;cursor:default">Copyright © 蓝鸥科技有限公司版权所有</div>
    </div>
    <div showHeader="false" region="west" width="180" maxWidth="250" minWidth="100">
        <!--OutlookMenu-->
        <div id="leftTree" class="mini-outlookmenu"
             url="../../data/menu.txt"
             onitemselect="onItemSelect"
             idField="id" parentField="pid"
             textField="text"
             borderStyle="border:0"
             style="background: linear-gradient(#a4c9ff,#77c2ff,#78beff,#c7e1ff)">
        </div>

    </div>
    <div title="center" region="center" bodyStyle="overflow:hidden;">
        <iframe id="mainframe" frameborder="0" name="main" style="width:100%;height:100%;" border="0"></iframe>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    //init iframe src
    var iframe = document.getElementById("mainframe");
    iframe.src = "/welcome";

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }
</script>

</body>
</html>