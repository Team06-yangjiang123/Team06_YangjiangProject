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

        .t {
            text-align: right;
            width: 100px;
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
            <td>
                <input name="pName" class="mini-textbox" required="required" style="width: 90%">
            </td>
            <td class="t">合同编号<span>*</span></td>
            <td>
                <input name="pName" class="mini-textbox" required="required" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td class="t">合同对方信息<span>*</span></td>
            <td>
                <input name="pName" class="mini-textbox" required="required" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td class="t">合同起日期<span>*</span></td>
            <td>
                <input id="date1" format="yyyy-MM-dd" class="mini-datepicker" required="required" value="2018-01-01"/>
            </td>
            <td class="t">合同止日期<span>*</span></td>
            <td>
                <input id="date2" format="yyyy-MM-dd" class="mini-datepicker" required="required" value="2018-01-01"/>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="title1">合同经费信息</td>
        </tr>
        <tr>
            <td class="t">总费用</td>
            <td>
                <input name="pName" onvalidation="onValidation" vtype="float" required="required" class="mini-textbox" style="width: 90%">
            </td>
            <td class="t">对方拨付</td>
            <td>
                <input name="pName" vtype="float"  required="required" class="mini-textbox" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td class="t">公司自筹</td>
            <td>
                <input name="pName" vtype="float" required="required" class="mini-textbox" style="width: 90%">
            </td>
        </tr>
        <tr>
            <td colspan="4" class="title1">项目成果分配</td>
        </tr>
        <tr>
            <td class="t">产品形式</td>
            <td colspan="3">
                <div id="cbl1" class="mini-checkboxlist" onvalidation="isselect"
                     textField="text" valueField="id"
                     onclick="checkedInp"style="width: 100%"
                     data="[{'id':'1001','text':'专题报告'},
                 {'id':'1002','text':'技术方案'},
                 {'id':'1003','text':'技术标准'},
                 {'id':'1004','text':'硬件产品'},
                 {'id':'1005','text':'生产性文件'},
                 {'id':'1006','text':'设计文件'},
                 {'id':'1007','text':'计算机软件'},
                 {'id':'1008','text':'其他_____'},]">
                </div>
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
                <a onclick="" class="mini-button" style="color: black">提交</a>
                </div>
            </td>
        </tr>
    </table>
</div>
<script>

    mini.parse();

    // 验证保留两位小数
    function regTest(v){
        var reg=new RegExp("^[0-9]+(.[0-9]{2})$")
        if(reg.test(v)) return true
        return false
    }
    function onValidation(e){
        if(e.isValid){
            if(regTest(e.value)==false){
                alert("必须两位小数");
                e.isValid=false;
            }

        }
    }

    // 复选框至少选择一项
    function isselect(e)
    {
        var dutyflag=0;
        var checkobj = document.getElementById("cbl1");
        var checks = checkobj.getElementsByTagName("input");
        for(var n=0;n <checks.length;n++)
        {
            if(checks[n].checked==true)
            {
                dutyflag=1;
            }
        }
        if(dutyflag==0)
        {
            alert( "至少要选择1个产品形式 ");
            return false;
        }
        return true;
    }


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
