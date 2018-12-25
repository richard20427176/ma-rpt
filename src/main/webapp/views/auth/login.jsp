<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../pages/common/taglibs.jsp" %>

<!DOCTYPE html>
<html lang="zh-CN">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8"/>
        <title>Login</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <!-- BEGIN GLOBAL MANDATORY STYLES -->
        <link href="${ctx}/assets/global/plugin/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/assets/global/plugin/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- END GLOBAL MANDATORY STYLES -->
        <!-- BEGIN THEME GLOBAL STYLES -->
        <link href="${ctx}/assets/global/css/components-rounded.min.css" rel="stylesheet" type="text/css" />
        <!-- END THEME GLOBAL STYLES -->
        <!-- BEGIN PAGE LEVEL STYLES -->
        <link href="${ctx}/assets/global/plugin/ladda-bootstrap-master/ladda-themeless.min.css" rel="stylesheet" type="text/css" />
        <link href="${ctx}/assets/page/css/login.min.css" rel="stylesheet" type="text/css" />
        <!-- END PAGE LEVEL STYLES -->
    </head>
    <body class="login">
        <!-- BEGIN LOGIN -->
        <div class="content">
            <form method="POST" id="loginForm" class="login-form" action="${ctx}/auth/userlogin">
                <h2 class="form-title text-center"><span class="font-blue" style="text-shadow:0px 0px 2px #fff, 5px 5px 8px #fff;"><strong>Login</strong></span></h2>
                <c:if test="${not empty errMsg}">
                    <div class="alert alert-danger">
                        <button class="close" data-close="alert"></button>
                        <span>${errMsg}</span>
                    </div>
                </c:if>
                <div class="form-group">
                    <div class="input-icon">
                        <i class="fa fa-user"></i>
                        <input type="text" name="userName" id="txtUserName" class="form-control placeholder-no-fix" placeholder="username" maxlength="18" tabindex="1" autocomplete="on" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-icon">
                        <i class="fa fa-lock"></i>
                        <input type="password" name="password" id="txtPassword" class="form-control placeholder-no-fix" placeholder="password" maxlength="16" tabindex="2" />
                    </div>
                </div>
                <div class="portlet">
                    <button class="btn btn-primary btn-block ladda-button" data-style="expand-left" type="submit">
                        <span class="ladda-label">Login</span>
                    </button>
                </div>
            </form>
        </div>
        <!-- END LOGIN -->

        <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
        <!-- BEGIN CORE PLUGINS -->
        <script src="${ctx}/assets/global/plugin/jquery/jquery.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/jquery/jquery.blockui.min.js" type="text/javascript"></script>
        <!-- END CORE PLUGINS -->
        <!-- BEGIN PAGE LEVEL PLUGINS -->
        <script src="${ctx}/assets/global/plugin/jquery/jquery-validation/jquery.validate.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/jquery/jquery-validation/additional-methods.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="${ctx}/assets/global/script/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="${ctx}/assets/global/plugin/ladda-bootstrap-master/spin.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/global/plugin/ladda-bootstrap-master/ladda.min.js" type="text/javascript"></script>
        <script src="${ctx}/assets/page/script/login.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
        <!-- BEGIN THEME LAYOUT SCRIPTS -->
        <!-- END THEME LAYOUT SCRIPTS -->
        <!-- END JAVASCRIPTS -->
        <script>
            $(function() {
                if (window != top){
                    top.location.href = location.href;
                }

                //
                Ladda.bind('button[type=submit]');
            });
        </script>
    </body>
</html>
