<%--
  Created by 蓝鸥科技有限公司  www.lanou3g.com.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>基本</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="css/demo.css" rel="stylesheet" type="text/css"/>

    <script src="../scripts/boot.js" type="text/javascript"></script>
    <style>

        table, td {
            border: 2px solid #acdaff;
            border-collapse: collapse;
            font-size: 10px;
            padding: 3px;

        }

        .header {
            /*background-color: #f4f6f9;*/
            font-family: "Trebuchet MS";
            Arial: "sans-serif";
            height: 30px;

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
    <table width="100%">
        <tr class="header">
            <td colspan="4" id="td1" style="background: linear-gradient(#ddf3ff, #dbedff, #c9eaff, #cfe4ff);">
                <img src="/img/定位图标.png" style="width: 13px;height: 13px">&nbsp;当前位置：个人工作台 >> 代办任务
            </td>
        </tr>
        <tr>
            <td class="lefttd" colspan="4" style="background: linear-gradient(#c1eaff, #c6e7ff, #8fdbff, #d2ecff);">
                &nbsp;&nbsp;&nbsp;<img src="/img/指向下.png" style="width: 13px;height: 13px">查询条件
            </td>
        </tr>
        <tr>
            <td class="content">申请时间</td>
            <td class="righttd" style="width: 40%">
                <input id="dateSel" class="mini-datepicker"
                       style="width:70%;height:100%;"
                       allowInput="false"
                       <%--onbuttonclick="onStudentButtonEdit"--%>
                       name="sid" textName="sname"/>
            </td>
            <td class="content">关键字</td>
            <td>
                <input id="tbl1" name="tb" class="mini-autocomplete" required="true" style="width:200px;"
                       valueField="id" textField="text"
                       url="#" value="#"/>
            </td>
        </tr>

        <tr>
            <td class="content">申请人</td>
            <td class="righttd" style="width: 40%">
                <input id="pensonSel" class="mini-datepicker"
                       style="width:70%;height:100%;"
                       allowInput="false"
                <%--onbuttonclick="onStudentButtonEdit"--%>
                       name="sid" textName="sname"/>
            </td>
            <td class="content">所属部门</td>
            <td>
                <input id="tbl2" name="tb" class="mini-autocomplete" required="true" style="width:200px;"
                       valueField="id" textField="text"
                       url="#" value="#"/>
            </td>
        </tr>

        <tr>
            <td colspan="4" class="content" style="text-align: right">

                <button class="btn1" type="button" name="search"><img src="/img/查询.png" style="width: 16px;height: 16px">查询</button>
            </td>


        </tr>

    </table>




<div id="datagrid1" class="mini-datagrid" style="width:100%;height: 200px"
     <%--url="#" --%>
     idField="id"
     allowResize="true" pageSize="20"
     allowCellEdit="true" allowCellSelect="true" multiSelect="true"
     allowCellValid="true" oncellvalidation="onCellValidation">
    <div property="columns">
        <div type="checkcolumn"></div>
        <div field="processNumber" vtype="required" width="120" headerAlign="center" allowSort="true">流程编号
            <input property="editor" class="mini-textbox" style="width:100%;" />
        </div>
        <div field="processName" vtype="required" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">流程名称
            <input property="editor" class="mini-textbox" style="width:100%;" data="processName"/>
        </div>
        <div field="dept" vtype="required;int" width="100" allowSort="true" align="center" headerAlign="center">所属部门
            <input property="editor" class="mini-textbox" minValue="0" maxValue="200" value="25" style="width:100%;"/>
        </div>
        <div field="current" vtype="required" width="100" allowSort="true" align="center" headerAlign="center">当前环节
            <input property="editor" class="mini-textbox" style="width:100%;"/>
        </div>
        <div field="applyPerson"  width="120" headerAlign="center" allowSort="true" align="center">提报人
            <input property="editor" class="mini-textbox" style="width:100%;" minHeight="80"/>
        </div>
        <div field="applyDate" vtype="required;date" width="100" headerAlign="center" align="center" dateFormat="yyyy-MM-dd" allowSort="true">申报时间</div>

        <div field="operation" vtype="required" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">操作
            <input property="editor" class="mini-textbox" style="width:100%;" data="operation"/>
        </div>
    </div>

    <div property="content">
        <div type="checkcolumn"></div>
        <div field="processNumber" vtype="required" width="120" headerAlign="center" allowSort="true">254637367
            <input property="editor" class="mini-textbox" style="width:100%;" />
        </div>
        <div field="processName" vtype="required" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">消防系统隔离申请
            <input property="editor" class="mini-textbox" style="width:100%;" data="processName"/>
        </div>
        <div field="dept" vtype="required;int" width="100" allowSort="true" align="center" headerAlign="center">后勤部
            <input property="editor" class="mini-textbox" minValue="0" maxValue="200" value="25" style="width:100%;"/>
        </div>
        <div field="current" vtype="required" width="100" allowSort="true" align="center" headerAlign="center">工业安全审批科
            <input property="editor" class="mini-textbox" style="width:100%;"/>
        </div>
        <div field="applyPerson"  width="120" headerAlign="center" allowSort="true" align="center">张三
            <input property="editor" class="mini-textbox" style="width:100%;" minHeight="80"/>
        </div>
        <div field="applyDate" vtype="required;date" width="100" headerAlign="center" align="center" dateFormat="yyyy-MM-dd" allowSort="true">2018/02/04 18:10</div>

        <div field="operation" vtype="required" width="100" renderer="onGenderRenderer" align="center" headerAlign="center">
            <input property="editor" class="mini-textbox" style="width:100%;" data="operation"/>
        </div>
    </div>
</div>

</div>
<script type="text/javascript">
    mini.parse();

    /*返回表单数据*/
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();
        var s = mini.encode(data);
        return s;
    }


    function onClazzButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/page/select_clazz_gridwindow.jsp",
            title: "选择班级列表",
            width: '80%',
            height: '80%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.cid + "--" + data.cname);
                        btnEdit.setValue(data.cid);
                        btnEdit.setText(data.cname);
                    }
                }
            }
        });

    }
    function onStudentButtonEdit(e) {
        var btnEdit = this;
        mini.open({
            url: "/page/select_student_gridwindow.jsp",
            title: "选择学生列表",
            width: '80%',
            height: '80%',
            showMaxButton: true,
            ondestroy: function (action) {
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须
                    if (data) {
                        console.log(data.sid + "--" + data.sname);
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }
            }
        });

    }

