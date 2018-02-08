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

    <style type="text/css">
        table {
            font-size: small;
            font-family: "Heiti SC";
            border: 1px solid #b2d1f5;
            border-collapse: collapse;
            width: 100%;
            text-align: center;

        }

        .colo {
            background: linear-gradient(#e1f5ff, #c9eaff, #cbe1ff);
        }

        #first {
            text-align: right;
        }

        #w1, #w2 {
            background-color: aliceblue;
        }

        .user_add .mini-buttonedit-icon {
            background: url(/scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }

    </style>
</head>

<body>
<table>
    <tr class="colo" style="height: 25px;text-align: left">
        <td colspan="6">
            <img src="../../img/position.png" style="width: 13px;height: 13px">&nbsp;当前位置：综合管理 >> 机组管理
        </td>
    </tr>
</table>

<div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add"
     style="width:100%"
     showToolbar="false" showCollapseButton="false" showFooter="false" allowResize="false"
     collapseOnTitleClick="true">
    <table style="width:100%;" border="1" cellpadding="1" cellspacing="2">

        <tr class="colo">
            <td>机组名称</td>
            <td id="w1"><input type="text" name="plantname" style="height: 25px; width: 260px"></td>
            <td>机组管理人</td>
            <td id="w2"><input id="btnEdit1"
                               class="mini-buttonedit user_add"
                               onbuttonclick="onButtonEdit"
                               style="height: 25px; width: 260px"/></td>
        </tr>
        </tr>
        <tr id="skill">
            <td id="first" style="width:100%;background: aliceblue" colspan="4">
                <a class="mini-button" img="../../img/search.gif" onclick="search()">查询</a>
                <a class="mini-button" iconCls="icon-add" onclick="add()">增加</a>
                <a class="mini-button" iconCls="icon-remove" onclick="remove()">删除</a>
            </td>
        </tr>
    </table>
</div>
<div id="datagrid1" class="mini-datagrid" style="width:100%;height:25%;"
     idField="id" pageSize="5" multiSelect="true">

    <div property="columns" id="form1">
        <!--<div type="indexcolumn"></div>        -->
        <div type="checkcolumn"></div>
        <div field="crew" width="120" headerAlign="center" allowSort="true">机组名称</div>
        <div field="name" width="120" headerAlign="center" allowSort="true">机组管理人</div>
        <div field="date" width="120" headerAlign="center" allowSort="true">创建日期</div>
    </div>
</div>


<script type="text/javascript">
    mini.parse();

    var grid = mini.get("datagrid1");

    // 分页填充细节处理
    function fillData(pageIndex, pageSize, dataResult, grid) {

        var data = dataResult.data, totalCount = dataResult.total;

        var arr = [];
        var start = pageIndex * pageSize, end = start + pageSize;
        for (var i = start, l = end; i < l; i++) {
            var record = data[i];
            if (!record) continue;
            arr.push(record);
        }


        grid.setTotalCount(totalCount);
        grid.setPageIndex(pageIndex);
        grid.setPageSize(pageSize);

        grid.setData(arr);
    }

    // 监听分页前事件，阻止后自行设置当前数据和分页信息
    grid.on("beforeload", function (e) {
        e.cancel = true;

        var pageIndex = e.data.pageIndex, pageSize = e.data.pageSize;
        fillData(pageIndex, pageSize, dataResult, grid);
    });

    ////////////////////////////////////////////////////////////////////////

    // 获取所有数据和总记录数 { total: 100, data: [...] }
    var dataResult = null;
    $.ajax({
        url: '../../data/crewDate.txt',
        dataType: 'text',
        async: false,
        success: function (text) {
            dataResult = mini.decode(text);
        }
    });

    // 第一次设置
    fillData(0, grid.getPageSize(), dataResult, grid);

    /*返回表单数据*/
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }

    //
    //    grid.load();
    //

    function onButtonEdit(e) {

        var btnEdit = this;
        mini.open({
            url: "/selectPerson",
            title: "选择申请人",
            width: 550,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.id);
                        btnEdit.setText(data.name);
                    }
                }

            }
        });

    }

    //    //添加
    //    function add() {
    //
    //        mini.open({
    //            targetWindow: window,
    //
    //            url: bootPATH + "../demo/CommonLibs/EmployeeWindow.html",
    //            title: "新增员工", width: 600, height: 400,
    //            onload: function () {
    //                var iframe = this.getIFrameEl();
    //                var data = {action: "new"};
    //                iframe.contentWindow.SetData(data);
    //            },
    //            ondestroy: function (action) {
    //
    //                grid.reload();
    //            }
    //        });
    //    }

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


</script>
</body>
</html>

