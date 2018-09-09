<%--
  Created by IntelliJ IDEA.
  User: nadezhdavlasenko
  Date: 08.09.2018
  Time: 19:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
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
<body>
<div id="example">
    <div id="team-schedule">
        <div id="people">
            <input checked type="checkbox" id="alex" aria-label="Alex" value="1">
            <input checked type="checkbox" id="bob" aria-label="Bob" value="2">
            <input type="checkbox" id="charlie" aria-label="Charlie" value="3">
        </div>
    </div>
    <div id="scheduler"></div>
</div>
<script>
    $(function() {
        $("#scheduler").kendoScheduler({
            date: new Date("2013/6/13"),
            startTime: new Date("2013/6/13 10:00"),
            endTime: new Date("2013/6/13 23:00"),
            height: 600,
            views: ["day", "agenda"],
            editable: false,
            eventTemplate: $("#event-template").html(),
            dataSource: [
                {
                    title: "Fast and furious 6",
                    image: "../content/web/scheduler/fast-and-furious.jpg",
                    imdb: "http://www.imdb.com/title/tt1905041/",
                    start: new Date("2013/6/13 17:00"),
                    end: new Date("2013/6/13 18:30")
                },
                {
                    title: "The Internship",
                    image: "../content/web/scheduler/the-internship.jpg",
                    imdb: "http://www.imdb.com/title/tt2234155/",
                    start: new Date("2013/6/13 14:00"),
                    end: new Date("2013/6/13 15:30")
                },
                {
                    title: "The Perks of Being a Wallflower",
                    image: "../content/web/scheduler/wallflower.jpg",
                    imdb: "http://www.imdb.com/title/tt1659337/",
                    start: new Date("2013/6/13 16:00"),
                    end: new Date("2013/6/13 17:30")
                },
                {
                    title: "The Help",
                    image: "../content/web/scheduler/the-help.jpg",
                    imdb: "http://www.imdb.com/title/tt1454029/",
                    start: new Date("2013/6/13 12:00"),
                    end: new Date("2013/6/13 13:30")
                },
                {
                    title: "Now You See Me",
                    image: "../content/web/scheduler/now-you-see-me.jpg",
                    imdb: "http://www.imdb.com/title/tt1670345/",
                    start: new Date("2013/6/13 10:00"),
                    end: new Date("2013/6/13 11:30")
                },
                {
                    title: "Fast and furious 6",
                    image: "../content/web/scheduler/fast-and-furious.jpg",
                    imdb: "http://www.imdb.com/title/tt1905041/",
                    start: new Date("2013/6/13 19:00"),
                    end: new Date("2013/6/13 20:30")
                },
                {
                    title: "The Internship",
                    image: "../content/web/scheduler/the-internship.jpg",
                    imdb: "http://www.imdb.com/title/tt2234155/",
                    start: new Date("2013/6/13 17:30"),
                    end: new Date("2013/6/13 19:00")
                },
                {
                    title: "The Perks of Being a Wallflower",
                    image: "../content/web/scheduler/wallflower.jpg",
                    imdb: "http://www.imdb.com/title/tt1659337/",
                    start: new Date("2013/6/13 17:30"),
                    end: new Date("2013/6/13 19:00")
                },
                {
                    title: "The Help",
                    image: "../content/web/scheduler/the-help.jpg",
                    imdb: "http://www.imdb.com/title/tt1454029/",
                    start: new Date("2013/6/13 13:30"),
                    end: new Date("2013/6/13 15:00")
                },
                {
                    title: "Now You See Me",
                    image: "../content/web/scheduler/now-you-see-me.jpg",
                    imdb: "http://www.imdb.com/title/tt1670345/",
                    start: new Date("2013/6/13 12:30"),
                    end: new Date("2013/6/13 14:00")
                }
            ]
        });
    });
</script>
<style>

    .k-nav-current > .k-link span + span {
        max-width: 200px;
    }

    #team-schedule {
        /*background: url('../content/web/scheduler/team-schedule.png') transparent no-repeat;*/
        height: 115px;
        position: relative;
    }

    #people {
        /*background: url('../content/web/scheduler/scheduler-people.png') no-repeat;*/
        width: 345px;
        height: 115px;
        position: absolute;
        right: 0;
    }
    #alex {
        position: absolute;
        left: 4px;
        top: 81px;
    }
    #bob {
        position: absolute;
        left: 119px;
        top: 81px;
    }
    #charlie {
        position: absolute;
        left: 234px;
        top: 81px;
    }
</style>
</body>
</html>
