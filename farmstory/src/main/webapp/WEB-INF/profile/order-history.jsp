<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문내역</title>

    <link rel="stylesheet" href="/farmstory/css/_header.css">
    <link rel="stylesheet" href="/farmstory/css/_footer.css">

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
        background-image: url("/farmstory/images/myinfo/myinfo_top_bg.jpg");
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
        right: 2px;
        width: 175px;
        height: 233px;
        background-image: url("/farmstory/images/sub_aside_bg_lnb.png");
    }

    main aside .list > a > img {
        width: 175px;
        height: 29px;
        margin-top: 5px;
    }

    main aside .list > a:nth-child(1) > img {margin-top: 26px;}

    main .list > a:nth-child(1) > img:hover {background-image:url("/farmstory/images/myinfo/myinfo_menu1_ov.png");}
    main .list > a:nth-child(3) > img:hover {background-image:url("/farmstory/images/myinfo/myinfo_menu3_ov.png");}

    main > .main_btm > article {
        position: relative;
        width: 802px;
        min-height: 747px;
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
        margin-top: 113px;
        margin-left: 40px;
    }

    main > .main_btm .content > table {
        margin-top: 10px;
        width: 762px;
        height: 167px;
        border-collapse: collapse;
        box-sizing: border-box;
    }

    main > .main_btm .content > table td {
        height: 85px;
        border-top: 1px solid #E5ECEF;
        border-bottom: 1px solid #E5ECEF;
        text-align: center;
        padding-left: 5px;
    }

    main > .main_btm .content > table th {
        height: 41px;
        color: #000;
        background-color: #E5ECEF;
        border-top: 1px solid #111;
    }

    main .content > table tr:nth-of-type(2) > td {height: 40px;}
    main .content > table .sample {width: 60px; height: 60px;}

    main .page {
        display: flex;
        gap: 5px;
        margin-top: 10px;
        margin-left: 297px;
        align-items: center;
    }

    main .page > a {
        display: block;
        width: 24px;
        height: 33px;
        background-color: #f2f2f2;
        border: 1px solid #d7d7d7;
        text-align: center;
        line-height: 33px;
    }

    main .page > .prev, 
    main .page > .next {
        width: 42px;
        height: 35px;
        line-height: 35px;
    }

    main .page > :hover {background-color: #888; border:1px solid #6d6d6d; color: #fff;}

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
                <img src="/farmstory/images/myinfo/myinfo_top_tit.png" alt="my info">
            </section>
            <section class="main_btm">
                <aside>
                    <img src="/farmstory/images/myinfo//myinfo_menu_tit.png" alt="나의정보">
                    <img src="/farmstory//images/sub_aside_bg_line.png" alt="목록선">
                    <div class="list">
                        <a href="/farmstory//profile/cart.do"><img src="/farmstory/images/myinfo/myinfo_menu1.png" alt="장바구니"></a>
                        <a href="/farmstory//profile/orderhistory.do"><img src="/farmstory/images/myinfo/myinfo_menu2_ov.png" alt="주문내역"></a>
                        <a href="/farmstory//profile/updateinfo.do"><img src="/farmstory/images/myinfo/myinfo_menu3.png" alt="정보수정"></a>
                    </div>
                </aside>
                <article>
                    <nav>
                        <img src="/farmstory/images/sub_nav_tit_cate2_tit1.png" alt="장보기">
                        <div class="nav_menu">
                            <img src="/farmstory/images/sub_page_nav_ico.gif" alt="#">
                            <p>HOME > 나의정보 > <span>주문내역</span></p>
                        </div>
                    </nav>
                    <div class="content">
                        <table>
                                <tr>
                                    <th>주문번호</th>
                                    <th>이미지</th>
                                    <th>상품명</th>
                                    <th>판매가격</th>
                                    <th>수량</th>
                                    <th>합계</th>
                                    <th>주문자</th>
                                    <th>주문일</th>
                                    <th>확인</th>
                                </tr>
                                <tr>
                                    <td colspan="9" class="empty">상품 구매 내역이 없습니다.</td>
                                </tr>
                                <tr>
                                    <td>1001</td>
                                    <td><img src="/farmstory/images/market_item1.jpg" class="sample" alt="사과"></td>
                                    <td>사과<br>500g</td>
                                    <td>4,000<br>원</td>
                                    <td>2</td>
                                    <td>11,000<br>원</td>
                                    <td>김유신</td>
                                    <td>2023-01-11 13:06:14</td>
                                    <td>[상세확인]</td>
                                </tr>
                        </table>
                    </div>
                    <div class="page">
                        <a href="#" class="prev">이전</a>
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#" class="next">다음</a>
                    </div>
                 </article>   
            </section>
        </main>
        <footer>
            <img src="/farmstory/images/footer_top_line.png" alt="footer_line">
            <img src="/farmstory/images/footer_logo.png" alt="footer_logo">
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