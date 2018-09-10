<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 05.09.2018
  Time: 13:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<c:out value="${user}, Hello!"/>
<body class="h100 light-background-color desktop"
      ng-class="{'without-header' : $root.ySettings.style.show_header === false}" data-gr-c-s-loaded="true"
      style="min-height: 326px;">

<div class="main-animated-circle-loader" style="display: none;">
</div>

<div class="y-main-foreground"></div>


<link rel="stylesheet" href="../css/vendor1535711697016.css">
<link rel="stylesheet" href="../css/application1535711697016.css">

<script src="../js/babel-polyfill.1535711700647.js"></script>
<script src="../js/vendor.1535711700647.js"></script>
<script src="../js/app.1535711700647.js"></script>

<link rel="stylesheet" href="../css/style.1535711700647.css">

<script src="../js/templates1535711697016.js"></script>


<noscript>
    <div><img src="https://mc.yandex.ru/watch/35239280" style="position:absolute; left:-9999px;" alt=""/></div>
</noscript>
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
                        <div class="h100 light-background-color y-content-wrapper y-active-view view-49196772 y-page-prepare ng-scope"
                             style="min-height: 326px;">
                            <div class="h100 y-content-wrapper">
                                <div class="h100 y-content-wrapper scrollable">
                                    <div class="container-wrapper container light-background-color h100">
                                        <div class="cover">
                                            <div ng-style="{'background-image': 'url(' + $root.headerImage + ')'}"
                                                 class="title-wrapper y-header-toolbar-wrapper"
                                                 style="background-image: url(&quot;https://w79452.yclients.com/uploads/widget_header/3/31/3114ff3abe58cba_20170828142555.jpeg&quot;);">
                                                <yclients-default-subheader class="y-subheader ng-isolate-scope">
                                                    <div class="center-500 header-breadcrumbs">
                                                        <div class="center-500 header-breadcrumbs"
                                                             y-title="$ctrl.getTitle()" y-subtitle="$ctrl.getSubtitle()"
                                                             y-description="$ctrl.getDescription()">
                                                            <div class="js-pane-0 center-500 header-breadcrumbs ng-isolate-scope"
                                                                 y-data="ctrl.data"><h1
                                                                    class="text-color-50 y-headline y-breadcrumbs-color ng-binding">
                                                                Выбор сотрудника</h1>
                                                                <h2 class="text-color-50 md-subhead">
                                                                    <!-- ngIf: data.subtitle.length --><span
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
                                        <div layout-padding="layout-padding" layout-margin="layout-margin"
                                             class="content">
                                            <yclients-record-master class="ng-isolate-scope">
                                                <y-repeat-booking type="$ctrl.repeatBookingEnum.master"
                                                                  class="ng-isolate-scope">
                                                    <!-- ngIf: $ctrl.isNeedRepeat === true -->
                                                </y-repeat-booking><!-- ngIf: ::$ctrl.defaultMasterIsAllowed() -->

                                                <div class="center-500 y-masters-list y-masters-list_mt">
