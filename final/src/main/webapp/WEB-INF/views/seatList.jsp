<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body {
        margin: 30px;
        box-sizing: border-box;
    }

    ul {
        list-style: none;
    }

    a {
        text-decoration: none;
    }

    li.region {
        padding: 10px;
        margin: 0px auto;
        border-top: 1px solid gray;
    }

    li.theater {
        padding: 10px;
        margin: 0px auto;
        border-top: 1px solid gray;
    }

    li.movieTitle {
        padding: 20px;
        margin: 0px auto;
        border-top: 1px solid gray;
    }

    li.movieSchedule{
        padding: 15px;
        margin: 0px auto;
        border-top: 1px solid gray;
    }

    li.date {
        padding: 8px;
        margin: 0 auto;
        border-top: 1px solid gray;
    }
</style>

<body>
    <header>

        <h1 style="text-align: center;">header</h1>

    </header>
    <!-- reservationBox -->
    <div class="reservationBox" style="margin: 0 auto; width: 900px; height: 490px; border: 5px solid black;">

        <!-- regionBox -->
        <div id="regionBox" style="float: left; width: 220px;">
            <div style="border: 1px solid black; width: 218px;">
                <h1 style="text-align: center;">지역별</h1>
            </div>
            <div class="regionList">
                <div style="border: 1px solid black; overflow: hidden; height: 400px; float: left; width: 98px; overflow-y: scroll;">
                    <ul style="margin: 0px; padding: 0px;">
                        <li class="region"><b>서울</b></li>
                        <li class="region"><b>경기</b></li>
                        <li class="region"><b>인천</b></li>
                        <li class="region"><b>대구</b></li>
                        <li class="region"><b>울산</b></li>
                        <li class="region"><b>부산</b></li>
                        <li class="region"><b>서울</b></li>
                        <li class="region"><b>경기</b></li>
                        <li class="region"><b>인천</b></li>
                        <li class="region"><b>대구</b></li>
                        <li class="region"><b>울산</b></li>
                        <li class="region"><b>부산</b></li>
                    </ul>
                </div>
                <div
                    style="border: 1px solid black; overflow: hidden; width: 118px; height: 400px; float: left; overflow-y: scroll;">
                    <ul style="margin: 0px; padding: 0px;">
                        <li class="theater"><b>1호점</b></li>
                        <li class="theater"><b>2호점</b></li>
                        <li class="theater"><b>3호</b></li>
                        <li class="theater"><b>4호</b></li>
                        <li class="theater"><b>5호</b></li>
                        <li class="theater"><b>6호</b></li>
                        <li class="theater"><b>7호</b></li>
                        <li class="theater"><b>8호</b></li>
                        <li class="theater"><b>인천</b></li>
                        <li class="theater"><b>대구</b></li>
                        <li class="theater"><b>울산</b></li>
                        <li class="theater"><b>부산</b></li>

                    </ul>
                </div>
            </div>
        </div>
        <!-- regionBox end -->

        <!-- movieBox -->
        <div id="movieBox" style="float: left;">
            <div style="border: 1px solid black; width: 218px;">
                <h1 style="text-align: center;">영화목록</h1>
            </div>
            <div class="movieList">
                <div
                    style="border: 1px solid black; overflow: hidden; width: 218px; height: 400px; float: left; overflow-y: scroll;">
                    <ul style="margin: 0px; padding: 0px;">
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                        <li class="movieTitle">영화</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- movieBox end -->

        <!-- dateBox -->
        <div id="dateBox" style="float: left;">
            <div style="border: 1px solid black; width: 96px;">
                <h1 style="text-align: center;">날짜</h1>
            </div>
            <div style="border: 1px solid black; overflow: hidden; width: 96px; height: 400px; float: left; overflow-y: scroll;">
                <ul style="margin: 0px; padding: 0px;">
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                <li class="date">날짜</li>
                </ul>

            </div>
        </div>
        <!-- dateBox end -->

        <!-- timeTableBox -->
        <div id="timeTableBox" style="float: left;">
            <div style="border: 1px solid black; width: 358px;">
                <h1 style="text-align: center;">상영시간표</h1>
            </div>
            <div style="border: 1px solid black; overflow: hidden; width: 358px; height: 400px; float: left; overflow-y: scroll;">
                <ul style="margin: 0px; padding: 0px;">
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                    <li class="movieSchedule">시간대</li>
                </ul>
            </div>
        </div>
        <!-- timeTableBox end -->

    </div>
    <!-- reservationBox end -->
</body>

</html>