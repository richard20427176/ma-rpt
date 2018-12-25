<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../pages/common/taglibs.jsp" %>

<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse" aria-expanded="true">
        <!-- BEGIN SIDEBAR MENU1 -->
        <ul id="sidebarMenu" class="page-sidebar-menu hidden-sm hidden-xs" data-slide-speed="200" data-auto-scroll="true">
            <%--
            <c:set var="roots" value="${menus}" />
            <%@include file="/common/tree.jsp"%>
            --%>
            <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
            <li class="sidebar-toggler-wrapper hide">
                <div class="sidebar-toggler">
                    <span></span>
                </div>
            </li>
            <!-- END SIDEBAR TOGGLER BUTTON -->
        </ul>
        <!-- END SIDEBAR MENU1 -->
        <%--
        <!-- BEGIN RESPONSIVE MENU FOR HORIZONTAL & SIDEBAR MENU -->
        <ul id="responsiveMenu" class="page-sidebar-menu visible-sm visible-xs" data-slide-speed="200" data-auto-scroll="true">
        </ul>
        <!-- END RESPONSIVE MENU FOR HORIZONTAL & SIDEBAR MENU -->
        --%>
    </div>
</div>
<!-- END SIDEBAR -->
