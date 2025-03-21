<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품목록</title>

    <link rel="stylesheet" href="../css/_header.css">
    <link rel="stylesheet" href="../css/_footer.css">

  <style>
    main {
        width: 100%;
        height: auto; /*수정*/
        margin: 0 auto;
    }

    main > .main_top {
        position: relative;
        width: 100%;
        height: 184px;
        background-image: url("../images/sub_top_bg.jpg");
    }

    main > .main_top > img {
        position: absolute;
        top: 137px;
        left: 10px;
    }

    main > .main_btm {
        width: 100%;
        height: auto;
        display: flex;
    }

    main > .main_btm > aside {
        position: relative;
        width: 176px;
        height: 650px;
    }

    main > .main_btm > aside > img:nth-child(1) {
        position: absolute;
        top: 16px;
        left: 16px;
    }

    main > .main_btm > aside > img:nth-child(2) {
        position: absolute;
        top: 40px;
        right: 0px;
    }

    main aside .list {
        position: absolute;
        top: 81px;
        right: 1px;
        width: 175px;
        height: 233px;
        background-image: url("../images/sub_aside_bg_lnb.png");
    }

    main aside .list > a > img {
        width: 175px;
        height: 29px;
        margin-top: 5px;
    }

    main aside .list > a:nth-child(1) > img {margin-top: 26px;}

    main .list > a:nth-child(1).on > img {background-image:url("../images/sub_cate1_lnb1_ov.png");}
    main .list > a:nth-child(2) > img:hover {background-image:url("../images/sub_cate1_lnb1_ov.png");}

    main > .main_btm > article {
        position: relative;
        width: 802px;
        min-height: 758px;
    }

    main > .main_btm > article > nav {
        position: absolute;
        left: 40px;
        width: 762px;
        height: 72px;
        border-bottom: 1px solid #C2C2C2;
        box-sizing: border-box;
        margin-bottom: 20px;
    }

    main > .main_btm nav > img {
        position: absolute;
        top: 41px;
    }

    main > .main_btm .nav_menu {
        position: absolute;
        right: 0px;
        top: 50px;
        display: flex;
    }

    main > .main_btm .nav_menu > img {width: 5px; height: 5px; margin: 6px;}
    main > .main_btm .nav_menu > p {color: #8c8c8c;}
    main > .main_btm .nav_menu span {color: #91BA15;}

    main > .main_btm .content {
        margin-left: 40px;
        margin-top: 113px;
    }

    main .content > .link > a {color: #8c8c8c;}
    main .content > .link > a:hover {color: #000;}

    main > .main_btm .content > table {
        width: 762px;
        height: 564px;
        margin-top: 10px;
        border-collapse: collapse;
        box-sizing: border-box;
    }

    main .content > table td, th {
        border-top: 1px solid #EEE;
        border-bottom: 1px solid #EEE;
        text-align: center;
        padding-left: 15px;
    }

    main .content > table th {
        height: 38px;
        background-color: #D1DEE2;
        border-top: 1px solid #000;
    }

    main .content > table td:nth-of-type(1) > img {width: 80px; height: 80px;}
    main .content > table td:nth-of-type(2) {color: #777;}
    main .content > table td:nth-of-type(3) {text-align: left;}
    main .content > table span:nth-of-type(1) {font-weight: 700;}
    main .content > table span:nth-of-type(2) {color: #777; text-decoration: line-through; }
    
    main .content > .pagination {
        margin-top: 10px;
        margin-left: 350px;
    }

    main .content > .pagination > a {color: #999;}
    main .content > .pagination > a:hover {color: #000; border-bottom: 1px solid #000;}
  
  </style>
</head>
<body>
    <div id="wrapper">
        <header>
            <img src="/farmstory/images/head_top_line.png" alt="헤더 선">
            <a href="/farmstory/main/main.do"><img src="/farmstory/images/logo.png" class="header_logo" alt="로고사진"></a>
            <img src="/farmstory/images/head_txt_img.png" alt="무료배송">
            <span class="home">
                <a href="/farmstory/main/main.do">HOME</a>&thinsp;|&thinsp;
                <a href="/farmstory/user/login.do">로그인</a>&thinsp;|&thinsp;
                <a href="/farmstory/user/terms.do">회원가입</a>&thinsp;|&thinsp;
                <a href="/farmstory/profile/updateinfo.do">나의정보</a>&thinsp;|&thinsp;
                <a href="/farmstory/user/logout.do">로그아웃</a>&thinsp;|&thinsp;
                <a href="/farmstory/admin-dashboard/dashboard.do">관리자</a>&thinsp;|&thinsp;
                <a href="#">고객센터</a>&thinsp;
            </span>
            <nav class="menu">
                <div>
                    <img src="/farmstory/images/head_menu_line.png" class="line" alt="메뉴 선">
                    <a href="/farmstory/home/greeting.do"><img src="/farmstory/images/head_menu1.png" alt="팜스토리 소개"></a>
                </div>
                <div>
                    <img src="/farmstory/images/head_menu_line.png" class="line" alt="메뉴 선">
                    <img src="/farmstory/images/head_menu_badge.png" alt="30%">
                    <a href="/farmstory/shop/product-list.do"><img src="/farmstory/images/head_menu2.png" alt="장보기"></a>
                </div>
                <div>
                    <img src="/farmstory/images/head_menu_line.png" class="line" alt="메뉴 선">
                    <a href="/farmstory/stories/farm-stories.do"><img src="/farmstory/images/head_menu3.png" alt="농작물이야기"></a>
                </div>
                <div>
                    <img src="/farmstory/images/head_menu_line.png" class="line" alt="메뉴 선">
                    <a href="/farmstory/events/event-calendar.do"><img src="/farmstory/images/head_menu4.png" alt="이벤트"></a>
                </div>
                <div>
                    <img src="/farmstory/images/head_menu_line.png" class="line" alt="메뉴 선">
                    <a href="/farmstory/community/notices.do"><img src="/farmstory/images/head_menu5.png" alt="커뮤니티"></a>
                </div>
            </nav>
        </header>
        <main>
            <section class="main_top">
                <img src="../images/sub_top_tit1.png" alt="introduction">
            </section>
            <section class="main_btm">
                <aside>
                    <img src="../images/sub_aside_cate2_tit.png" alt="장보기">
                    <img src="../images/sub_aside_bg_line.png" alt="목록선">
                    <div class="list">
                        <a href="../shop/product-list.html" class="on"><img src="../images/sub_cate2_lnb1_ov.png" alt="장보기"></a>
                    </div>
                </aside>
                <article>
                    <nav>
                        <img src="../images/sub_nav_tit_cate2_tit1.png" alt="장보기">
                        <div class="nav_menu">
                            <img src="../images/sub_page_nav_ico.gif" alt="#">
                            <p>HOME > 장보기 > <span>장보기</span></p>
                        </div>
                    </nav>
                    <div class="content">
                        <div class="link">
                            <a href="#">전체(10) | </a>
                            <a href="#">과일 | </a>
                            <a href="#">야채 | </a>
                            <a href="#">곡류</a>
                        </div>
                        <table>
                            <tr>
                                <th>이미지</th>
                                <th>종류</th>
                                <th>상품명</th>
                                <th>할인</th>
                                <th>포인트</th>
                                <th>판매가격</th>
                            </tr>
                            <tr>
                                <td><img src="../images/market_item1.jpg" alt="사과"></td>
                                <td>과일</td>
                                <td>사과 500g</td>
                                <td>10%</td>
                                <td>400p</td>
                                <td><span>3,600원 </span><span>4,000원</span></td>
                            </tr>
                            <tr>
                                <td><img src="../images/market_item2.jpg" alt="배"></td>
                                <td>과일</td>
                                <td>전남 완주 배 5kg</td>
                                <td>10%</td>
                                <td>400p</td>
                                <td><span>3,600원 </span><span>4,000원</span></td>
                            </tr>
                            <tr>
                                <td><img src="../images/market_item3.jpg" alt="방울토마토"></td>
                                <td>과일</td>
                                <td>방울 토마토</td>
                                <td>10%</td>
                                <td>400p</td>
                                <td><span>3,600원 </span><span>4,000원</span></td>
                            </tr>
                            <tr>
                                <td><img src="../images/market_item6.jpg" alt="현미"></td>
                                <td>곡류</td>
                                <td>무농약 현미</td>
                                <td>10%</td>
                                <td>400p</td>
                                <td><span>3,600원 </span><span>4,000원</span></td>
                            </tr>
                            <tr>
                                <td><img src="../images/market_item7.jpg" alt="샐러드"></td>
                                <td>야채</td>
                                <td>팜스토리 하루야채 샐러드</td>
                                <td>10%</td>
                                <td>400p</td>
                                <td><span>3,600원 </span><span>4,000원</span></td>
                            </tr>
                        </table>
                        <div class="pagination">
                            <a href="#">< </a>
                            <a href="#">[1] </a>
                            <a href="#">[2] </a>
                            <a href="#">[3] </a>
                            <a href="#">[4] </a>
                            <a href="#">[5] </a>
                            <a href="#">></a>
                        </div>
                    </div>
                 </article>   
            </section>
        </main>
        <footer>
            <img src="../images/footer_top_line.png" alt="footer_line">
            <img src="../images/footer_logo.png" alt="footer_logo">
            <p class="paragraph">
                (주)팜스토리 / 사업자등록번호 123-45-67890 / 통신판매업신고 제 2013-부산진구-123호 / 벤처기업확인 서울지방중소기업청 제 012345678-9-01234호</br>
                등록번호 팜스토리01234 (2013.04.01) / 발행인 : 홍길동</br>
                대표 : 김철학 / 이메일 : chhak0503@gmail.com / 전화 : 01) 234-5678 / 부산광역시 부산진구 부전동 123<br>
                <span class="copyright">김철학(개발에반하다) All rights reserved.</span> 
            </p>
            <p class="version">farmstory ver1.0.1</p>
        </footer>
    </div>
</body>
</html>