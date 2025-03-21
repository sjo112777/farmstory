<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
<style>
    * {
        margin: 0;
        padding: 0;
        font-family: 'Inter' sans-serif;
    }
    ul, ol {list-style: none;}
    a {text-decoration: none; color: #111;}
    header {
        position: relative;
        width: 980px;
        height: 142px;
        margin:0 auto;
        
    }
    header > img:nth-child(1) {
        position: absolute;
        top: 20px;
        left: 395px;
    }
    header > img:nth-child(2) {
        position: absolute;
        top: 59px;
        left: 751px;
    }
    header > .home {
        position: absolute;
        top: 17px;
        right: 5px;
        display: flex;
        font-weight: 400;
        font-size: 12px;
    }
    header > nav {
        position: absolute;
        width: 100%;
        height: 50px;
        top: 92px;
        display: flex;
        padding: 0 1px; /*임의 설정값*/
        box-sizing: border-box;
    }
    .nav_item {
        position: relative;
        width: 196px;
        height: 50px;
    }
    .nav_item > img {
        position: absolute;
        margin-top: -5px; /*임의 설정값*/
    }
    .nav_item > a{
        display: block;
        width: 100%;
        height: 100%;
        text-align: center;
        line-height: 50px;
        font-weight: bold;
    }

    .nav_item > ul{
        position: absolute;
        display: block;
        width: 50%;
        height: 100%;
        bottom: 17px;
        left: 95px;
      
        
    }
    .nav_item  > a:hover{
    }
    main {
        width: 980px;
        height: auto;
        margin: 0 auto;
    }

    
    main > .main_top {
        width: 100%;
        height: 184px;
        background-image: url("/farmstory/images/sub_top_bg.jpg");
        position: relative;
    }
    main > .main_top > img {
        position: absolute;
        top: 137px;
        left: 10px;
    }
    main > .main_btm {
        width: 100%;
        height: 650px;
    }
    main > .main_btm > aside {
        position: relative;
        float: left;
        width: 176px;
        height: 100%;
        /*그림자*/
    }
    main > .main_btm > aside > img:nth-child(1) {
        position: absolute;
        top: 16px;
        left: 16px;
    }
    main > .main_btm > aside > img:nth-child(2) {
        position: absolute;
        top: 40px; /*임의 설정값*/
        right: 0px;
    }
    
    main aside .list {
        position: absolute;
        width: 175px;
        height: 233px;
        background-image: url("/farmstory/images/sub_aside_bg_lnb.png");
        top: 81px;
        right: 1px; /*임의 설정값*/
    }
    main aside .list li {
        position: absolute;
        width: 175px;
        height: 26px;
        margin-top: 20px;
    }
    /*====================*/
    
    main aside .list li:hover{background-image: url("/farmstory/images/sub_cate4_lnb1_ov.png");}
 
    /*====================*/
    main > .main_btm > article {
        position: relative;
        width: 802px;
        height: 100%;
        float: right;
        
    }
    main > .main_btm > article > nav {
        position: absolute;
        width: 762px;
        height: 72px;
        left: 40px;
        border-bottom: 1px solid #C2C2C2;
        box-sizing: border-box;
        margin-bottom: 20px;
    }
    main > .main_btm > article > nav > img {
        position: absolute;
        top: 41px;
        font-weight: 700;
        display: flex;
    }
    main > .main_btm  nav > div {
        position: absolute;
        display: flex;
        align-items: center;
        width: auto;
        top: 44px;
        right: 5px;
    }
    main > .main_btm  nav > div > ul {
       padding-right: 4px;
       padding-bottom: 7px;
    }
    main > .main_btm > article > nav a {
        font-size: 12px;
        font-weight: 400;
        color: #8C8C8C;
    }

    /* ================== 달력 컨테이너 ================== */
article > .calendar_container {
    position: absolute;
    width: 765px;
    height: 631px;
    top: 80px;
    left: 38px;
    margin-top: 20px;
    text-align: center;
}

/* ====== 달력 헤더 (월/년 & 네비게이션 버튼) ====== */
article > .calendar_container > .header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px;
    font-size: 18px;
}

/* 월/년 텍스트 스타일 */
article > .calendar_container > .header > .month_year_wrapper {
    font-size: 20px;
    font-weight: bold;
}

/* 버튼 스타일 */
article > .calendar_container > .header > .nav_button {
    display: flex;
    align-items: center;
    
}

