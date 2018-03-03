<%--
  Created by 蓝鸥科技有限公司  www.lanou3g.com.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>基本</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <style>

        table, td {

            border-collapse: collapse;
            font-size: 10px;
            padding: 3px;

        }



        .header {
            /*background-color: #f4f6f9;*/
            font-family: "Trebuchet MS";
            Arial: "sans-serif";
            height: 30px;
            border: 1px solid #9dd3ff;
        }


        .lefttd {
            width: 80px;
            text-align: left;
        }

        .righttd {
            padding: 2px;
            background-color: white;
        }
        .content{
            width: 10%;
            text-align: center;
        }
        #tbl1{
            width: 70%;
        }
        .content{
            background: linear-gradient(#e1f5ff, #c9eaff, #cbe1ff);
        }
    </style>

</head>
<body>


<div id="form1">

    <input name="id" class="mini-hidden"/>
    <table width="100%" style="border: 1px solid #c4e5ff">
        <tr class="header">
            <td colspan="4" id="td1" style="background: linear-gradient(#ddf3ff, #dbedff, #c9eaff, #cfe4ff);">
                <img src="../../img/position.png" style="width: 13px;height: 13px">&nbsp;当前位置：个人工作台 >> 代办任务
            </td>
        </tr>
        <tr>
            <td class="lefttd" colspan="4" style="background: linear-gradient(#c1eaff, #c6e7ff, #8fdbff, #d2ecff);">
                &nbsp;&nbsp;&nbsp;<img src="../../img/down.png" style="width: 13px;height: 13px">查询条件
            </td>
        </tr>
        <tr style="border: 1px solid #c1eaff">
            <td class="content">申请时间</td>
            <td class="righttd" style="width: 40%">
                <input id="key" class="mini-datepicker"
                       style="width:70%;height:100%;"
                       allowInput="false"
                       />
            </td>
            <td class="content">关键字</td>
            <td>
                <input id="key1" type="text" class="mini-textbox" style="width: 70%;height: 100%">
            </td>
        </tr>

        <tr>
            <td class="content">申请人</td>
            <td class="trTitle">
                <input id="btnEdit1"
                       class="mini-buttonedit"
                       onbuttonclick="onButtonEdit1"
                       style="width: 70%;height: 100%"/>

            </td>
            <td class="content">所属部门</td>
            <td class="trTitle">
                <input id="btnEdit2"
                       class="mini-buttonedit"
                       onbuttonclick="onButtonEdit2"
                       style="width: 70%;height: 100%"/>

            </td>
        </tr>

        <tr>
            <td colspan="4" class="content" style="text-align: right">

                <a class="mini-button" style="width:60px;" onclick="search()"><img src="../../img/query.png" style="width: 16px;height: 16px">查询</a>
            </td>


        </tr>

    </table>




    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:71%" idField="id" sizeList="[5,10,15,20]" pageSize="10" multiSelect="true">
        <div property="columns">
            <div type="checkcolumn"></div>
            <div field="proId" width="120" align="center" headerAlign="center" vtype="required;email" autoEscape="true" allowSort="true">流程编号</div>
            <div field="proName" width="100" align="center"  allowSort="true" headerAlign="center">流程名称</div>
            <div field="department" width="100" align="center"  allowSort="true" headerAlign="center">申请部门</div>
            <div field="step" width="100" align="center"  allowSort="true" headerAlign="center">当前环节</div>
            <div field="applicant" width="100" align="center"  allowSort="true" headerAlign="center">提报人</div>
            <div field="applyTime" width="100" allowSort="true"  align="center" headerAlign="center">提报时间</div>
            <div name="action" width="100" align="center"  headerAlign="center" renderer="onActionRenderer">操作</div>
        </div>
    </div>

</div>
<script type="text/javascript">
    mini.parse();

    var grid = mini.get("datagrid1");

    grid.setUrl("/selectAllPro");
    grid.load();

    // 加入表格中的按钮

    function onActionRenderer(e) {
        var grid = e.sender;
        var record = e.record;
        var uid = record._uid;
        var rowIndex = e.rowIndex;

        var s = '<a class="mini-button"  style="width: 40px" href="/contractApproval">' +
            '<img src="../../scripts/miniui/themes/icons/edit.gif">办理</a>';
        return s;
    }

    /*返回表单数据*/
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }
    function search() {
        var a = mini.get("key").getValue();
        var b = mini.get("key1").getValue();
        var time = null;
        if (a !=null && a !=''){
            time= formatDate(a);
        }
        var person = mini.get("btnEdit1").getText();
        var dept = mini.get("btnEdit2").getText();
        console.log(time+b+person+dept);
        grid.load({applyTime:time,proName:b,applicant:person,department:dept});
    }
    function formatTen(num) {
        return num > 9 ? (num + "") : ("0" + num);
    }
    function formatDate(date) {
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var hour = date.getHours();
        var minute = date.getMinutes();
        var second = date.getSeconds();
        return year + "-" + formatTen(month) + "-" + formatTen(day);
    }
    function onKeyEnter(e) {
        search();
    }

    function onButtonEdit1(e) {

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

    function onButtonEdit2(e) {

        var btnEdit = this;
        mini.open({
            url: "/selectDep",
            title: "选择部门",
            width: 550,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        btnEdit.setValue(data.depId);
                        btnEdit.setText(data.depName);
                    }
                }

            }
        });
    }
</script>



</body>

</html>