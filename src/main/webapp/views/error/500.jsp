<%@ page language="java" pageEncoding="UTF-8" errorPage="error.jsp" %>
<%@ include file="../../pages/common/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <title>未知异常</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="${ctx}/assets/global/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="${ctx}/assets/page/css/error.css" rel="stylesheet" type="text/css"/>
        <!-- END PAGE LEVEL STYLES -->
    </head>
    <body class="page-500-full-page">
        <div class="row">
            <div class="col-md-12 page-500">
                <div class=" number">500</div>
                <div class=" details">
                    <h3>发生了一些未知错误</h3>
                    <p>
                        我们将会修复它！<br/>
                        请稍后返回页面重试。<br/><br/>
                    </p>
                </div>
            </div>
        </div>

        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <script src="${ctx}/assets/global/plugin/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/pym/pym.v1.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="${ctx}/assets/global/script/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="${ctx}/assets/page/script/view-util.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <script>
            initPymChild(null);
        </script>
    </body>
</html>