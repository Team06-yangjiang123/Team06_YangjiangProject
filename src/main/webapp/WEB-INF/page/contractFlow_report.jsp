<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/5
  Time: 下午3:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科研项目合同推荐申报</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="../../js/jquery.cookie.js" type="text/javascript"></script>
    <style type="text/css">
        table{
            font-size: small;
            font-family: "Heiti SC";
            background-color:aliceblue;
            width: 100%;
        }

        td {
            width: auto;
            padding: 5px;
        }

        /*input {*/
            /*width: 100%;*/
            /*height: 100%;*/
        /*}*/

        .t {
            text-align: right;
            width: 90px;
        }

        span {
            color: red;
        }
        .title1{
            background: linear-gradient(#e1f5ff, #c9eaff, #cbe1ff);
            padding: 10px;
        }
    </style>
</head>
<body>
<div id="form1">
    <table>
        <tr>
            <td colspan="4">当前位置:科研项目合同推荐申报</td>

        </tr>
        <tr>
            <td colspan="4" class="title1">申请信息</td>
        </tr>
        <tr>
            <td class="t">合同名称<span>*</span></td>
            <td style="width: 40%">
                <input type="text" name="pName" class="mini-textbox" style="width: 90%">
            </td>
            <td class="t">合同编号<span>*</span></td>
            <td>
                <input type="text" name="pName" class="mini-textbox" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td class="t">合同对方信息<span>*</span></td>
            <td>
                <input type="text" name="pName" class="mini-textbox" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td class="t">合同起日期<span>*</span></td>
            <td>
                <input id="date1" class="mini-datepicker" value="2018-01-01"/>
            </td>
            <td class="t">合同止日期<span>*</span></td>
            <td>
                <input id="date2" class="mini-datepicker" value="2018-01-01"/>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="title1">合同经费信息</td>
        </tr>
        <tr>
            <td class="t">总费用</td>
            <td>
                <input type="text" name="pName" class="mini-textbox" style="width: 90%">
            </td>
            <td class="t">对方拨付</td>
            <td>
                <input type="text" name="pName" class="mini-textbox" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td class="t">公司自筹</td>
            <td>
                <input type="text" name="pName" class="mini-textbox" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td colspan="4" class="title1">项目成果分配</td>
        </tr>
        <tr>
            <td class="t">产品形式</td>
            <td colspan="3"  style="background-color: white;">
            <input type="checkbox">专题报告
            <input type="checkbox">技术方案
            <input type="checkbox">技术标准
            <input type="checkbox">硬件产品
            <input type="checkbox">生产性文件
            <input type="checkbox">设计文件
            <input type="checkbox">软件产品
            <input type="checkbox" id="other" traget="other1">其他<input id="other1" type="text" style="border: 0px;border-bottom: 1px solid black;width: 50px">
            </td>
        </tr>
        <tr>
            <td class="t">形成的知识产权及分配方式</td>
            <td colspan="3">
                <input name="" class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="t">直接经济效益及分配方式</td>
            <td colspan="3">
                <input name="" class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="t">形成的固定资产及分配方式</td>
            <td colspan="3">
                <input name="" class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="t">合同运作情况简介</td>
            <td colspan="3">
                <input name="" class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="t">运作说明</td>
            <td>
                <div id="upload">
                    <input class="mini-htmlfile" name="Fdata" style="width:90%;" />
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="title1">流程信息</td>
        </tr>
        <tr>
            <td class="t">技术部经理</td>
            <td>
                <input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit" name="a" textName="b"style="width: 100%"
                       allowInput="false"/>
            </td>
        </tr>
        <tr>
            <td colspan="4">
                <div style="text-align: right">
                <input type="submit" value="提交">
                </div>
            </td>
        </tr>
    </table>
</div>
<script>

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


    function onButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/technicalManager",
            title: "选择技术部经理",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.cid);
                        btnEdit.setText(data.cname);
                    }
                }
            }
        });
    }


    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
        //form.setIsValid(false);
    }
</script>
</body>
</html>