article > .calendar_container > .header > .nav_button > .btn_today {
    margin-right: 15px; /* Today 버튼만 오른쪽 간격 추가 */
    background-color: gray;
    color : white;
    padding: 4px 4px;
    
}


article > .calendar_container > .header > .nav_button > .btn {
    margin : 0;
    background-color: black;
    color : white;
    padding : 6px 12px;
    
}



/* ====== 달력 테이블 컨테이너 (요일 + 날짜 테이블 포함) ====== */
article > .calendar_container > .calendar_table_container {
    width: 100%;
    border: 1px solid #ddd;
}

/* ====== 달력 테이블 ====== */
article > .calendar_container > .calendar_table_container > .calendar_table {
    width: 100%;
    border-collapse: collapse;
}

/* 요일 스타일 (thead 높이를 tbody의 1/4로 설정) */
article > .calendar_container > .calendar_table_container > .calendar_table > thead > tr > th {
    height: 15px; /* 요일 높이 */
    padding: 10px;
    font-size: 14px;
    border: 1px solid #ddd;
    
}

/* 날짜 스타일 (tbody 높이) */
article > .calendar_container > .calendar_table_container > .calendar_table > tbody > tr > td {
    width: 14.28%;
    height: 65px;
    border: 1px solid #ddd;
    vertical-align: top;
    text-align: left;
    padding: 5px;
    position: relative;
}

/* 날짜 숫자를 오른쪽 위로 정렬 */
article > .calendar_container > .calendar_table_container > .calendar_table > tbody > tr > td > .date-number {
    position: absolute;
    top: 5px;
    right: 5px;
    font-size: 14px;
    font-weight: bold;
}

/* 오늘 날짜 스타일 */
.today {
    background-color: yellow !important;
}

/* 공휴일 스타일 */
.holiday {
    color: white;
    background-color: red;
    font-weight: bold;
    border: 1px solid red; /* 빨간색 테두리 */
    padding: 2px 25px; /* 안쪽 여백 */
    border-radius: 4px; /* 모서리 둥글게 */
    display: inline-block;
    font-size: 12px; /* 글자 크기 조정 */
    margin-top: 5px;
    text-align: center;
}


/* 스케줄이 있는 날짜 칸 전체 스타일 */
.schedule-cell {
    background-color: #d0e8ff !important; /* 기존 lightblue보다 더 부드러운 블루 */
    border: 1px solid #87CEEB; /* 연한 파란색 테두리 */
}

/* 스케줄이 있는 날짜 스타일 */
.schedule {
    background-color: #add8e6; /* 기존 lightblue보다 약간 진한 블루 계열 */
    border: 1px solid #87CEEB; /* 파란색 테두리 추가 */
    font-weight: bold;
    color: #000080; /* 글씨 색 어두운 네이비 */
    padding: 2px;
    border-radius: 4px; /* 모서리 둥글게 */
    text-align: center;
    display: inline-block;
    width: auto;
    margin-top: 5px;
}

   
.gray-out {
    color: lightgray !important;
}


    footer {
        position: relative;
        width: 980px;
        height: 120px;
        margin: 0 auto;
        box-sizing: border-box;
    }
    footer > img {
        position: absolute;
        top: 1px;
    }
    footer > div {
        position: absolute;
        width: 709.48px;
        height: 71px;
        top: 27px;
        left: 254.52px;
    }
    footer > div > p {
        font-weight: 400;
    }
    footer > div > .farmstory {
        width: 100%;
        height: 48px;
        position: absolute;
        top: 3px;
        font-size: 10.31px;
        line-height: 18px;
        color: #585858;
    }
    footer > div > .copyright {
        width: 272.5px;
        height: 14px;
        position: absolute;
        top: 55px;
        font-size: 11.06px;
        line-height: 13.39px;
        color: #888;
    }
    footer > div > .ver {
        width: 89.18px;
        height: 14px;
        position: absolute;
        top: 54px;
        left: 620.5px;
        font-size: 10.69px;
        line-height: 12.93px;
        color: #888;
    }
</style>





