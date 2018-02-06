<%--
  Created by IntelliJ IDEA.
  User: zmc
  Date: 18/2/5
  Time: 下午3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>综合管理</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css">
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="../../CommonLibs/UserSelectWindow.js" type="text/javascript"></script>

    <style type="text/css">
        table {
            border: 1px solid #b2d1f5;
            background-color: #eef8fa;
            border-collapse: collapse;
            width: 100%;
        }

        tr {
            background-color: #ceebf8;
        }

        #btnEdit1 {
            background: url(../../img/user.png) no-repeat 50% 50%;
        }

        #first {
            text-align: right;
        }
        #w1, #w2, #w3, #w4, #w5, #w6{
            background-color: white;
        }
    </style>
</head>

<body>
<div style="width: 100%">
    <div class="mini-toolbar" style="border-bottom:0;padding:0px;">
        <div style="background-color:#ccebfa "><font size="2">当前位置:综合管理>>查询位置</font></div>
        <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add"
             style="width:100%; background-color: #cbe1fa"
             showToolbar="false" showCollapseButton="false" showFooter="false" allowResize="false"
             collapseOnTitleClick="true">
            <table border="1" cellpadding="1" cellspacing="2">
                <tr>
                    <td><font size="2">申请时间</font></td>
                    <td id="w1"><input id="date1" name="BirthDay" class="mini-datepicker"
                               value="2010-10-12" required="true"
                                       style="height: 25px; width: 260px"/>
                    </td>
                    <td><font size="2">申请人</font></td>
                    <td id="w2"><input id="btnEdit1" class="mini-buttonedit"
                                       onbuttonclick="onButtonEdit"
                                       style="height: 25px; width: 260px"/>
                        <img src="../../img/user.png" style="width: 25px;height: 25px">
                    </td>
                    <td><font size="2">关键字</font></td>
                    <td id="w3"><input type="text" name="keyword"
                                       style="height: 25px; width: 260px"></td>
                </tr>
                <tr>
                    <td><font size="2">流程类型</font></td>
                    <td id="w4"><input name="FlowType" showNullItem="true"
                               class="mini-combobox" url="../../data/flowType.txt"
                               value="cn" textField="text" valueField="id"
                               style="height: 25px; width: 260px"/></td>
                    <td><font size="2">所属部门</font></td>
                    <td id="w5"><input name="Dept" showNullItem="true"
                               class="mini-combobox" url="../../data/dept.txt"
                               value="cn" textField="text" valueField="id"
                                style="height: 25px; width: 260px"/></td>
                    <td><font size="2">是否可以打印</font></td>
                    <td id="w6"><input name="Judge" showNullItem="true"
                               class="mini-combobox" url="../../data/judge.txt"
                               value="true" textField="text" valueField="id"
                                style="height: 25px; width: 260px"/></td>
                </tr>
                <tr style="background-color: #d3edef">
                    <td id="first" colspan="6">
                        <a class="mini-button"
                           img="../../img/search.gif" onclick="search()">查询</a>
                    </td>
                </tr>
            </table>
            <div id="datagrid1" class="mini-datagrid" style="width:100%;height:250px;"
                 url="" idField="id" allowResize="true"
                 sizeList="[20,30,50,100]" pageSize="20">
                <div property="columns">
                    <div type="indexcolumn"></div>
                    <div field="loginname" width="120" headerAlign="center" allowSort="true">流程编号</div>
                    <div field="name" width="120" headerAlign="center" allowSort="true">流程名称</div>
                    <div field="dept" width="120" headerAlign="center" allowSort="true">所属部门</div>
                    <div field="tache" width="100" headerAlign="center" allowSort="true">当前环节</div>
                    <div field="age" width="100" headerAlign="center" allowSort="true">提报人</div>
                    <div field="judege" width="100" headerAlign="center" allowSort="true">是否可以打印</div>
                    <div field="judege" width="100" headerAlign="center" allowSort="true">操作</div>

                    <%--<a class="mini-button" img="../../search.gif">查询</a>--%>

                </div>
            </div>
        </div>
    </div>
</div>
<a class="mini-button" iconCls="icon-print">打印</a>


<script type="text/javascript">
    mini.parse();

    //查询
    var grid = mini.get("datagrid1");

    grid.load();


    function search() {
        var key = document.getElementById("key").value;
        grid.load({key: key});
    }
    $("#key").bind("keydown", function (e) {
        if (e.keyCode == 13) {
            search();
        }
    });

    //申请人
    function onButtonEdit(e) {
        var buttonEdit = e.sender;

        var win = new UserSelectWindow();
        win.set({
            url:"",
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