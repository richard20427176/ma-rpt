<%@ page language="java" pageEncoding="UTF-8" errorPage="../error/error.jsp" %>
<%@ include file="../../pages/common/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
        <title></title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="${ctx}/assets/global/plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="${ctx}/assets/global/plugin/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css">
        <link href="${ctx}/assets/global/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/assets/global/plugin/btabs-master/css/b.tabs.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="${ctx}/assets/global/css/components-rounded.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN THEME LAYOUT STYLES -->
        <link href="${ctx}/assets/layout/css/layout.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/assets/layout/css/themes/darkblue.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/assets/layout/css/custom.css" rel="stylesheet" type="text/css" />
        <!-- END THEME LAYOUT STYLES -->

        <!-- BEGIN CORE PLUGINS -->
        <script src="${ctx}/assets/global/plugin/jquery/jquery.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
    </head>
    <body class="page-header-fixed page-quick-sidebar-over-content page-sidebar-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
        <div class="page-wrapper">
            <%@include file="../../pages/share/partial/header.jsp" %>

            <div class="clearfix"></div>

            <!-- BEGIN CONTAINER -->
            <div id="pageContainer" class="page-container">
                <%@include file="../../pages/share/partial/sidebar.jsp" %>
                <%@include file="../../pages/share/partial/content.jsp" %>
            </div>
            <!-- END CONTAINER -->

            <!-- BEGIN FOOTER -->
            <div class="page-footer">
                <div class="scroll-to-top" style="display: none;">
                    <i class="icon-arrow-up"></i>
                </div>
            </div>
            <!-- END FOOTER -->
        </div>

        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <script src="${ctx}/assets/global/plugin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/jquery/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/jquery/jquery.blockui.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/btabs-master/js/b.tabs.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/pym/pym.v1.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/script/underscore/underscore-min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="${ctx}/assets/global/script/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <script src="${ctx}/assets/layout/script/layout.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/layout/script/quick-sidebar.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/layout/script/quick-nav.min.js" type="text/javascript"></script>
        <!-- END THEME LAYOUT SCRIPTS -->
        <!-- BEGIN PAGE SCRIPTS -->
        <script src="${ctx}/assets/page/script/view-util.js" type="text/javascript"></script>
        <!-- END PAGE SCRIPTS -->
    </body>
</html>