</head>
<body>
    <header>
        <img src="/farmstory/images/logo.png" alt="로고사진">
        <img src="/farmstory/images/head_txt_img.png" alt="무료배송">
        <span class="home">
            <a href="#">HOME</a>&thinsp;|&thinsp;
            <a href="#">로그인</a>&thinsp;|&thinsp;
            <a href="#"></a>회원가입</a>&thinsp;|&thinsp;
            <a href="#"></a>나의정보</a>&thinsp;|&thinsp;
            <a href="#"></a>로그아웃</a>&thinsp;|&thinsp;
            <a href="#"></a>관리자</a>&thinsp;|&thinsp;
            <a href="#"></a>고객센터</a>
        </span>
        <nav>
            <div class="nav_item">
                <img src="/farmstory/images/head_menu_line.png" alt="item">
                <a href="#">팜스토리소개</a>
            </div>
            <div class="nav_item">
                <img src="/farmstory/images/head_menu_line.png" alt="item">
                <ul>
                    <img src="/farmstory/images/head_menu_badge.png" alt="item">
                </ul>
                <a href="#">장보기</a>
            </div>
            <div class="nav_item">
                <img src="/farmstory/images/head_menu_line.png" alt="item">
                <a href="#">농작물이야기</a>
            </div>
            <div class="nav_item">
                <img src="/farmstory/images/head_menu_line.png" alt="item">
                <a href="#">이벤트</a>
            </div>
            <div class="nav_item">
                <img src="/farmstory/images/head_menu_line.png" alt="item">
                <a href="#">커뮤니티</a>
            </div>
        </nav>
    </header>
    <main>
        <div class="main_top">
            <img src="/farmstory/images/sub_top_tit4.png" alt="event">
        </div>
        <section class="main_btm">
            <aside>
                <img src="/farmstory/images/sub_aside_cate4_tit.png" alt="이벤트">
                <img src="/farmstory/images/sub_aside_bg_line.png" alt="목록선">
                <div class="list">
                        <ul>
                            <li> <a href="/farmstory/profile/update-info.html"><img src="/farmstory/images/sub_cate4_lnb1.png" alt=""></a></li>
                        </ul>
                </div>
            </aside>
            <article>
                <nav>
                    <img src="/farmstory/images/sub_nav_tit_cate4_tit1.png" alt="이벤트">
                    <div>
                        <ul>
                            <img src="/farmstory/images/sub_page_nav_ico.gif" alt="#">
                        </ul>
                        <a href="#"> HOME > </a>
                        <a href="#">이벤트 > </a>
                        <a href="#">이벤트</a>
                    </div>
                </nav>

                <!--달력-->
                <div class="calendar_container">
                    <div class="header">
                        <div class="month_year_wrapper">
                            <div class="month_year" id="monthYear"></div>
                        </div>
                        
                        <div class="nav_button">
                            <button class="btn_today" onclick="goToday()">Today</button>
                            <button class="btn" onclick="prevMonth()">&lt;</button>
                            <button class="btn" onclick="nextMonth()">&gt;</button>
                        </div>
                    </div>

                   <!-- 달력 -->


    <!-- 요일 & 날짜 테이블을 함께 포함하는 div -->
    <div class="calendar_table_container">
        <table class="calendar_table">
            <thead>
                <tr>
                    <th>Sun</th>
                    <th>Mon</th>
                    <th>Tue</th>
                    <th>Wed</th>
                    <th>Thu</th>
                    <th>Fri</th>
                    <th>Sat</th>
                </tr>
            </thead>
            <tbody id="calendarBody"></tbody>
        </table>
    </div>
