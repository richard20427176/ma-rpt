<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../pages/common/taglibs.jsp" %>

<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <div class="menu-toggler sidebar-toggler"></div>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN HORIZANTAL MENU -->
        <!-- DOC: Remove "hor-menu-light" class to have a horizontal menu with theme background instead of white background -->
        <!-- DOC: This is desktop version of the horizontal menu. The mobile version is defined(duplicated) in the responsive menu below along with sidebar menu. So the horizontal menu has 2 seperate versions -->
        <!-- END HORIZANTAL MENU -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-user dropdown-dark">
                    <a class="dropdown-toggle" aria-expanded="false" href="#" data-toggle="dropdown" data-close-others="true" data-hover="dropdown">
                        <!--<img class="img-rounded" alt="" src="../../../resources/assets/admin/layout/img/avatar3_small.jpg">-->
                        <i class="icon-user"></i>
                        <span class="username username-hide-on-mobile">
                            <%--
							<%=SecurityUtil.getCurrentUser().getFullName()==null?
                                    SecurityUtil.getCurrentUser().getUserName():SecurityUtil.getCurrentUser().getFullName()%>
                                    --%>
						</span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <br />
                            <a href="javascript:;"><i class="icon-user"></i>账号：</a>
                        </li>
                        <li class="divider">
                        </li>
                        <%--
                        <security:authorize url="/admin/users/profile">
                            <li>
                                <a href="javascript:;" onclick="toTab('_admin_users_profile','个人信息','${ctx}/admin/users/profile?m=<%=UserProfileMode.ViewSelf.getValue()%>');"><i class="fa fa-user"></i> 个人信息 </a>
                            </li>
                        </security:authorize>
                        <security:authorize access="hasAnyRole('ROLE_SUPERVISOR','ROLE_SUPERVISOR_SWITCHED')">
                            <li>
                                <a href="javascript:;" onclick="toTab('_admin_users_switch','切换用户','${ctx}/admin/users/su');"><i class="fa fa-user"></i> 切换用户 </a>
                            </li>
                        </security:authorize>
                        <!--
						<security:authorize access="hasRole('ROLE_SUPERVISOR_SWITCHED')" var="hasPermission2SwithBack">
							<li>
								<a href="javascript:;" id="switchBackBtn"><i class="fa fa-arrow-left"></i> 返回原用户</a>
							</li>
						</security:authorize>
						-->
						--%>
                        <li>
                            <a href="${ctx}/auth/logout"><i class="icon-key"></i> 退出</a>
                            <br />
                        </li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->