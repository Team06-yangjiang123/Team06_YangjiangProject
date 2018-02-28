<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2018/1/19
  Time: 下午2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

    <title>添加卫星</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>

    <style type="text/css">
        html, body
        {
            font-size:12px;
            padding:0;
            margin:0;
            border:0;
            height:100%;
            overflow:hidden;
        }
    </style>
</head>
<body>

<form id="form1" method="post">
    <input name="id" class="mini-hidden" />
    <div style="padding-left:11px;padding-bottom:5px;">
        <table style="table-layout:fixed;">
            <tr>
                <td style="width:100px;">卫星库：</td>
                <td style="width:150px;">
                    <input name="satellitename" class="mini-textbox"   emptyText="请输入卫星库"/>
                </td>
            </tr>

            <tr>
                <td style="width:100px;">管理人员：</td>
                <td style="width:150px;">
                    <input name="Dept" showNullItem="true"
                           class="mini-combobox" url="../../data/crew.txt"
                           value="a" textField="text" valueField="id"
                           style="height: 25px; width: 260px"/></td>
                </td>
            </tr>
            <tr>
                <td>申请时间</td>
                <td id="w1"><input id="date1" class="mini-datepicker"
                                   value="2018-11-11"
                                   style="height: 25px; width: 260px"/>
                </td>
            </tr>

            <tr>
                <td>是否有效</td>
                <td><input name="Judge" showNullItem="true"
                           class="mini-combobox" url="../../data/judge.txt"
                           value="true" textField="text" valueField="id"
                           style="height: 25px; width: 260px"/></td>
            </tr>
        </table>
    </div>

    <div style="text-align:center;padding:10px;">
        <a class="mini-button" onclick="onOk" style="width:60px;margin-right:20px;">确定</a>
        <a class="mini-button" onclick="onCancel" style="width:60px;">取消</a>
    </div>
</form>
<script type="text/javascript">
    mini.parse();

    var form = new mini.Form("form1");

    function SaveData() {
        var o = form.getData();

        form.validate();
        if (form.isValid() == false) return;

        var json = mini.encode([o]);
        $.ajax({
            url: "AjaxService",
            type: 'post',
            data: { data: json },
            cache: false,
            success: function (text) {
                CloseWindow("save");
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
                CloseWindow();
            }
        });
    }

    ////////////////////
    //标准方法接口定义
//    function SetData(data) {
//        if (data.action == "edit") {
//            //跨页面传递的数据对象，克隆后才可以安全使用
//            data = mini.clone(data);
//
//            $.ajax({
//                url: "../data/AjaxService.jsp?method=GetEmployee&id=" + data.id,
//                cache: false,
//                success: function (text) {
//                    var o = mini.decode(text);
//                    form.setData(o);
//                    form.setChanged(false);
//
//                    onDeptChanged();
//                    mini.getbyName("position").setValue(o.position);
//                }
//            });
//        }
//    }

    function GetData() {
        var o = form.getData();
        return o;
    }
    function CloseWindow(action) {
        if (action == "close" && form.isChanged()) {
            if (confirm("数据被修改了，是否先保存？")) {
                return false;
            }
        }
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }
    function onOk(e) {
        SaveData();
    }
    function onCancel(e) {
        CloseWindow("cancel");
    }
    //////////////////////////////////
//    function onDeptChanged(e) {
//        var deptCombo = mini.getbyName("dept_id");
//        var positionCombo = mini.getbyName("position");
//        var dept_id = deptCombo.getValue();
//
//        positionCombo.load("../data/AjaxService.jsp?method=GetPositionsByDepartmenId&id=" + dept_id);
//        positionCombo.setValue("");
//    }



</script>
</body>
</html>