</div>



            </article>
        </section>
    </main>
    <footer>
        <img src="/farmstory/images/footer_logo.png">
        <div>
            <p class="farmstory">(주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호</br>
                등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동</br>
                대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123
            </p>
            <p class="copyright">
                copyrightⓒ 김철학(개발에반하다) All rights reserved.
            </p>
            <p class="ver">
                farmstory ver1.0.1
            </p>
        </div>
    </footer>


    <script>

   
    	
    	
            // ✅ 날짜를 YYYY-MM-DD 형식으로 변환하는 함수 (최상단에 추가)
            function formatDate(year, month, day) {
                return `${year}-${String(month).padStart(2, '0')}-${String(day).padStart(2, '0')}`;
            }

            // 현재 날짜 객체 생성
            let today = new Date();
            let currentMonth = today.getMonth();
            let currentYear = today.getFullYear();

            // HTML 요소 가져오기
            const monthYearText = document.getElementById("monthYear");
            const calendarBody = document.getElementById("calendarBody");

            // ✅ 공휴일 데이터 (YYYY-MM-DD 형식)
            const holidays = {
                "2025-01-28": "설날",
                "2025-01-29": "설날",
                "2025-01-30": "설날",
                "2025-03-01": "삼일절"
                
            };

            // 스케줄 저장 객체
            let scheduleData = {};

            // 달력 렌더링 함수
            function renderCalendar(year, month) {
                const monthNames = [
                    "January", "February", "March", "April", "May", "June",
                    "July", "August", "September", "October", "November", "December"
                ];

        // 월 & 연도 업데이트
        monthYearText.innerText = `${monthNames[month]} ${year}`;

        // 달력 초기화
        calendarBody.innerHTML = "";

        // 해당 월의 첫 번째 날짜와 마지막 날짜 계산
        let firstDay = new Date(year, month, 1).getDay(); // 시작 요일 (0=일요일)
        let lastDate = new Date(year, month + 1, 0).getDate(); // 현재 달의 마지막 날짜
        let prevLastDate = new Date(year, month, 0).getDate(); // 지난달 마지막 날짜

        let date = 1;
        let nextMonthDate = 1;
        let addedDays = 0; // 추가된 날짜 개수 (지난달 + 이번달 + 다음달)

        for (let i = 0; i < 6; i++) {
            let row = document.createElement("tr");

            for (let j = 0; j < 7; j++) {
                let cell = document.createElement("td");
                let fullDate;

                if (addedDays < firstDay) {
                    // 지난달 날짜 추가
                    let pastDate = prevLastDate - firstDay + j + 1;
                    fullDate = formatDate(year, month, pastDate); // 지난달 날짜 변환
                    cell.innerHTML = `<div class="date-number gray">${pastDate}</div>`;
                    cell.classList.add("gray-out");
                    addedDays++;
                } else if (date > lastDate) {
                    // 다음달 날짜 추가
                    fullDate = formatDate(year, month + 2, nextMonthDate); // 다음달 날짜 변환
                    cell.innerHTML = `<div class="date-number gray">${nextMonthDate}</div>`;
                    cell.classList.add("gray-out");
                    nextMonthDate++;
                } else {
                    // 이번달 날짜 추가
                    fullDate = formatDate(year, month + 1, date); // 현재 날짜 변환

                    let dateNum = document.createElement("div");
                    dateNum.classList.add("date-number");
                    dateNum.innerText = date;
                    cell.appendChild(dateNum);

                    // ✅ 오늘 날짜 강조
                    if (year === today.getFullYear() && month === today.getMonth() && date === today.getDate()) {
                        cell.classList.add("today");
                    }

                    // ✅ 공휴일 표시 (YYYY-MM-DD 형식으로 비교)
                    if (holidays[fullDate]) {
                        let holidayText = document.createElement("div");
                        holidayText.classList.add("holiday");
                        holidayText.innerText = holidays[fullDate];
                        cell.appendChild(holidayText);
                    }

                    // ✅ 스케줄이 있는 경우 표시
                    if (scheduleData[fullDate]) {
                        let scheduleText = document.createElement("div");
                        scheduleText.classList.add("schedule");
                        scheduleText.innerText = scheduleData[fullDate];
                        cell.appendChild(scheduleText);

                        // ✅ 해당 날짜 칸에 `.schedule-cell` 클래스 추가
                        cell.classList.add("schedule-cell");
                    }

                    // ✅ 날짜 클릭 시 스케줄 추가
                    cell.onclick = function() {
                        let eventTitle = prompt("스케줄 제목을 입력하세요:");
                        if (eventTitle) {
                            scheduleData[fullDate] = eventTitle;
                            renderCalendar(currentYear, currentMonth);
                        }
                    };

                    date++;
                }
                row.appendChild(cell);
            }
            calendarBody.appendChild(row);
    }
}

                // 오늘 날짜로 이동하는 함수
                function goToday() {
                    today = new Date();
                    currentMonth = today.getMonth();
                    currentYear = today.getFullYear();
                    renderCalendar(currentYear, currentMonth);
                }

                // 이전 달 이동 함수
                function prevMonth() {
                    currentMonth--;
                    if (currentMonth < 0) {
                        currentMonth = 11;
                        currentYear--;
                    }
                    renderCalendar(currentYear, currentMonth);
                }

                // 다음 달 이동 함수
                function nextMonth() {
                    currentMonth++;
                    if (currentMonth > 11) {
                        currentMonth = 0;
                        currentYear++;
                    }
                    renderCalendar(currentYear, currentMonth);
                }

                // ✅ 초기 달력 렌더링
                renderCalendar(currentYear, currentMonth);

    

    </script>


</body>
</html>