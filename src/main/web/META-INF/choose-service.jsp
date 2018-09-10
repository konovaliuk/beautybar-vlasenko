<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 31.08.2018
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html class="gr__n79452_yclients_com">
<head>
    <style type="text/css">[ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
        display: none !important;
    }

    ng\:form {
        display: block;
    }

    .ng-animate-shim {
        visibility: hidden;
    }

    .ng-anchor {
        position: absolute;
    }</style>

    <base href="/">
    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <!-- inject:polifill --><!-- endinject -->
    <script src="browser-error/browser-detect/browser-detect.umd.js"></script>
    <script>
        var thisBrowser = browserDetect();
        if (thisBrowser.name === 'ie') {
            window.location.replace("/browser-error.html");
        }
    </script>

    <style>
        @-webkit-keyframes sk-scaleout {
            0% {
                -webkit-transform: scale(0)
            }
            100% {
                -webkit-transform: scale(1.0);
                opacity: 0;
            }
        }

        @keyframes sk-scaleout {
            0% {
                -webkit-transform: scale(0);
                transform: scale(0);
            }
            100% {
                -webkit-transform: scale(1.0);
                transform: scale(1.0);
                opacity: 0;
            }
        }

        .main-animated-circle-loader {
            width: 100px;
            height: 100px;
            background-color: #333;

            border-radius: 100%;
            -webkit-animation: sk-scaleout 1.0s infinite ease-in-out;
            animation: sk-scaleout 1.0s infinite ease-in-out;

            position: absolute;
            top: 300px;
            left: 50%;
            margin-left: -50px;
            z-index: 20000;
        }


    </style>



</head>


<body class="h100 light-background-color desktop"
      ng-class="{'without-header' : $root.ySettings.style.show_header === false}" data-gr-c-s-loaded="true"
      style="min-height: 430px;">

<link rel="stylesheet" href="../css/vendor1535711697016.css">
<link rel="stylesheet" href="../css/application1535711697016.css">

<script src="../js/babel-polyfill.1535711700647.js"></script>
<script src="../js/vendor.1535711700647.js"></script>
<script src="../js/app.1535711700647.js"></script>

<link rel="stylesheet" href="../css/style.1535711700647.css">

<script src="../js/templates1535711697016.js"></script>

<y-menu-app-links company="$ctrl.company" class="y-items-md-content ng-isolate-scope">
    <div class="menu-items__badges ng-hide"
         ng-show="($ctrl.desktop || $ctrl.isIos || $ctrl.isAndroid) &amp;&amp; ($ctrl.company.app_ios || $ctrl.company.app_android)"
         ng-class="{'menu-items__both-badges' : $ctrl.desktop &amp;&amp; $ctrl.company.app_ios &amp;&amp; $ctrl.company.app_android}">
        <!-- ngIf: ($ctrl.desktop || $ctrl.isIos) && $ctrl.company.app_ios -->
        <!-- ngIf: ($ctrl.desktop || $ctrl.isAndroid) && $ctrl.company.app_android -->
    </div>
</y-menu-app-links>
<!-- @endif -->
</div>
</y-menu-list>


<c:out value="${user}, Hello!"/>

