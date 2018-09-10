<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 07.09.2018
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


</head>
<body>
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
<img  src = "source/the-beauty-bar-logo-400px.jpg">
Выберите мастера:
<table>
    <c:forEach items="${masters}" var="item">
        <tr>
            <td><a href="Servlettest?command=schedule&master=${item}&pagenumber=1">
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

</body>
</html>
