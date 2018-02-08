<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2018/2/7
  Time: 下午5:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人工作台</title>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />

    <script src="../../scripts/boot.js" type="text/javascript"></script>

    <style>
        .header {
            background: url(../../img/header.gif) repeat-x 0 -1px;
        }

    </style>
</head>
<body>


<div id="layout1" class="mini-layout" style="width:100%;height:100%;"  borderStyle="border:solid 1px #aaa;">
    <div title="north" region="north" height="80" showSplitIcon="true" showHeader="false">
        <img src="../../img/pagerHeard.png" style="width: 100%;height: 100%">
    </div>

    <div title="west" showProxyText="true" region="west" width="200" expanded="true" showSplitIcon="true" showHeader="false">
        <div id="leftTree" class="mini-outlookmenu" url="../../data/menu.txt" onitemselect="onItemSelect"
             idField="id" parentField="pid" textField="text" borderStyle="border:0">
        </div>
    </div>




</div>






<script type="text/javascript">
    mini.parse();


</script>


</body>
</html>