<div ng-if="!$root.appIsDisabled &amp;&amp; $root.appIsLoaded" layout-fill="layout-fill"
     class="h100 y-content-wrapper ng-scope">
    <div class="h100 light-background-color y-content-wrapper y-active-view view-30068962 y-page-prepare ng-scope"
         style="min-height: 430px;">
        <div class="h100 y-content-wrapper">
            <div class="h100 y-content-wrapper scrollable">
                <div class="container-wrapper container light-background-color h100">
                    <div class="cover">
                        <div ng-style="{'background-image': 'url(' + $root.headerImage + ')'}"
                             class="title-wrapper y-header-toolbar-wrapper"
                             style="background-image: url('https://w79452.yclients.com/uploads/widget_header/3/31/3114ff3abe58cba_20170828142555.jpeg');">
                            <yclients-default-subheader class="y-subheader ng-isolate-scope">
                                <div class="center-500 header-breadcrumbs">
                                    <div class="center-500 header-breadcrumbs" y-title="$ctrl.getTitle()"
                                         y-subtitle="$ctrl.getSubtitle()" y-description="$ctrl.getDescription()">
                                        <div class="js-pane-0 center-500 header-breadcrumbs ng-isolate-scope"
                                             y-data="ctrl.data"><h1
                                                class="text-color-50 y-headline y-breadcrumbs-color ng-binding">
                                            Выбор услуги
                                        </h1>
                                            <h2 class="text-color-50 md-subhead">
                                                <!-- ngIf: data.subtitle.length --><span ng-if="data.subtitle.length"
                                                                                         class="subtitle y-breadcrumbs-color ng-binding ng-scope">
                                    Онлайн-запись
                                </span><!-- end ngIf: data.subtitle.length --> <span
                                                    class="description y-breadcrumbs-color ng-binding">GC beautybar Киев</span>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </yclients-default-subheader>
                            <div class="mask y-header-backdrop">
                            </div>
                        </div>
                    </div>
                    <div layout-padding="layout-padding" layout-margin="layout-margin" class="content">
                        <yclients-record-service class="ng-isolate-scope">
                            <y-repeat-booking type="$ctrl.bookingEnum.service" class="ng-isolate-scope">
                                <!-- ngIf: $ctrl.isNeedRepeat === true -->
                            </y-repeat-booking>
                            <div class="center-500">
                                <table>
                                    <c:forEach items="${services}" var="item">
                                        <tr>
                                            <td><a href="Servlettest?command=choosemaster&service=${item}">
                                                <!-- ngIf: $ctrl.is_charge_active -->
                                                <!-- ngIf: $ctrl.isLoaded === false -->
                                                <!-- ngIf: $ctrl.servicesIsFlatten -->
                                                <!-- ngIf: !$ctrl.servicesIsFlatten -->
                                                <yclients-record-service-services-list ng-if="!$ctrl.servicesIsFlatten"
                                                                                       services="$ctrl.services"
                                                                                       categories="$ctrl.categories"
                                                                                       events="$ctrl.events"
                                                                                       idx="$ctrl.idx"
                                                                                       class="ng-scope ng-isolate-scope">
                                                    <!-- ngRepeat: category in $ctrl.categories track by category.id -->
                                                    <div class="service-group-wrapper ng-scope"
                                                         ng-repeat="category in $ctrl.categories track by category.id">
                                                        <!-- ngIf: ::!$first --><h3
                                                            class="header service-group-header ng-binding service-group-header_first"
                                                            data-block="service.group-header"
                                                            ng-click="$ctrl.toggleCategory(category)"
                                                            ng-class="{'service-group-header_first': $first &amp;&amp; !$ctrl.events.length}">

                                                        <c:out value="${item}"/></h3>
                                                        <!-- ngIf: $ctrl.selectedServicesCount(category.id) --><i
                                                            ng-class="category.isFaded || category.fadeInProgress ? 'down' : 'up'"
                                                            class="fa fa-angle-down down"></i></h3>
                                                        <div class="services__service-list services__service-list_hided"
                                                             ng-class="{
                'services__service-list_hided': category.isFaded,
                'services__service-list_hide-in-progress': category.fadeInProgress,
                'services__service-list_opened': !category.isFaded &amp;&amp; category.isTouched
            }"><!-- ngIf: !category.isFaded || category.fadeInProgress --></div>
                                                    </div>
                                                    <!-- end ngRepeat: category in $ctrl.categories track by category.id -->

                                                    <div class="service-group-wrapper ng-scope"
                                                         ng-repeat="category in $ctrl.categories track by category.id">
                                                        <!-- ngIf: ::!$first -->
                                                        <div class="y-bottom-divider service-group-divider ng-scope"
                                                             ng-if="::!$first"></div><!-- end ngIf: ::!$first -->
                                                    </div>
                                            </a></td>
                                        </tr>
                                    </c:forEach>

                                </table>
                                <style>
                                    .main-color {
                                        color: #9E9E9E !important;
                                    }

                                    .y-button {
                                        background-color: #607d8b;
                                        color: #fff;
                                        border: 1px solid rgb(192, 250, 255);
                                    }

                                    .y-md-toolbar-hue-2 {
                                        background-color: #616161 !important;
                                    }

                                    .main-background-color {
                                        background: #9E9E9E !important;
                                    }

                                    .md-tab.md-active {
                                        background: #424242 !important;
                                    }

                                    .main-background-color-900, md-tabs-wrapper, y-tabs-wrapper {
                                        background: #424242 !important;
                                    }

                                    .text-color-50 {
                                        color: #ffffff !important;
                                    }

                                    .main-background-color-600 {
                                        background: #757575 !important;
                                    }

                                    .main-border-color {
                                        border-color: #9E9E9E !important;
                                    }

                                    .warn-border-color {
                                        border-color: #607d8b !important;
                                    }

                                    .animated-circle-loader-warn .bounce {
                                        background-color: #607d8b;
                                    }

                                    .warn-icon-color {
                                        color: #607d8b !important;
                                    }

                                    .warn-color {
                                        color: #607d8b !important;
                                    }

                                    .warn-color-dark {
                                        color: #37474f !important;
                                    }

                                    .tab-color-warn md-tab-item {
                                        color: #37474f !important;
                                    }

                                    .tab-color-warn md-ink-bar {
                                        background-color: #263238 !important;
                                    }

                                    .warn-background-color {
                                        background-color: #607d8b !important;
                                    }

                                    .primary-dark-color {
                                        color: #424242 !important;
                                    }

                                    .primary-dark-color:hover {
                                        color: #424242 !important;
                                    }

                                    .primary-dark-color:active {
                                        color: #424242 !important;
                                    }

                                    .primary-dark-color:link {
                                        color: #424242 !important;
                                    }

                                    .primary-dark-color:focus {
                                        color: #424242 !important;
                                    }

                                    .primary-dark-color:visited {
                                        color: #424242 !important;
                                    }

                                    .calendar-active-day {
                                        color: #607d8b !important;
                                    }

                                    .light-background-color {
                                        background-color: #fafafa !important;
                                    }

                                    .medium-background-color {
                                        background-color: #e0e0e0 !important;
                                    }

                                    .medium-background-color-opacity {
                                        background-color: rgba(224, 224, 224, 0.4) !important;
                                    }

                                    .medium-border-color {
                                        border-color: #bdbdbd !important;
                                    }

                                    y-checkbox:not([disabled])
                                    .md-checked .md-icon:after {
                                        border-color: #607d8b !important;
                                    }

                                    input:-webkit-autofill {
                                        -webkit-box-shadow: 0 0 0px 1000px #fafafa inset !important;
                                    }

                                    .animated-circle-loader-accent .bounce {
                                        background-color: #FAFAFA;
                                    }

                                    .progress-circular-color .md-right .md-half-circle {
                                        border-right-color: #424242 !important;
                                        border-top-color: #424242 !important;
                                    }

                                    .progress-circular-color .md-left .md-half-circle {
                                        border-top-color: #424242 !important;
                                        border-left-color: #424242 !important;
                                    }

                                    .progress-linear-background-color .md-bar.md-bar2 {
                                        background-color: #424242 !important;
                                    }

                                    .y-header-toolbar {
                                        background-color: #ffffff !important;
                                    }

                                    .y-header-backdrop {
                                        background-color: #424242 !important;
                                    }

                                    .y-footer-address-bar {
                                        background-color: #EEEEEE !important;
                                    }

                                    .y-footer-copyrights {
                                        background-color: #ffffff !important;
                                    }

                                    .y-accent-text-color {
                                        color: #FAFAFA !important;
                                    }

                                    .y-header-icon-color {
                                        color: #424242 !important;
                                    }

                                    .y-breadcrumbs-color {
                                        color: #FAFAFA !important;
                                    }

                                    .y-footer-adress-color {
                                        color: #424242 !important;
                                    }

                                    .y-footer-copyrights-color {
                                        color: #616161 !important;
                                    }

                                    .activities-filter-icon__notification {
                                        background: #a0a0a0;
                                        color: white !important;
                                    }

                                    .y-tabs__tab_current {
                                        color: #607d8b;
                                    }

                                    .y-tabs_dark .y-tabs__list {
                                        border-color: #607d8b;
                                    }

                                    .y-tabs_dark .y-tabs__tab {
                                        color: #607d8b;
                                    }

                                    .y-tabs_dark .y-tabs__tab:not(.y-tabs__tab_current) {
                                        border-right: 1px solid #607d8b;
                                    }

                                    .y-tabs_dark .y-tabs__tab_current {
                                        background-color: #607d8b;
                                    }

                                    .y-cart__button_loading {
                                        background-color: #607d8b;
                                        border-color: #607d8b;
                                    }

                                    .animated-circle-loader-accent .bounce {
                                        background-color: #9e9e9e;
                                    }

                                    .calendar-active-day-background {
                                        background-color: #607d8b !important;
                                    }</style>
                            </div>
</body>
</html>