</script>

<script type="text/javascript">
    mini.parse();

    var grid = mini.get("datagrid1");
    grid.load();

    ///////////////////////////////////////////////////////


    var Genders = [{ id: 1, text: '男' }, { id: 2, text: '女'}];
    function onGenderRenderer(e) {
        for (var i = 0, l = Genders.length; i < l; i++) {
            var g = Genders[i];
            if (g.id == e.value) return g.text;
        }
        return "";
    }

    function addRow() {
        var newRow = { name: "New Row" };
        grid.addRow(newRow, 0);
        grid.validateRow(newRow);   //加入新行，马上验证新行
    }
    function removeRow() {
        var rows = grid.getSelecteds();
        if (rows.length > 0) {
            grid.removeRows(rows, true);
        }
    }
    function saveData() {
        grid.validate();
        if (grid.isValid() == false) {
            //alert("请校验输入单元格内容");
            var error = grid.getCellErrors()[0];
            grid.beginEditCell(error.record, error.column);
            return;
        }

        var data = grid.getChanges();
        var json = mini.encode(data);

        grid.loading("保存中，请稍后......");
        $.ajax({
            url: "../data/AjaxService.aspx?method=SaveEmployees",
            data: { data: json },
            type: "post",
            success: function (text) {
                grid.reload();
            },
            error: function (jqXHR, textStatus, errorThrown) {
                alert(jqXHR.responseText);
            }
        });
    }
    function onCellValidation(e) {
        if (e.field == "age") {

            if (e.value < 20) {
                e.isValid = false;
                e.errorText = "年龄必须大于20岁";
            }
        }
        if (e.field == "gender") {
            if (e.value == 0) {
                e.isValid = false;
                e.errorText = "不能为空";
            }
        }
    }

</script>


</body>

</html>