<%--
  Created by IntelliJ IDEA.
  User: zmc
  Date: 18/2/6
  Time: 上午10:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>机组管理</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="../../CommonLibs/UserSelectWindow.js" type="text/javascript"></script>

    <style>
        #skill {
            text-align: right;
            background-color: #e3edef;

        }

        table {
            background-color: #ccebfa;
            border: 1px solid #b2d1f5;
            border-collapse: collapse;
            width: 100%;
        }

        #form1 {
            background-color: #ccebfa;
        }
        #w1, #w2{
            background-color: white;
        }
    </style>
</head>
<body>

<div style="width: 100%">
    <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
        <div style="background-color:#ccebfa "><font size="2">当前位置:综合管理>>厂房管理</font></div>
        <div id="panel1" class="mini-panel" title="查询条件"
             style="width:100%; background-color: #ccebfa" iconCls="icon-add"
             showToolbar="false" showCollapseButton="false" showFooter="false" allowResize="false"
             collapseOnTitleClick="true"
        >

            <table style="width:100%;" border="1" cellpadding="1" cellspacing="2">

                <tr>
                    <td><font size="2">机组名称</font></td>
                    <td id="w1"><input type="text" name="plantname" style="height: 25px; width: 260px" ></td>
                    <td><font size="2">机组管理人</font></td>
                    <td id="w2"><input id="btnEdit1" class="mini-buttonedit" onbuttonclick="onButtonEdit"
                                       style="height: 25px; width: 260px" />
                        <img src="../../img/user.png" style="width: 25px;height: 25px"></td>
                </tr>
                </tr>
                <tr id="skill">
                    <td style="width:100%;" colspan="4">
                        <a class="mini-button" img="../../img/search.gif" onclick="search()">查询</a>
                        <a class="mini-button" iconCls="icon-add" onclick="add()">增加</a>
                        <a class="mini-button" iconCls="icon-remove" onclick="remove()">删除</a>
                    </td>
                </tr>
            </table>

            <div id="datagrid1" class="mini-datagrid" style="width:100%;height:280px;" allowResize="true"
                 url="" idField="id" multiSelect="true">

                <div property="columns" id="form1">
                    <!--<div type="indexcolumn"></div>        -->
                    <div type="checkcolumn"></div>
                    <div field="crew" width="120" headerAlign="center" allowSort="true">机组名称</div>
                    <div field="name" width="120" headerAlign="center" allowSort="true">机组管理人</div>
                    <div field="date" width="120" headerAlign="center" allowSort="true">创建日期</div>
                </div>
            </div>
        </div>
    </div>
</div>


<script type="text/javascript">

    mini.parse();

//    var grid = mini.get("datagrid1");
//    grid.load();

    //添加
    function add() {

        mini.open({
            targetWindow: window,

            url: bootPATH + "../demo/CommonLibs/EmployeeWindow.html",
            title: "新增员工", width: 600, height: 400,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = {action: "new"};
                iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {

                grid.reload();
            }
        });
    }

    function remove() {

        var rows = grid.getSelecteds();
        if (rows.length > 0) {
            if (confirm("确定删除选中记录？")) {
                var ids = [];
                for (var i = 0, l = rows.length; i < l; i++) {
                    var r = rows[i];
                    ids.push(r.id);
                }
                var id = ids.join(',');
                grid.loading("操作中，请稍后......");
                $.ajax({
                    url: "../data/AjaxService.aspx?method=RemoveEmployees&id=" + id,
                    success: function (text) {
                        grid.reload();
                    },
                    error: function () {
                    }
                });
            }
        } else {
            alert("请选中一条记录");
        }
    }

    //获取管理人列表
    function onButtonEdit(e) {
        var buttonEdit = e.sender;

        var win = new UserSelectWindow();
        win.set({
            url: "",
            title: "用户选择",
            width: 600,
            height: 350
        });

        win.show();
        win.search();

        //初始化数据
        win.setData(null, function (action) {
            if (action == "ok") {
                //获取数据
                var row = win.getData();
                if (row) {
                    buttonEdit.setValue(row.id);
                    buttonEdit.setText(row.name);

                    alert("选中记录: " + row.name);
                }
            }
        });
    }
</script>
</body>
</html>

