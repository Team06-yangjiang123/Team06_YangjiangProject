<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2018/2/6
  Time: 上午11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>承接外部科技项目申报</title>

    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />


    <script src="../../scripts/boot.js" type="text/javascript"></script>

    <style>
        table{
            width: 100%;
            height: 100%;
        }
        td{
            border: 1px solid #a8d4fa;
            padding: 0px;
        }
        .tdName{
            width: 10%;
            background-color: #d9eefa;
            text-align: right;
        }
    </style>

</head>
<body>

<div style="width: 100%;height: 90%">

<div style="width: 100%;height: 3%;background: linear-gradient(#c9eeff,#c5e1ff,#dbf1ff)">
    <img src="../../img/position.png" style="width: 15px;height: 15px">&nbsp;<span style="font-size: 10px">当前位置：承接外部科技项目申报</span>
</div>
<div class="mini-panel" title="项目基本信息" style="width:100%;height:29%;background-color: #00adee"
     showCollapseButton="true" bodyStyle="padding:0;"
     expanded="false">

    <table>
        <tr>
            <td class="tdName" style="height: 10%">项目名称<span style="color: red">※</span></td>
            <td colspan="3"><input type="text" style="background-color: #ffd2ca;width: 40%"></td>
        </tr>
        <tr style="height: 15%;">
            <td class="tdName">项目来源<span style="color: red">※</span></td>
            <td colspan="3">
                <input type="radio">政府部门____
                <input type="radio">行业协会____
                <input type="radio">集团____
                <input type="radio">其他____
            </td>
        </tr>
        <tr style="height: 10%">
            <td class="tdName">申报单位<span style="color: red">※</span></td>
            <td><input type="text" style="width: 70%;height: 100%"></td>
            <td class="tdName">联合申报单位</td>
            <td><input type="text" style="width: 70%;height: 100%"></td>
        </tr>
        <tr style="height: 20%">
            <td class="tdName" style="height: 100%">应用方向<span style="color: red">※</span></td>
            <td colspan="3"><textarea class="mini-textarea" style="width: 100%;height: 100%"></textarea></td>
        </tr>
    </table>

</div>
    <div class="mini-panel" title="项目成果" style="width:100%;height:42%;"
         showCollapseButton="true" bodyStyle="padding:0;"
         expanded="false">

        <table>
            <tr style="height: 20%">
                <td class="tdName">成果应用<span style="color: red">※</span></td>
                <td colspan="3"><textarea class="mini-textarea" style="width: 100%;height: 100%"></textarea></td>
            </tr>
            <tr>
                <td class="tdName">产品形式<span style="color: red">※</span></td>
                <td colspan="3">
                    <input type="checkbox">专题报告
                    <input type="checkbox">技术方案
                    <input type="checkbox">技术标准
                    <input type="checkbox">硬件产品
                    <input type="checkbox">生产性文件
                    <input type="checkbox">设计文件
                    <input type="checkbox">软件产品
                    <input type="checkbox">其他<input type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
                </td>
            </tr>
            <tr style="height: 20%">
                <td class="tdName">预计知识产权<span style="color: red">※</span></td>
                <td colspan="3"><textarea class="mini-textarea" style="width: 100%;height: 100%"></textarea></td>
            </tr>
            <tr style="height: 20%">
                <td class="tdName">预计经济效益<span style="color: red">※</span></td>
                <td colspan="3"><textarea class="mini-textarea" style="width: 100%;height: 100%"></textarea></td>
            </tr>
            <tr style="height: 20%">
                <td class="tdName">形成固定资产<span style="color: red">※</span></td>
                <td colspan="3"><textarea class="mini-textarea" style="width: 100%;height: 100%"></textarea></td>
            </tr>
        </table>
    </div>
    <div class="mini-panel" title="预算信息" style="width:100%;height:13%;"
         showCollapseButton="true" bodyStyle="padding:0;"
         expanded="false">

        <table>
            <tr>
                <td class="tdName">总预算<span style="color: red">※</span></td>
                <td><input type="text" style="width: 70%;height: 100%"></td>
                <td class="tdName">外部经费</td>
                <td><input type="text" style="width: 70%;height: 100%"></td>
            </tr>
            <tr>
                <td class="tdName">公司经费<span style="color: red">※</span></td>
                <td colspan="3"><input type="text" style="width: 31%;height: 100%"></td>
            </tr>
        </table>

    </div>
    <div class="mini-panel" title="流程信息" style="width:100%;height:12%;"
         showCollapseButton="true" bodyStyle="padding:0;"
         expanded="false">

        <table>
            <tr>
                <td class="tdName">技术部经理<span style="color: red">※</span></td>

                <td colspan="3">
                    <input type="text" style="width: 31%;height: 100%">
                </td>
            </tr>
            <tr>
                <td colspan="4" style="text-align: right;background: linear-gradient(#cee2ff,#a8cdff,#ced7ff)"><a class="mini-button">提交</a></td>
            </tr>
        </table>
    </div>

</div>
<script type="text/javascript">
    mini.parse();


</script>

</body>
</html>
