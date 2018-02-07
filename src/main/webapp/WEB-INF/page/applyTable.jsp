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
            height: 80%;
            border: 1px solid #a8d9ff;

        }
        td{
            border: 1px solid #b5e3ff;
            collapse: 0;
        }
        .tdName{
            width: 10%;
            text-align: right;
            background-color: #beeaff;
            font-size: 13px;
        }
        .fonts{
            font-size: 13px;
        }
    </style>

</head>
<body>

<table  cellspacing="0" cellpadding="0">
    <tr>
        <td colspan="4" style="height: 5%;background: linear-gradient(#d7f1ff,#c0c3ff,#dcedff)">
           <img src="../../img/position.png" style="width: 15px;height: 15px">&nbsp;<span style="font-size: 10px">当前位置：承接外部科技项目申报</span>
        </td>
    </tr>
    <tr>
        <td colspan="4" style="height: 5%;background: linear-gradient(#d7f1ff,#8cb7ff,#dcedff)">
            <span style="font-size: 10px">&nbsp;&nbsp;&nbsp;项目基本信息</span>
        </td>
    </tr>
    <tr>
        <td class="tdName" style="height: 5%">项目名称<span style="color: red">※</span></td>
        <td colspan="3" style="background: white"><input class="mini-textbox" required="true" style="background-color: #f9fffd;width: 40%;height: 100%"></td>
    </tr>
    <tr style="height: 5%;">
        <td class="tdName">项目来源<span style="color: red">※</span></td>
        <td colspan="3" style="background-color: white;">
            <input type="radio"><span class="fonts">政府部门</span><input type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
            <input type="radio"><span class="fonts">行业协会</span><input type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
            <input type="radio"><span class="fonts">集团</span><input type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
            <input type="radio"><span class="fonts">其他</span><input type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
        </td>
    </tr>
    <tr style="height: 4%">
        <td class="tdName">申报单位<span style="color: red">※</span></td>
        <td style="width: 40%;background-color: white"><input class="mini-textbox" required="true" style="width: 70%;height: 100%"></td>
        <td class="tdName">联合申报单位</td>
        <td style="background-color: white"><input class="mini-textbox" required="true" style="width: 70%;height: 100%;background-color: white"></td>
    </tr>
    <tr style="height: 10%">
        <td class="tdName">应用方向<span style="color: red">※</span></td>
        <td colspan="3"><textarea class="mini-textarea" required="true" style="width: 100%;height: 100%"></textarea></td>
    </tr>

    <tr>
        <td colspan="4" style="height: 5%;background: linear-gradient(#d7f1ff,#8cb7ff,#dcedff)">
             <span style="font-size: 10px">项目成果</span>
        </td>
    </tr>
    <tr style="height: 5%">
        <td class="tdName">成果应用<span style="color: red">※</span></td>
        <td colspan="3"><textarea class="mini-textarea" required="true" style="width: 100%;height: 100%"></textarea></td>
    </tr>
    <tr>
        <td class="tdName">产品形式<span style="color: red">※</span></td>
        <td colspan="3"  style="background-color: white;">
            <input type="checkbox"><span class="fonts">专题报告</span>
            <input type="checkbox"><span class="fonts">技术方案</span>
            <input type="checkbox"><span class="fonts">技术标准</span>
            <input type="checkbox"><span class="fonts">硬件产品</span>
            <input type="checkbox"><span class="fonts">生产性文件</span>
            <input type="checkbox"><span class="fonts">设计文件</span>
            <input type="checkbox"><span class="fonts">软件产品</span>
            <input type="checkbox" id="other" traget="other1"><span class="fonts">其他</span><input id="other1" type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
        </td>
    </tr>
    <tr style="height: 5%">
        <td class="tdName">预计知识产权<span style="color: red">※</span></td>
        <td colspan="3"><textarea class="mini-textarea" required="true" style="width: 100%;height: 100%"></textarea></td>
    </tr>
    <tr style="height: 5%">
        <td class="tdName">预计经济效益<span style="color: red">※</span></td>
        <td colspan="3"><textarea class="mini-textarea" required="true" style="width: 100%;height: 100%"></textarea></td>
    </tr>
    <tr style="height: 5%">
        <td class="tdName">形成固定资产<span style="color: red">※</span></td>
        <td colspan="3"><textarea class="mini-textarea" required="true" style="width: 100%;height: 100%"></textarea></td>
    </tr>

    <tr>
        <td colspan="4" style="height: 5%;background: linear-gradient(#d7f1ff,#8cb7ff,#dcedff)" >

            <span style="font-size: 10px">预算信息</span>

        </td>
    </tr>
    <tr>
        <td class="tdName">总预算<span style="color: red">※</span></td>
        <td style="background-color: white"><input class="mini-textbox" required="true" style="width: 70%;height: 100%"></td>
        <td class="tdName">外部经费</td>
        <td style="background-color: white"><input class="mini-textbox" required="true" style="width: 70%;height: 100%"></td>
    </tr>
    <tr>
        <td class="tdName">公司经费<span style="color: red">※</span></td>
        <td colspan="3" style="background-color: white"><input class="mini-textbox" required="true" style="width: 31%;height: 100%"></td>
    </tr>

    <tr>
        <td colspan="4" style="height: 5%;background: linear-gradient(#d7f1ff,#8cb7ff,#dcedff)">

            <span style="font-size: 10px">流程信息</span>

        </td>
    </tr>
    <tr style="height: 4%">
        <td class="tdName">技术部经理<span style="color: red">※</span></td>

        <td colspan="3" style="background-color: white">
            <input class="mini-textbox" required="true" style="width: 31%;height: 100%">
        </td>
    </tr>
    <tr>
        <td colspan="4" style="text-align: right;background: linear-gradient(#cee2ff,#a8cdff,#ced7ff)"><a class="mini-button">提交</a></td>
    </tr>


</table>


<script src="../../js/jquery-3.2.1.js" type="text/javascript"></script>
<script type="text/javascript">
    mini.parse();


    $(document).ready(function () {


        $(function(){
            $("#other").bind("click",function(){
                if(this.checked == false){
                    $("#"+$(this).attr("traget")).hide();
                }else{
                    $("#"+$(this).attr("traget")).show();
                }

            })
        });


    });

</script>

</body>
</html>
