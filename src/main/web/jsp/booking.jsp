<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 30.08.2018
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style type="text/css">[ng\:cloak],[ng-cloak],[data-ng-cloak],[x-ng-cloak],.ng-cloak,.x-ng-cloak,.ng-hide:not(.ng-hide-animate){display:none !important;}  ng\:form{display:block;}  .ng-animate-shim{visibility:hidden;}  .ng-anchor{position:absolute;}</style>
    <link rel="stylesheet" href="../css/styles.css">

    <base href="/">
    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">


    <!-- inject:polifill --><!-- endinject -->
    <script src="browser-error/browser-detect/browser-detect.umd.js"></script>
    <script>
        var thisBrowser = browserDetect();
        if (thisBrowser.name === 'ie') {
            window.location.replace("/browser-error.html");
        }
    </script>

    <title>Онлайн-запись</title>

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


    <script type="text/javascript" src="https://mc.yandex.ru/metrika/tag.js"></script><script src="https://maps.googleapis.com/maps/api/js?callback=yGoogleMapsInitCallback&amp;key=AIzaSyDXdiemDvD0Id0YIR6EJhr-ZOgcYnRmnwA" async="" defer=""></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/4/intl/ru_ALL/common.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/4/intl/ru_ALL/util.js"></script><script type="text/javascript" charset="UTF-8" src="https://maps.googleapis.com/maps-api-v3/api/js/34/4/intl/ru_ALL/stats.js"></script><script type="text/javascript" name="AVAST_PAM_submitInjector">(function () {
        var f = document.querySelectorAll("form")[0]; // eslint-disable-line no-undef
        if (!f._avast_submit) {
            f._avast_submit = f.submit;
        }
        try {
            Object.defineProperty(f, "submit", {
                get: function () {
                    return function (prev_submit) {
                        prev_submit.call(this);

                        if (this._avast_inside_submit) {
                            return;
                        }
                        this._avast_inside_submit = true;

                        var evt = document.createEvent("CustomEvent");
                        evt.initEvent("scriptsubmit", true, true); // bubbling & cancelable
                        this.dispatchEvent(evt);

                        delete this._avast_inside_submit;
                    }.bind(this, this._avast_submit);
                },
                set: function (submitFunc) {
                    this._avast_submit = submitFunc;
                }
            });
        }
        catch (ex) {
            // ignored
        }
    })();</script>
</head>

<%--<div class="yWidgetBlock right yWidgetShow" id="frame" style="display: block; z-index: 10000003;">--%>
<%--<iframe class="yWidgetIFrame" frameborder="0" allowtransparency="true" src="https://n11628.yclients.com/"></iframe>--%>
<%--</div>--%>
<body class="h100 light-background-color desktop"
      ng-class="{'without-header' : $root.ySettings.style.show_header === false}" data-gr-c-s-loaded="true"
      style="min-height: 356px;">
<div class="topnav">
    <a href ="../index.jsp">Главная</a>
    <a href ="Servlettest?command=chooseservicetype">Записаться</a>
    <a href ="Servlettest?command=feedbackmasters">Ocтавить отзыв</a>
    <div class="topnav-right">
        <a href="../jsp/login.jsp">Войти</a>
        <br/>
        <a href="../jsp/signup.jsp">Зарегистрироваться</a>
    </div>
</div>
<img  src = "../source/the-beauty-bar-logo-400px.jpg">

<div class="main-animated-circle-loader" style="display: none;">
</div>

<div class="y-main-foreground"></div>


<link rel="stylesheet" href="../css/vendor1534511931812.css">
<link rel="stylesheet" href="../css/application1534511931812.css">

<script src="../js/babel-polyfill.1534511936603.js"></script>
<script src="../js/vendor.1534511936603.js"></script>
<script src="../js/app.1534511936603.js"></script>

<link rel="stylesheet" href="../css/style.1534511936603.css">

<script src="../js/templates1534511931812.js"></script>

<div class="y-tooltips y-tooltips_hidden ng-isolate-scope" ng-click="ctrl.close()">
    <div class="y-tooltips__content"><!-- ngIf: ctrl.template -->
        <div class="y-tooltips__content__close mdi mdi-close"></div>
    </div>
</div>
<y-backdrop class="ng-isolate-scope"></y-backdrop>
<div class="y-top-notification y-top-notification_hidden ng-scope">
    <div class="y-top-notification__container"></div>
