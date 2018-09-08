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
    <title>Welcome to Kendo UI</title>
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2018.2.620/styles/kendo.common.min.css" />
    <link rel="stylesheet" href="http://kendo.cdn.telerik.com/2018.2.620/styles/kendo.blueopal.min.css" />

    <script src="http://kendo.cdn.telerik.com/2018.2.620/js/jquery.min.js"></script>
    <script>
        if (typeof jQuery == "undefined") {
            // fallback to local jQuery
            document.write(decodeURIComponent('%3Cscript src="/path/to/local/jquery.min.js" %3E%3C/script%3E'));
        }
    </script>

    <script src="http://kendo.cdn.telerik.com/2018.2.620/js/kendo.all.min.js"></script>
    <script>
        if (typeof kendo == "undefined") {
            // checking for loaded CSS files is cumbersome,
            // that's why we assume that if the scripts have failed, so have the stylesheets

            // fallback to local Kendo UI stylesheets
            document.write(decodeURIComponent('%3Clink rel="stylesheet" href="/path/to/local/kendo.common.min.css" %3C/%3E'));
            document.write(decodeURIComponent('%3Clink rel="stylesheet" href="/path/to/local/kendo.blueopal.min.css" %3C/%3E'));

            // fallback to local Kendo UI scripts
            document.write(decodeURIComponent('%3Cscript src="/path/to/local/kendo.all.min.js" %3E%3C/script%3E'));
            // also add kendo.aspnetmvc.min.js or kendo.timezones.min.js, if needed
        }
    </script>


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
                                                Выбор даты</h1>
                                                <h2 class="text-color-50 md-subhead"><!-- ngIf: data.subtitle.length --><span
                                                        ng-if="data.subtitle.length"
                                                        class="subtitle y-breadcrumbs-color ng-binding ng-scope">Онлайн-запись</span>
                                                    <!-- end ngIf: data.subtitle.length --> <span
                                                            class="description y-breadcrumbs-color ng-binding">GC beautybar Киев</span>
                                                </h2></div>
                                        </div>
                                    </div>
                                </yclients-default-subheader>
                                <div class="mask y-header-backdrop"></div>
                            </div>
                        </div>

                        <form id="choose-date" method="POST" action="Servlettest">
                            <input type="hidden" name="command" value ="choosetime">
                            <input type="hidden" name="date" id="selectedDate" value ="">
                        <div id="calendar"></div>
                        </form>

                        <script>
                            var disabled  = new Array();
                            var i = 0;
                            <c:forEach items="${disabledDays}" var="day" varStatus="status">
                            disabled[i] = '<c:out value='${day}'/>';
                            i++;
                            </c:forEach>

                            $("#calendar").kendoCalendar({

                                value: new Date(),
                            //    disableDates: [tu, "we", 'th', 'fr', 'sa', 'su'],
                            //    disableDates: arr,
                                disableDates: function (date) {
                                    var dates  = new Array();
                                    var j = 0;
                                    <c:forEach items="${disabledString}" var="date" varStatus="status">
                                    dates[j] = new Date('<c:out value='${date}'/>');
                                    j++;
                                    </c:forEach>
                                    console.log(dates);
                                    if (date && compareDates(date, dates)) {
                                        return true;
                                    } else {
                                        return false;
                                    }

                                },
                                change: function() {
                                    var value = this.value();
                                    console.log(value);//value is the selected date in the calendar
                                    var selectedDate = document.getElementById("selectedDate");
                                    selectedDate.value = value;
                                    var form = document.getElementById("choose-date");
                                    form.submit();

                                }
                            });
                            function compareDates(date, dates) {
                                for (var k = 0; k < dates.length; k++) {
                                    if (dates[k].getDate() == date.getDate() &&
                                        dates[k].getMonth() == date.getMonth() &&
                                        dates[k].getYear() == date.getYear()) {
                                        return true
                                    }


                                }
                                var today = new Date();
                                if (date < today) return true;
                                for (var i = 0; i < disabled.length; i++) {
                                    if (disabled[i] == date.getDay())
                                        return true
                                }
                            }
                        </script>

                        <%--<div layout-padding="layout-padding" layout-margin="layout-margin" class="content">--%>
                            <%--<yclients-record-date class="ng-isolate-scope">--%>
                                <%--<div class="date-wrapper slide" layout="column" ng-swipe-right="$ctrl.prevTab()"--%>
                                     <%--ng-swipe-left="$ctrl.nextTab()"><!-- ngIf: ctrl.noDates -->--%>
                                    <%--<!-- ngIf: !ctrl.noDates -->--%>
                                    <%--<div ng-if="!ctrl.noDates" class="ng-scope">--%>
                                        <%--<div class="main-background-color-900 tabs-wrapper">--%>
                                            <%--<div class="md-tabs center-500"><a--%>
                                                    <%--class="text-color-50 go-to-left y-accent-text-color go-to-left__disabled"--%>
                                                    <%--href="javascript:void(0)" ng-click="$ctrl.setTab(-1)" ng-class="{--%>
                    <%--'go-to-left__disabled': !$ctrl.tabs[$ctrl.currentTabIndex-1]--%>
                        <%--|| !$ctrl.tabs[$ctrl.currentTabIndex-1].active--%>
                    <%--}"><i class="fa fa-angle-left"></i> </a><a class="text-color-50 go-to-right y-accent-text-color"--%>
                                                               <%--href="javascript:void(0)" ng-click="$ctrl.setTab(1)"--%>
                                                               <%--ng-class="{--%>
                    <%--'go-to-right__disabled': !$ctrl.tabs[$ctrl.currentTabIndex+1]--%>
                        <%--|| !$ctrl.tabs[$ctrl.currentTabIndex+1].active--%>
                <%--}"><i class="fa fa-angle-right"></i> </a>--%>
                                                <%--<!-- ngRepeat: tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin -->--%>
                                                <%--<button ng-disabled="!tab.active"--%>
                                                        <%--class="y-button y-button_transparent md-tab ng-scope md-tab__disabled md-tab__previous"--%>
                                                        <%--ng-class="{--%>
                        <%--'md-active': $index === 1,--%>
                        <%--'md-tab__disabled': !tab.active,--%>
                        <%--'md-tab__previous': $index + $ctrl.begin < $ctrl.currentTabIndex,--%>
                        <%--'md-tab__next': $index + $ctrl.begin > $ctrl.currentTabIndex--%>
                    <%--}" ng-click="$ctrl.setTabByIndex($index + $ctrl.begin)"--%>
                                                        <%--ng-repeat="tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin"--%>
                                                        <%--disabled="disabled"><span--%>
                                                        <%--class="month y-accent-text-color ng-binding">Август</span> <span--%>
                                                        <%--class="year y-accent-text-color ng-binding">2018</span></button>--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin -->--%>
                                                <%--<button ng-disabled="!tab.active"--%>
                                                        <%--class="y-button y-button_transparent md-tab ng-scope md-active"--%>
                                                        <%--ng-class="{--%>
                        <%--'md-active': $index === 1,--%>
                        <%--'md-tab__disabled': !tab.active,--%>
                        <%--'md-tab__previous': $index + $ctrl.begin < $ctrl.currentTabIndex,--%>
                        <%--'md-tab__next': $index + $ctrl.begin > $ctrl.currentTabIndex--%>
                    <%--}" ng-click="$ctrl.setTabByIndex($index + $ctrl.begin)"--%>
                                                        <%--ng-repeat="tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin">--%>
                                                    <%--<span class="month y-accent-text-color ng-binding">Сентябрь</span>--%>
                                                    <%--<span class="year y-accent-text-color ng-binding">2018</span>--%>
                                                <%--</button>--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin -->--%>
                                                <%--<button ng-disabled="!tab.active"--%>
                                                        <%--class="y-button y-button_transparent md-tab ng-scope md-tab__next"--%>
                                                        <%--ng-class="{--%>
                        <%--'md-active': $index === 1,--%>
                        <%--'md-tab__disabled': !tab.active,--%>
                        <%--'md-tab__previous': $index + $ctrl.begin < $ctrl.currentTabIndex,--%>
                        <%--'md-tab__next': $index + $ctrl.begin > $ctrl.currentTabIndex--%>
                    <%--}" ng-click="$ctrl.setTabByIndex($index + $ctrl.begin)"--%>
                                                        <%--ng-repeat="tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin">--%>
                                                    <%--<span class="month y-accent-text-color ng-binding">Октябрь</span>--%>
                                                    <%--<span class="year y-accent-text-color ng-binding">2018</span>--%>
                                                <%--</button>--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs | limitTo:$ctrl.limit:$ctrl.begin -->--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                        <%--<div class="y-content-block light-background-color days-wrapper">--%>
                                            <%--<!-- ngIf: !$ctrl.isLoaded --><!-- ngIf: $ctrl.isLoaded -->--%>
                                            <%--<div class="center-500 date-days-wrapper ng-scope" ng-if="$ctrl.isLoaded">--%>
                                                <%--<!-- ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<div class="calendar-wrapper light-background-color ng-scope ng-isolate-scope"--%>
                                                     <%--ng-repeat="tab in $ctrl.tabs"--%>
                                                     <%--ng-if="$ctrl.isCurrent(tab) &amp;&amp; $ctrl.isLoaded"--%>
                                                     <%--click="$ctrl.setDate" data="$ctrl.dates" date="tab.title"><span--%>
                                                        <%--class="day ng-binding">Пн</span> <span--%>
                                                        <%--class="day ng-binding">Вт</span> <span--%>
                                                        <%--class="day ng-binding">Ср</span> <span--%>
                                                        <%--class="day ng-binding">Чт</span> <span--%>
                                                        <%--class="day ng-binding">Пт</span> <span--%>
                                                        <%--class="day ng-binding">Сб</span> <span--%>
                                                        <%--class="day ng-binding">Вс</span>--%>
                                                    <%--<!-- quickNgRepeat: d in calendarCtrl.dates --><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">27</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">28</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">29</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">30</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">31</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">1</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">2</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">3</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">4</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">5</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">6</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">7</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">8</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">9</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">10</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">11</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">12</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">13</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">14</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">15</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">16</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">17</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">18</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">19</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">20</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">21</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">22</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">23</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">24</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">25</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">26</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">27</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">28</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">29</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding worked calendar-active-day"--%>
                                                            <%--ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)">30</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">1</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">2</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">3</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">4</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">5</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">6</button></span><span--%>
                                                            <%--class="day ng-scope"--%>
                                                            <%--quick-ng-repeat="d in calendarCtrl.dates"--%>
                                                            <%--quick-repeat-list="calendar"><button--%>
                                                            <%--class="y-button y-button_transparent ng-binding" ng-class="{--%>
                <%--'worked calendar-active-day': calendarCtrl.isEnabled(d),--%>
                <%--'worked worked-lock': calendarCtrl.isWorked(d) &amp;&amp; !calendarCtrl.isEnabled(d)--%>
            <%--}" ng-click="calendarCtrl.click(d)" ng-disabled="!calendarCtrl.isEnabled(d)" disabled="disabled">7</button></span>--%>
                                                    <%--<div style="clear:both"></div>--%>
                                                <%--</div><!-- end ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs -->--%>
                                                <%--<!-- ngIf: $ctrl.isCurrent(tab) && $ctrl.isLoaded -->--%>
                                                <%--<!-- end ngRepeat: tab in $ctrl.tabs --></div>--%>
                                            <%--<!-- end ngIf: $ctrl.isLoaded --></div>--%>
                                        <%--<div class="caption-help center-500"><p class="text-weekend ng-binding">--%>
                                            <%--Выходной</p>--%>
                                            <%--<p class="text-no-record ng-binding">Рабочий, записи нет</p>--%>
                                            <%--<p class="text-exist-record calendar-active-day ng-binding">Рабочий, запись--%>
                                                <%--есть</p></div>--%>
                                    <%--</div><!-- end ngIf: !ctrl.noDates --></div>--%>
                            <%--</yclients-record-date>--%>
                        <%--</div>--%>
                    </div>
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
