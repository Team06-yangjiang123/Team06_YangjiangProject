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

        #w1, #w2, #w3, #w4, #w5, #w6 {
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
            <img src="../../img/position.png" style="width: 13px;height: 13px">&nbsp;当前位置：综合管理 >> 流程查询
        </td>
    </tr>
</table>

<div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add"
     style="width:100%"
     showToolbar="false" showCollapseButton="false" showFooter="false" allowResize="false"
     collapseOnTitleClick="true">
    <table border="1" cellpadding="1" cellspacing="2">
        <tr class="colo">
            <td>申请时间</td>
            <td id="w1"><input id="date1" class="mini-datepicker"
                               value="2018-11-11"
                               style="height: 25px; width: 260px"/>
            </td>
            <td>申请人</td>
            <td id="w2"><input id="btnEdit1"
            <%--class="mini-buttonedit"--%>
                               class="mini-buttonedit user_add"
                               onbuttonclick="onButtonEdit"
                               style="height: 25px; width: 260px"/>
            </td>
            <td>关键字</td>
            <td id="w3"><input type="text" name="keyword"
                               style="height: 25px; width: 253px"></td>
        </tr>
        <tr class="colo">
            <td>流程类型</td>
            <td id="w4"><input name="FlowType" showNullItem="true"
                               class="mini-combobox" url="../../data/flowType.txt"
                               value="cn" textField="text" valueField="id"
                               style="height: 25px; width: 260px"/></td>
            <td>所属部门</td>
            <td id="w5"><input id="btnEdit2"
            <%--class="mini-buttonedit"--%>
                               class="mini-buttonedit user_add"
                               onbuttonclick="onButtonEdit"
                               style="height: 25px; width: 260px"/></td>
            <td>是否可以打印</td>
            <td id="w6"><input name="Judge" showNullItem="true"
                               class="mini-combobox" url="../../data/judge.txt"
                               value="true" textField="text" valueField="id"
                               style="height: 25px; width: 260px"/></td>
        </tr>
        <tr>
            <td id="first" colspan="6" style="background: aliceblue">
                <a class="mini-button"
                   img="../../img/search.gif" onclick="search()">查询</a>
            </td>
        </tr>
    </table>
</div>

<div id="datagrid1" class="mini-datagrid" style="width:100%;height:68%;"
     idField="id" pageSize="20" multiSelect="true">
    <div property="columns">
        <%--<div type="indexcolumn"></div>--%>
        <div type="checkcolumn"></div>
        <div field="loginname" width="120" headerAlign="center" allowSort="true" align="center">流程编号</div>
        <div field="name" width="120" headerAlign="center" allowSort="true" align="center">流程名称</div>
        <div field="dept" width="120" headerAlign="center" allowSort="true" align="center">所属部门</div>
        <div field="tache" width="100" headerAlign="center" allowSort="true" align="center">当前环节</div>
        <div field="person" width="100" headerAlign="center" allowSort="true" align="center">提报人</div>
        <div field="judege" width="100" headerAlign="center" allowSort="true" align="center">是否可以打印</div>
        <div name="action" width="100" align="center" headerAlign="center" allowSort="true">操作</div>

        <%--<a class="mini-button" img="../../search.gif">查询</a>--%>

    </div>
</div>


<%--<a class="mini-button" iconCls="icon-print">打印</a>--%>


<script type="text/javascript">
    mini.parse();

    var grid = mini.get("datagrid1");



    grid.on("drawcell", function (e) {
        var record = e.record,
            column = e.column,
            field = e.field,
            value = e.value;

        //设置行样式
        if (column.name=="action") {
            e.cellHtml = '<a class="mini-button"  style="width: 40px" href="/contractApproval">' +
            '<img src="../../scripts/miniui/themes/icons/edit.gif">流程</a>'
        }

    });

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
        url: '../../data/data1.txt',
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
            url: "/choosePerson",
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
                        btnEdit.setValue(data.staff_id);
                        btnEdit.setText(data.staff_username);
                    }
                }

            }
        });

    }
</script>

</body>
</html>