</div>
<y-request-rating class="ng-isolate-scope">
    <div class="y-request-rating y-request-rating_hidden">
        <div class="y-request-rating__container"></div>
    </div>
</y-request-rating>


<div class="nano">
    <div class="nano-content" tabindex="0">
        <div class="y-main-container">
            <yclients class="h100 js-for-copy y-content-wrapper ng-isolate-scope">
                <div class="h100 y-content-wrapper">
                    <div class="status-bar-bg status-bar-bg_translucent"></div>
                    <div class="status-bar-bg y-header-toolbar"></div>
                    <!-- ngIf: $root.ySettings.style.show_header !== false && $root.appIsLoaded && !$root.appIsDisabled -->
                    <yclients-nav
                            ng-if="$root.ySettings.style.show_header !== false &amp;&amp; $root.appIsLoaded &amp;&amp; !$root.appIsDisabled"
                            class="ng-scope ng-isolate-scope">
                        <div class="y-header-toolbar header-toolbar md-toolbar-tools">
                            <button ng-click="$ctrl.showMenu();" id="menu_button"
                                    class="y-button y-button_transparent y-clients-menu-button y-icon-button no-hover-background menu">
                                <i class="mdi mdi-menu y-header-icon-color"></i></button>
                            <img ng-src="https://w11628.yclients.com/uploads/widget_logo/d/df/dfdcbbf85465576_20171220193558.png"
                                 class="logo"
                                 src="https://w11628.yclients.com/uploads/widget_logo/d/df/dfdcbbf85465576_20171220193558.png">
                            <div class="nav-tools-container">
                                <yclients-activities-filter-icon class="ng-isolate-scope">
                                    <!-- ngIf: $ctrl.isCanShow() === true -->
                                </yclients-activities-filter-icon>
                                <y-circle-loader md-mode="indeterminate" md-diameter="22"
                                                 class="progress-circular-color js-circular-loader y-circular-loader y-circular-loader_hidden ng-isolate-scope">
                                    <div class="md-spinner-wrapper">
                                        <div class="md-inner">
                                            <div class="md-gap"></div>
                                            <div class="md-left">
                                                <div class="md-half-circle"></div>
                                            </div>
                                            <div class="md-right">
                                                <div class="md-half-circle"></div>
                                            </div>
                                        </div>
                                    </div>
                                </y-circle-loader>
                                <button ng-click="$ctrl.back()" style="display: block"
                                        class="y-button y-button_transparent history-back y-icon-button no-hover-background js-back-button">
                                    <i class="mdi mdi-arrow-left y-header-icon-color"></i></button>
                            </div>
                        </div>
                        <div y-side-nav="$ctrl.menuIsOpen" y-side-nav-name="main-menu-left"
                             class="ng-isolate-scope y-side-nav">
                            <y-menu class="ng-isolate-scope">
                                <div class="status-bar-bg status-bar-bg_translucent status-bar-bg_menu"></div>
                                <!-- ngIf: $root.widgetId !== -1 -->
                                <y-menu-carousel ng-if="$root.widgetId !== -1" companies="$ctrl.companies"
                                                 current-company-id="$ctrl.currentCompanyId"
                                                 class="ng-scope ng-isolate-scope">
                                    <div>
                                        <!-- ngIf: $ctrl.companies.length > 1 --><a
                                            class="y-accent-text-color go-to-left ng-scope"
                                            ng-if="$ctrl.companies.length > 1"
                                            ng-class="{ 'disabled': $ctrl.currentIndex == 0 || $ctrl.isLoading === true }"
                                            ng-click="$ctrl.goPreviousCompany()">
                                        <i class="fa fa-angle-left menu" id="menu_left"></i>
                                    </a><!-- end ngIf: $ctrl.companies.length > 1 -->

                                        <!-- ngIf: $ctrl.companies.length > 1 --><a
                                            class="y-accent-text-color go-to-right ng-scope disabled"
                                            ng-if="$ctrl.companies.length > 1"
                                            ng-class="{'disabled': ($ctrl.currentIndex >= $ctrl.companies.length - 1) || $ctrl.isLoading === true }"
                                            ng-click="$ctrl.goNextCompany()">
                                        <i class="fa fa-angle-right menu" id="menu_right"></i>
                                    </a><!-- end ngIf: $ctrl.companies.length > 1 -->

                                        <!-- ngIf: $ctrl.companies.length > 0 -->
                                        <ul rn-carousel="" rn-carousel-index="$ctrl.currentIndex"
                                            ng-if="$ctrl.companies.length > 0" class="menu-carousel-block ng-scope">
                                            <!-- ngRepeat: company in $ctrl.companies -->
                                            <li ng-repeat="company in $ctrl.companies" class="ng-scope"
                                                style="display: inline-block; transform: translate3d(-300%, 0px, 0px);">

                                            </li><!-- end ngRepeat: company in $ctrl.companies -->
                                            <li ng-repeat="company in $ctrl.companies" class="ng-scope"
                                                style="display: inline-block; transform: translate3d(0%, 0px, 0px);">
            <span class="menu-carousel-block__item">
                <h3 class="y-accent-text-color side-menu__company-title ng-binding">GC barbershop на Хрещатику</h3>
                <h4 class="y-accent-text-color side-menu__company-address ng-binding">вул. Хрещатик, 1/2</h4>
            </span>
                                            </li><!-- end ngRepeat: company in $ctrl.companies -->
                                        </ul><!-- end ngIf: $ctrl.companies.length > 0 -->
                                        <div class="background"
                                             style="background-image: url(https://w11628.yclients.com/uploads/widget_back/0/0a/0ae3cefd5373dac_20171220173643.jpeg)"></div>
                                    </div>
                                </y-menu-carousel><!-- end ngIf: $root.widgetId !== -1 -->
                                <hr/>
                                <c:out value="${user}, Hello!"/>
                                <hr/>
                                <y-menu-list company="$ctrl.currentCompany" class="y-items-md-content ng-isolate-scope">
                                    <div class="y-menu-list-wrapper">
                                        <!-- ngIf: $root.widgetId !== -1 -->
                                        <y-menu-item id="menu_online_booking" class="menu ng-scope ng-isolate-scope"
                                                     icon="'mdi-calendar-text'" title="('menu.on-line' | translate)"
                                                     ng-click="$ctrl.goToBooking()" ng-if="$root.widgetId !== -1">
                                            <div class="menu-item-attention"
                                                 ng-class="{ 'on': $ctrl.attention == true }"></div>
                                            <!-- ngIf: !$ctrl.hideicon -->
                                            <div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i
                                                    class="mdi mdi-calendar-text"></i></div>
                                            <!-- end ngIf: !$ctrl.hideicon -->
                                            <h1 class="ng-binding">
                                                Онлайн-запись
                                            </h1>

                                            <!-- ngIf: $ctrl.countNotification > 0 -->
                                        </y-menu-item><!-- end ngIf: $root.widgetId !== -1 -->

                                        <!-- ngIf: $root.widgetId !== -1 -->
                                        <y-menu-item id="menu_about_company"
                                                     class="bottom-bordered menu ng-scope ng-isolate-scope"
                                                     ng-click="$ctrl.goToCompanyInfo()" ng-if="$root.widgetId !== -1"
                                                     title="('menu.about' | translate)"
                                                     icon="'mdi-information-outline'">
                                            <div class="menu-item-attention"
                                                 ng-class="{ 'on': $ctrl.attention == true }"></div>
                                            <!-- ngIf: !$ctrl.hideicon -->
                                            <div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i
                                                    class="mdi mdi-information-outline"></i></div>
                                            <!-- end ngIf: !$ctrl.hideicon -->
                                            <h1 class="ng-binding">
                                                О компании
                                            </h1>

                                            <!-- ngIf: $ctrl.countNotification > 0 -->
                                        </y-menu-item><!-- end ngIf: $root.widgetId !== -1 -->

                                        <!-- ngIf: $root.widgetId !== -1 && $root.isAdmin -->

                                        <!-- ngIf: !$ctrl.isLogin() -->
                                        <y-menu-item class="bottom-bordered ng-scope ng-isolate-scope"
                                                     ng-if="!$ctrl.isLogin()" ng-click="$ctrl.goToAuth()"
                                                     title="('menu.my' | translate)" icon="'mdi-account'">
                                            <div class="menu-item-attention"
                                                 ng-class="{ 'on': $ctrl.attention == true }"></div>
                                            <!-- ngIf: !$ctrl.hideicon -->
                                            <div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i
                                                    class="mdi mdi-account"></i></div><!-- end ngIf: !$ctrl.hideicon -->
                                            <h1 class="ng-binding">
                                                Личный кабинет
                                            </h1>

                                            <!-- ngIf: $ctrl.countNotification > 0 -->
                                        </y-menu-item><!-- end ngIf: !$ctrl.isLogin() -->

                                        <!-- ngIf: $ctrl.isLogin() -->

                                        <y-menu-item id="menu_change_language" class="menu ng-isolate-scope"
                                                     ng-click="$ctrl.toggleMenu('sub-menu-translate');"
                                                     title="('menu.change_lang' | translate)" icon="'mdi-web'">
                                            <div class="menu-item-attention"
                                                 ng-class="{ 'on': $ctrl.attention == true }"></div>
                                            <!-- ngIf: !$ctrl.hideicon -->
                                            <div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i
                                                    class="mdi mdi-web"></i></div><!-- end ngIf: !$ctrl.hideicon -->
                                            <h1 class="ng-binding">
                                                Изменить язык
                                            </h1>

                                            <!-- ngIf: $ctrl.countNotification > 0 -->
                                        </y-menu-item>
                                        <!-- ngIf: $ctrl.isShow('sub-menu-translate') -->

                                        <!-- ngIf: $root.widgetId !== -1 && $ctrl.canChangeFilial() -->
                                        <y-menu-item id="menu_change_filial" icon="'mdi-swap-vertical'"
                                                     class="menu ng-scope ng-isolate-scope"
                                                     ng-click="$ctrl.toFirstStep()"
                                                     title="('menu.change_filial' | translate)"
                                                     ng-if="$root.widgetId !== -1 &amp;&amp; $ctrl.canChangeFilial()">
                                            <div class="menu-item-attention"
                                                 ng-class="{ 'on': $ctrl.attention == true }"></div>
                                            <!-- ngIf: !$ctrl.hideicon -->
                                            <div class="menu-icon ng-scope" ng-if="!$ctrl.hideicon"><i
                                                    class="mdi mdi-swap-vertical"></i></div>
                                            <!-- end ngIf: !$ctrl.hideicon -->
                                            <h1 class="ng-binding">
                                                Изменить филиал
                                            </h1>

                                            <!-- ngIf: $ctrl.countNotification > 0 -->
                                        </y-menu-item>
                                        <!-- end ngIf: $root.widgetId !== -1 && $ctrl.canChangeFilial() -->

                                        <!-- @if appType!='ionic' -->
                                        <y-menu-app-links company="$ctrl.company"
                                                          class="y-items-md-content ng-isolate-scope">
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


                            </y-menu>
                        </div>
                    </yclients-nav>

                    <!-- end ngIf: $root.ySettings.style.show_header !== false && $root.appIsLoaded && !$root.appIsDisabled -->
                    <!-- ngIf: !$root.appIsDisabled && $root.appIsLoaded -->
                    <div ng-if="!$root.appIsDisabled &amp;&amp; $root.appIsLoaded" layout-fill="layout-fill"
                         class="h100 y-content-wrapper ng-scope">
                        <div class="h100 light-background-color y-content-wrapper y-active-view view-24478029 y-page-prepare ng-scope"
                             style="min-height: 356px;">
                            <div class="h100 y-content-wrapper">
                                <div class="h100 y-content-wrapper scrollable">
                                    <div class="container-wrapper container light-background-color h100">
                                        <div class="cover">
                                            <div ng-style="{'background-image': 'url(' + $root.headerImage + ')'}"
                                                 class="title-wrapper y-header-toolbar-wrapper"
                                                 style="background-image: url('https://w11628.yclients.com/uploads/widget_header/9/99/9916482925ae12d_20171220163853.jpeg');">
                                                <yclients-default-subheader class="y-subheader ng-isolate-scope">
                                                    <div class="center-500 header-breadcrumbs">
                                                        <div class="center-500 header-breadcrumbs"
                                                             y-title="$ctrl.getTitle()" y-subtitle="$ctrl.getSubtitle()"
                                                             y-description="$ctrl.getDescription()">
                                                            <div class="js-pane-0 center-500 header-breadcrumbs ng-isolate-scope"
                                                                 y-data="ctrl.data"><h1
                                                                    class="text-color-50 y-headline y-breadcrumbs-color ng-binding">
                                                                Онлайн-запись </h1><hr/>
                                                                <c:out value="${user}, Hello!"/>
                                                                <hr/>
                                                                <h2 class="text-color-50 md-subhead">
                                                                    <!-- ngIf: data.subtitle.length --> <span
                                                                        class="description y-breadcrumbs-color ng-binding">GC barbershop на Хрещатику</span>
                                                                </h2></div>
                                                        </div>
                                                    </div>
                                                </yclients-default-subheader>
                                                <div class="mask y-header-backdrop"></div>
                                            </div>
                                        </div>
                                        <div layout-padding="layout-padding" layout-margin="layout-margin"
                                             class="content">
                                            <div class="center-500 jumbotron list-wrapper">
                                                <y-repeat-booking type="ctrl.bookingEnum.select"
                                                                  class="ng-isolate-scope">
                                                    <!-- ngIf: $ctrl.isNeedRepeat === true -->
                                                </y-repeat-booking>
                                                <!-- ngRepeat: record in ctrl.getRecords() track by $index -->
                                                <div class="item-list-wrapper ng-scope last-item"
                                                     ng-class="{'last-item': ctrl.records.length -1 === $index}"
                                                     ng-init="ctrl.setStateByIndex($index, ctrl.records.length -1 > $index)"
                                                     ng-repeat="record in ctrl.getRecords() track by $index"><span
                                                        class="tmp ng-binding">0</span>
                                                    <!-- ngIf: ctrl.records.length > 1 -->
                                                    <div class="y-content-block y-block-shadow y-items-md-content"
                                                         ng-class="{'hidden-block': ctrl.getStateByIndex($index)}">
                                                        <!-- ngRepeat: step in ctrl.steps | orderBy:'num' -->
                                                        <!-- ngInclude: 'directive/yclients/record/list/items/'+step.step+'.tpl.html' -->
                                                        <div class="y-list-item list-step-button-wrapper item-wrapper-relative ng-scope"
                                                             ng-repeat="step in ctrl.steps | orderBy:'num'"
                                                             ng-include="'directive/yclients/record/list/items/'+step.step+'.tpl.html'">
                                                            <!-- ngInclude: 'directive/yclients/record/list/items/datetime.tpl.html' -->
                                                            <div ng-include="'directive/yclients/record/list/items/datetime.tpl.html'"
                                                                 ng-init="step = 'date'" class="ng-scope">
                                                                <div class="list-item-wrapper menu_online_booking ng-scope"
                                                                     ng-click="ctrl.setDateTime($pIndex, step)"
                                                                     data-block="list.datetime"
                                                                     id="online_booking_datetime"><h3
                                                                        class="ng-binding">Дата и время</h3>
                                                                    <!-- ngIf: record.time.length && record.date.length || (ctrl.dateHidden || ctrl.timeHidden) -->
                                                                    <!-- ngIf: !(record.date.length && record.time.length) -->
                                                                    <i
                                                                            class="fa fa-angle-right y-item-arrow ng-scope"
                                                                            ng-if="!(record.date.length && record.time.length)"
                                                                            data-block="list.datetime.choose-arrow">
                                                                    </i>
                                                                    <!-- end ngIf: !(record.date.length && record.time.length) -->
                                                                </div>
                                                                <i class="y-icon warn-color remove-button mdi mdi-close-circle-outline ng-scope hidden"
                                                                   ng-class="{hidden: !(record.date.length &amp;&amp; record.time.length)}"
                                                                   data-block="list.datetime.remove-btn"
                                                                   ng-click="$event.stopPropagation(); ctrl.resetDatetime($pIndex)"></i>
                                                            </div>
                                                        </div><!-- end ngRepeat: step in ctrl.steps | orderBy:'num' -->
                                                        <!-- ngInclude: 'directive/yclients/record/list/items/'+step.step+'.tpl.html' -->
                                                        <div class="y-list-item list-step-button-wrapper item-wrapper-relative ng-scope"
                                                             ng-repeat="step in ctrl.steps | orderBy:'num'"
                                                             ng-include="'directive/yclients/record/list/items/'+step.step+'.tpl.html'">
                                                            <div class="list-item-wrapper menu_online_booking ng-scope"
                                                                 ng-click="ctrl.setService($pIndex)"
                                                                 data-block="list.service" id="online_booking_service">
                                                                <h3 class="service-title ng-binding">Услуга
                                                                    <!-- ngIf: (record.service.length || record.events.length) && ctrl.isMoreService($pIndex) --></h3>
                                                                <h4 class="services">
                                                                    <!-- ngRepeat: service in [].concat(record.service, record.events) --></h4>
                                                                <!-- ngIf: !record.events.length && !record.service.length --><i
                                                                    class="fa fa-angle-right y-item-arrow ng-scope"
                                                                    ng-if="!record.events.length &amp;&amp; !record.service.length"
                                                                    data-block="list.service.choose-arrow"></i>
                                                                <!-- end ngIf: !record.events.length && !record.service.length -->
                                                            </div>
                                                            <i class="y-icon warn-color remove-button mdi mdi-close-circle-outline ng-scope hidden"
                                                               ng-class="{hidden: !record.service.length &amp;&amp; !record.events.length}"
                                                               data-block="list.service.remove-btn"
                                                               ng-click="$event.stopPropagation(); ctrl.resetService($pIndex)"></i>
                                                        </div><!-- end ngRepeat: step in ctrl.steps | orderBy:'num' -->
                                                        <!-- ngInclude: 'directive/yclients/record/list/items/'+step.step+'.tpl.html' -->
                                                        <div class="y-list-item list-step-button-wrapper item-wrapper-relative ng-scope"
                                                             ng-repeat="step in ctrl.steps | orderBy:'num'"
                                                             ng-include="'directive/yclients/record/list/items/'+step.step+'.tpl.html'">
                                                            <div class="list-item-wrapper menu_online_booking ng-scope"
                                                                 ng-click="ctrl.setMaster($pIndex)"
                                                                 data-block="list.master" id="online_booking_employee">
                                                                <!-- ngIf: ySettings.stepTitles.master.length -->
                                                                <!-- ngIf: !ySettings.stepTitles.master.length --><h3
                                                                    ng-if="!ySettings.stepTitles.master.length"
                                                                    class="ng-binding ng-scope">Сотрудник</h3>
                                                                <!-- end ngIf: !ySettings.stepTitles.master.length -->
                                                                <h4 class="ng-binding"></h4>
                                                                <!-- ngIf: !record.master.id --><i
                                                                    class="fa fa-angle-right y-item-arrow ng-scope"
                                                                    ng-if="!record.master.id"
                                                                    data-block="list.master.choose-arrow"></i>
                                                                <!-- end ngIf: !record.master.id --></div>
                                                            <i class="y-icon warn-color remove-button mdi mdi-close-circle-outline ng-scope hidden"
                                                               ng-class="{hidden: !record.master.id}"
                                                               data-block="list.master.remove-btn"
                                                               ng-click="$event.stopPropagation(); ctrl.resetMaster($pIndex)"></i>
                                                        </div><!-- end ngRepeat: step in ctrl.steps | orderBy:'num' -->
                                                    </div>
                                                </div><!-- end ngRepeat: record in ctrl.getRecords() track by $index -->
                                                <div class="button-add"><!-- ngIf: ctrl.isFullRecords() --></div>
                                                <button class="y-button order-btn menu_online_booking ng-binding"
                                                        data-block="list.process-order" id="online_booking_record"
                                                        ng-click="ctrl.order()" ng-disabled="!ctrl.isFullRecords()"
                                                        disabled="disabled">Оформить визит
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <yclients-footer stub="true" class="footer-wrapper_stub ng-isolate-scope">
                                        <!-- ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' -->
                                        <div ng-show="$root.filialIsSelected"
                                             ng-if="$ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile'"
                                             class="y-footer-address-bar y-footer-adress-color footer-contacts ng-scope">
                                            <div class="footer-contacts__content">
                                                <div class="footer-contacts__address"><a
                                                        class="f-tr y-footer-adress-color ng-binding" target="_blank"
                                                        ng-href="https://www.google.com/maps/search/?api=1&query=%D0%B2%D1%83%D0%BB.%20%D0%A5%D1%80%D0%B5%D1%89%D0%B0%D1%82%D0%B8%D0%BA,%201/2"
                                                        href="https://www.google.com/maps/search/?api=1&;query=%D0%B2%D1%83%D0%BB.%20%D0%A5%D1%80%D0%B5%D1%89%D0%B0%D1%82%D0%B8%D0%BA,%201/2">вул.
                                                    Хрещатик, 1/2</a></div>
                                                <div class="footer-contacts__phone">
                                                    <!-- ngRepeat: phone in $ctrl.getPhones() --><a
                                                        class="f-tr y-footer-adress-color y-phone ng-binding ng-scope ng-isolate-scope"
                                                        ng-href="tel:+380932071273" phone="+380 93 207-12-73"
                                                        ng-repeat="phone in $ctrl.getPhones()" href="tel:+380932071273">+380
                                                    93 207-12-73</a><!-- end ngRepeat: phone in $ctrl.getPhones() -->
                                                </div>
                                            </div>
                                        </div>
                                        <!-- end ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' -->
                                        <!-- ngIf: !$root.ySettings.hide_yclients_link -->
                                        <div ng-if="!$root.ySettings.hide_yclients_link"
                                             class="y-footer-copyrights ng-scope"><a
                                                ng-href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop на Хрещатику&amp;utm_content=84418"
                                                target="_blank"
                                                class="y-button y-button_transparent f-tr y-footer-copyrights-color y-footer-copyrights__button"
                                                href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop на Хрещатику&amp;utm_content=84418"><span
                                                class="ng-binding">Работает на&nbsp;</span> <u class="ng-binding">YCLIENTS</u></a>
                                        </div><!-- end ngIf: !$root.ySettings.hide_yclients_link --></yclients-footer>
                                </div>
                                <yclients-footer class="js-for-copy footer-wrapper ng-isolate-scope" layout="column"
                                                 layout-align="space-between center">
                                    <!-- ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' -->
                                    <div ng-show="$root.filialIsSelected"
                                         ng-if="$ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile'"
                                         class="y-footer-address-bar y-footer-adress-color footer-contacts ng-scope">
                                        <div class="footer-contacts__content">
                                            <div class="footer-contacts__address"><a
                                                    class="f-tr y-footer-adress-color ng-binding" target="_blank"
                                                    ng-href="https://www.google.com/maps/search/?api=1&amp;query=%D0%B2%D1%83%D0%BB.%20%D0%A5%D1%80%D0%B5%D1%89%D0%B0%D1%82%D0%B8%D0%BA,%201/2"
                                                    href="https://www.google.com/maps/search/?api=1&amp;query=%D0%B2%D1%83%D0%BB.%20%D0%A5%D1%80%D0%B5%D1%89%D0%B0%D1%82%D0%B8%D0%BA,%201/2">вул.
                                                Хрещатик, 1/2</a></div>
                                            <div class="footer-contacts__phone">
                                                <!-- ngRepeat: phone in $ctrl.getPhones() --><a
                                                    class="f-tr y-footer-adress-color y-phone ng-binding ng-scope ng-isolate-scope"
                                                    ng-href="tel:+380932071273" phone="+380 93 207-12-73"
                                                    ng-repeat="phone in $ctrl.getPhones()" href="tel:+380932071273">+380
                                                93 207-12-73</a><!-- end ngRepeat: phone in $ctrl.getPhones() --></div>
                                        </div>
                                    </div>
                                    <!-- end ngIf: $ctrl.settings.group_id == 0 || $ctrl.LocationService.location != 'profile' -->
                                    <!-- ngIf: !$root.ySettings.hide_yclients_link -->
                                    <div ng-if="!$root.ySettings.hide_yclients_link"
                                         class="y-footer-copyrights ng-scope"><a
                                            ng-href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop на Хрещатику&amp;utm_content=84418"
                                            target="_blank"
                                            class="y-button y-button_transparent f-tr y-footer-copyrights-color y-footer-copyrights__button"
                                            href="https://www.yclients.com/?utm_source=widget&amp;utm_medium=link&amp;utm_campaign=new_widget&amp;utm_term=GC barbershop на Хрещатику&amp;utm_content=84418"><span
                                            class="ng-binding">Работает на&nbsp;</span> <u
                                            class="ng-binding">YCLIENTS</u></a></div>
                                    <!-- end ngIf: !$root.ySettings.hide_yclients_link --></yclients-footer>
                            </div>
                        </div>
                    </div><!-- end ngIf: !$root.appIsDisabled && $root.appIsLoaded --><!-- ngIf: $root.appIsDisabled -->
                </div>
            </yclients>
        </div>
    </div>
    <div class="nano-pane" style="display: block; opacity: 1; visibility: visible;">
        <div class="nano-slider" style="height: 180px; transform: translate(0px, 0px);"></div>
    </div>
</div>
<style>.main-color {
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

y-checkbox:not([disabled]).md-checked .md-icon:after {
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

.animated-circle-loader-accent .bounce {
    background-color: #9e9e9e;
}

}

.calendar-active-day-background {
    background-color: #607d8b !important;
}</style>
</body>
</html>
