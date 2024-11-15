<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑手术记录</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">手术记录管理</li>
                        <li class="breadcrumb-item active">编辑手术记录</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">手术记录信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa huanzhe">
                                        <label>患者</label>
                                        <div>
                                            <select id="huanzheSelect" name="huanzheSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>患者姓名</label>
                                        <input id="huanzheName" name="huanzheName" class="form-control"
                                               placeholder="患者姓名" readonly>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>患者手机号</label>
                                        <input id="huanzhePhone" name="huanzhePhone" class="form-control"
                                               placeholder="患者手机号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>患者身份证号</label>
                                        <input id="huanzheIdNumber" name="huanzheIdNumber" class="form-control"
                                               placeholder="患者身份证号" readonly>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>现住地址</label>
                                        <input id="huanzheAddress" name="huanzheAddress" class="form-control"
                                               placeholder="现住地址" readonly>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>出生年月</label>
                                        <input id="huanzheTime" name="huanzheTime" class="form-control"
                                               placeholder="出生年月" readonly>
                                    </div>
                                    <div class="form-group col-md-6 huanzhe">
                                        <label>患者照片</label>
                                        <img id="huanzhePhotoImg" src="" width="100" height="100">
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="huanzheId" name="huanzheId" type="hidden">
                                    <div class="form-group col-md-6">
                                        <label>手术名字</label>
                                        <input id="shoushuName" name="shoushuName" class="form-control"
                                               placeholder="手术名字">
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>手术类型</label>
                                        <select id="shoushuTypesSelect" name="shoushuTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label>手术时间</label>
                                        <input id="shoushuTime-input" name="shoushuTime" type="text" class="form-control layui-input">
                                    </div>
                                    <div class="form-group  col-md-6">
                                        <label>手术详情</label>
                                        <input id="shoushuContentupload" name="file" type="file">
                                        <script id="shoushuContentEditor" type="text/plain"
                                                style="width:100%;height:230px;"></script>
                                        <script type = "text/javascript" >
                                        //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
                                        //相见文档配置属于你自己的编译器
                                        var shoushuContentUe = UE.getEditor('shoushuContentEditor', {
                                            toolbars: [
                                                [
                                                    'undo', //撤销
                                                    'bold', //加粗
                                                    'redo', //重做
                                                    'underline', //下划线
                                                    'horizontal', //分隔线
                                                    'inserttitle', //插入标题
                                                    'cleardoc', //清空文档
                                                    'fontfamily', //字体
                                                    'fontsize', //字号
                                                    'paragraph', //段落格式
                                                    'inserttable', //插入表格
                                                    'justifyleft', //居左对齐
                                                    'justifyright', //居右对齐
                                                    'justifycenter', //居中对
                                                    'justifyjustify', //两端对齐
                                                    'forecolor', //字体颜色
                                                    'fullscreen', //全屏
                                                    'edittip ', //编辑提示
                                                    'customstyle', //自定义标题
                                                ]
                                            ]
                                        });
                                        </script>
                                        <input type="hidden" name="shoushuContent" id="shoushuContent-input">
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "shoushu";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var shoushuTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var huanzheOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

        $('#shoushuContentupload').fileupload({
            url: baseUrl + 'file/upload',
            headers: {token: window.sessionStorage.getItem("token")},
            dataType: 'json',
            done: function (e, data) {
                UE.getEditor('shoushuContentEditor').execCommand('insertHtml', '<img src=\"' + baseUrl + 'upload/' + data.result.file + '\" width=900 height=560>');
            }
        });


    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '患者'){//当前登录用户不为这个
                if($("#huanzheId") !=null){
                    var huanzheId = $("#huanzheId").val();
                    if(huanzheId == null || huanzheId =='' || huanzheId == 'null'){
                        alert("患者不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("shoushu/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addshoushu');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function shoushuTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=shoushu_types", "GET", {}, (res) => {
                if(res.code == 0){
                    shoushuTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function huanzheSelect() {
            //填充下拉框选项
            http("huanzhe/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    huanzheOptions = res.data.list;
                }
            });
        }

        function huanzheSelectOne(id) {
            http("huanzhe/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                huanzheShowImg();
                huanzheShowVideo();
                huanzheDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationShoushutypesSelect(){
            var shoushuTypesSelect = document.getElementById('shoushuTypesSelect');
            if(shoushuTypesSelect != null && shoushuTypesOptions != null  && shoushuTypesOptions.length > 0 ){
                for (var i = 0; i < shoushuTypesOptions.length; i++) {
                    shoushuTypesSelect.add(new Option(shoushuTypesOptions[i].indexName,shoushuTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationhuanzheSelect() {
            var huanzheSelect = document.getElementById('huanzheSelect');
            if(huanzheSelect != null && huanzheOptions != null  && huanzheOptions.length > 0 ) {
                for (var i = 0; i < huanzheOptions.length; i++) {
                        huanzheSelect.add(new Option(huanzheOptions[i].huanzheName, huanzheOptions[i].id));
                }

                $("#huanzheSelect").change(function(e) {
                        huanzheSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var shoushuTypesSelect = document.getElementById("shoushuTypesSelect");
        if(shoushuTypesSelect != null && shoushuTypesOptions != null  && shoushuTypesOptions.length > 0 ) {
            for (var i = 0; i < shoushuTypesOptions.length; i++) {
                if (shoushuTypesOptions[i].codeIndex == ruleForm.shoushuTypes) {//下拉框value对比,如果一致就赋值汉字
                        shoushuTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var huanzheSelect = document.getElementById("huanzheSelect");
            if(huanzheSelect != null && huanzheOptions != null  && huanzheOptions.length > 0 ) {
                for (var i = 0; i < huanzheOptions.length; i++) {
                    if (huanzheOptions[i].id == ruleForm.huanzheId) {//下拉框value对比,如果一致就赋值汉字
                        huanzheSelect.options[i+1].selected = true;
                        $("#huanzheSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
        if (ruleForm.shoushuContent != null && ruleForm.shoushuContent != 'null' && ruleForm.shoushuContent != '' && $("#shoushuContentupload").length>0) {

            var shoushuContentUeditor = UE.getEditor('shoushuContentEditor');
            shoushuContentUeditor.ready(function () {
                var mes = '';
                if(ruleForm.shoushuContent != null){
                    mes = ''+ ruleForm.shoushuContent;
                    mes = mes.replace(/\n/g, "<br>");
                }
                shoushuContentUeditor.setContent(mes);
            });
        }
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
        if($("#shoushuContentupload").length>0) {
            var shoushuContentEditor = UE.getEditor('shoushuContentEditor');
            if (shoushuContentEditor.hasContents()) {
                $('#shoushuContent-input').attr('value', shoushuContentEditor.getPlainTxt());
            }
        }
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addshoushu');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                huanzheId: "required",
                shoushuName: "required",
                shoushuTypes: "required",
                shoushuTime: "required",
                shoushuContent: "required",
            },
            messages: {
                huanzheId: "患者不能为空",
                shoushuName: "手术名字不能为空",
                shoushuTypes: "手术类型不能为空",
                shoushuTime: "手术时间不能为空",
                shoushuContent: "手术详情不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addshoushu = window.sessionStorage.getItem("addshoushu");
        if (addshoushu != null && addshoushu != "" && addshoushu != "null") {
            //注册表单验证
            $(validform());
            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("shoushu/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
            laydate.render({
                elem: '#shoushuTime-input'
                ,type: 'datetime'
            });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        huanzheDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#huanzheId").val(ruleForm.huanzheId);
        $("#shoushuName").val(ruleForm.shoushuName);
        $("#shoushuTime-input").val(ruleForm.shoushuTime);
        $("#shoushuContent").val(ruleForm.shoushuContent);

    }
    <!--  级联表的数据回显  -->
    function huanzheDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#huanzheId").val(ruleForm.id);

        $("#huanzheName").val(ruleForm.huanzheName);
        $("#huanzhePhone").val(ruleForm.huanzhePhone);
        $("#huanzheIdNumber").val(ruleForm.huanzheIdNumber);
        $("#huanzheAddress").val(ruleForm.huanzheAddress);
        $("#huanzheTime").val(ruleForm.huanzheTime);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        huanzheShowImg();
    }


    <!--  级联表的图片  -->

    function huanzheShowImg() {
        $("#huanzhePhotoImg").attr("src",ruleForm.huanzhePhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        huanzheShowVideo();
    }


    <!--  级联表的视频  -->

    function huanzheShowVideo() {
        $("#huanzhePhotoV").attr("src",ruleForm.huanzhePhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            shoushuTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            huanzheSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationShoushutypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationhuanzheSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addshoushu');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events: none;');
        }
		else if (window.sessionStorage.getItem('role') == '医生') {
            // $(".aaaaaa").remove();
            $(".yisheng").remove();//删除当前用户的信息
        }
		else if (window.sessionStorage.getItem('role') == '患者') {
            // $(".aaaaaa").remove();
            $(".huanzhe").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyContentUeditor = UE.getEditor('replyContentEditor');
            // replyContentUeditor.ready(function () {
            //     replyContentUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>