<table>
<c:forEach items="${masters}" var="item">
    <tr>
    <td><a href="Servlettest?command=choosedate&master=${item}">
                                                    <!-- ngIf: $ctrl.isLoaded !== true -->
                                                    <!-- ngRepeat: master in $ctrl.masters -->
                                                    <div class="y-content-block y-block-shadow mb y-items-md-content y-master-card ng-scope"
                                                         ng-repeat="master in $ctrl.masters">
                                                        <div ng-class="::{
                'y-master-card__item_disabled': !master.bookable
            }" data-block="master.card" data-master-id="209496" data-master-name="Андрій"
                                                             ng-click="$ctrl.addMaster(master)"
                                                             ng-disabled="::!master.bookable">
                                                            <y-master-card idx="$ctrl.idx" master="master"
                                                                           company="$ctrl.company"
                                                                           class="ng-isolate-scope">
                                                                <div class="y-master-card__frame">

                                                                    <i class="warn-color master-selected-icon mdi mdi-account-check ng-hide"
                                                                       ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; $ctrl.$rootScope.ySettings.isSerialFlow"></i>


                                                                    <i class="y-icon warn-color mdi mdi-close-circle-outline remove-button ng-hide"
                                                                       ng-click="$event.stopPropagation(); $ctrl.resetMaster()"
                                                                       ng-show="$ctrl.isThisMaster($ctrl.master) &amp;&amp; !$ctrl.$rootScope.ySettings.isSerialFlow">
                                                                    </i>

                                                                    <!-- ngIf: $ctrl.isDisableCard !== true && $ctrl.company.is_charge_active === true -->


                                                                    <div class="y-master-card__column"></div>
                                                                    <div class="y-master-card__column y-master-card__action"></div>

                                                                    <div class="y-master-card__cell">
                                                                        <div class="y-master-card__column y-master-card__logo"></div>
                                                                        <div class="y-master-card__column"></div>

                                                                        <div class="y-master-card__row">
                                                                            <div class="y-master-card__cell y-master-card__logo">
                                                                                <div class="y-master-info-avatar ng-isolate-scope"
                                                                                     master="$ctrl.master"
                                                                                     is-selected="$ctrl.isThisMaster($ctrl.master)">
                                                                                    <i class="mdi mdi-information"
                                                                                       ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"></i>
                                                                                    <img ng-class="{ 'main-border-color': ctrl.isSelected }"
                                                                                         ng-click="$event.stopPropagation(); ctrl.goToMasterInfo(ctrl.master)"
                                                                                         ng-src="https://images.yclients.com/uploads/masters/sm/f/ff/ffe0f4e61aa44eb_20180612121815.png"
                                                                                         src="https://images.yclients.com/uploads/masters/sm/f/ff/ffe0f4e61aa44eb_20180612121815.png">
                                                                                </div>
                                                                            </div>

                                                                            <div class="y-master-card__cell__middle y-master-card__master-namespec">
                                                                                <h3 class="ng-binding"><c:out value="${item}"/></h3></h3>



                                                                                <!-- ngIf: $ctrl.isSlim !== undefined -->
                                                                            </div>
                                                                        </div>
                                                                        <!-- ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
                                                                                || $ctrl.master.charge == 'required'
                                                                                && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
                                                                        <div class="y-master-card__row y-master-card__row_additional-info ng-scope"
                                                                             ng-if="($ctrl.master.rating > 0 &amp;&amp; $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            &amp;&amp; $ctrl.company.is_charge_active) &amp;&amp; $ctrl.isSlim === undefined">
                                                                            <div class="y-master-card__cell">
                                                                                <!-- ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
                                                                                <div class="y-master-card__rating star-container ng-scope ng-isolate-scope"
                                                                                     ng-if="::$ctrl.master.rating > 0  &amp;&amp; $ctrl.master.show_rating"
                                                                                     count="$ctrl.master.rating"><span
                                                                                        class="fa fa-star star-gold"
                                                                                        ng-class="count>0 ? 'star-gold' : 'star-gray'"></span>
                                                                                    <span class="fa fa-star star-gold"
                                                                                          ng-class="count>1 ? 'star-gold' : 'star-gray'"></span>
                                                                                    <span class="fa fa-star star-gold"
                                                                                          ng-class="count>2 ? 'star-gold' : 'star-gray'"></span>
                                                                                    <span class="fa fa-star star-gold"
                                                                                          ng-class="count>3 ? 'star-gold' : 'star-gray'"></span>
                                                                                    <span class="fa fa-star star-gold"
                                                                                          ng-class="count>4 ? 'star-gold' : 'star-gray'"></span>
                                                                                </div>
                                                                                <!-- end ngIf: ::$ctrl.master.rating > 0  && $ctrl.master.show_rating -->
                                                                            </div>

                                                                            <div class="y-master-card__cell y-master-card__cell_relative">
                                                                                <!-- ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->



                                                                                <!-- end ngIf: ::$ctrl.master.comments_count > 0 && $ctrl.master.show_rating -->
                                                                            </div>


                                                                        </div><!-- end ngIf: ($ctrl.master.rating > 0 && $ctrl.master.show_rating
            || $ctrl.master.charge == 'required'
            && $ctrl.company.is_charge_active) && $ctrl.isSlim === undefined -->
                                                                    </div>

                                                                </div>
                                                            </y-master-card>
                                                        </div>
                                                        <!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded -->
                                                        <!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) -->

                                                        <!-- end ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) -->
                                                        <!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) -->
                                                    </div><!-- end ngRepeat: master in $ctrl.masters -->
    </a></td>
    </tr>
</c:forEach>

</table>





                                                        </div>
                                                        <!-- ngIf: master.bookable && master.seancesAreLoading && $ctrl.isLoaded -->
                                                        <!-- ngIf: !master.seancesAreLoading && master.seances.length && $ctrl.isPossibleDatetime(master) -->
                                                        <!-- ngIf: !master.seancesAreLoading && !$ctrl.isEmptyDate(master) && master.bookable && !$ctrl.isPossibleDatetime(master) -->
                                                    </div><!-- end ngRepeat: master in $ctrl.masters --></div>
                                            </yclients-record-master>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div><!-- end ngIf: !$root.appIsDisabled && $root.appIsLoaded --><!-- ngIf: $root.appIsDisabled -->
                </div>
            </yclients>
        </div>
    </div>
    <div class="nano-pane" style="display: block; opacity: 1; visibility: visible;">
        <div class="nano-slider" style="height: 51px; transform: translate(0px, 73.4589px);"></div>
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
