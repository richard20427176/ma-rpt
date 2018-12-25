<%@ page language="java" pageEncoding="UTF-8" %>
<%@ include file="../../pages/common/taglibs.jsp" %>

<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content" style="padding: 0;">
        <div id="mainFrameTabs" class="span10">
            <ul id="ulTabNavs" class="nav nav-tabs">
                <!-- 设置默认的首页标签页，设置noclose样式，则不会被关闭 -->
                <li id="liTabNavHome" role="presentation" class="active noclose">
                    <a href="#divTabContHome" aria-expanded="true" data-toggle="tab" onclick="javascript:;"><i class="fa fa-home"></i> 首页</a>
                </li>
            </ul>
            <div id="divTabConts" class="tab-content">
                <!-- 默认标签页（首页）的内容区域 -->
                <div id="divTabContHome" class="tab-pane active">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END CONTENT -->

