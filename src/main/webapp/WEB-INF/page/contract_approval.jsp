<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/2/6
  Time: 下午4:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科研项目合同审批页面</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="../../js/jquery.cookie.js" type="text/javascript"></script><style type="text/css">
    table, td {
        font-size: small;
        font-family: "Heiti SC";
        background-color:aliceblue;
        border: 1px solid white;
        border-collapse: collapse;
        padding: 5px;
        width: 100%;
        margin: 10px;
    }

    td {
        width: auto;
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
    input{
        allowInput:"false"
    }
</style>

</head>
<body>

<div id="form1">
    <table>
        <tr>
            <td colspan="4">当前位置:科研项目合同审批页面</td>

        </tr>
        <tr>
            <td colspan="4" class="title1">申请信息</td>
        </tr>
        <tr>
            <td class="t">合同名称<span>*</span></td>
            <td>
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
            <td colspan="3">
                <div id="cbl1" class="mini-checkboxlist"
                     textField="text" valueField="id"
                     onclick="checkedInp"style="width: 100%"
                     data="[{'id':'1001','text':'专题报告'},
                 {'id':'1002','text':'技术方案'},
                 {'id':'1003','text':'技术标准'},
                 {'id':'1004','text':'硬件产品'},
                 {'id':'1005','text':'生产性文件'},
                 {'id':'1006','text':'设计文件'},
                 {'id':'1007','text':'计算机软件'},
                 {'id':'1008','text':'其他'},]">
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
            <td class="t">附件</td>
            <td>
                <a href="">运作说明.doc</a>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="title1">审批意见</td>
        </tr>
        <tr >
            <td class="t">审批意见</td>
            <td>
                <input name="" class="mini-textarea" style="width:80%;height:60px;"/>
            </td>
            <td class="t">常用词条</td>
            <td>
                <input name="" class="mini-textarea" style="width:80%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td colspan="4" class="t">
                <a class="mini-button" img="../../scripts/miniui/res/images/cancel.png">拒绝</a>
                <a class="mini-button" img="../../scripts/miniui/res/images/accept.png">同意</a>
            </td>
        </tr>
    </table>
</div>
<script>

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
