<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품상세보기</title>

    <link rel="stylesheet" href="../css/_header.css">
    <link rel="stylesheet" href="../css/_footer.css">

  <style>
    main {
        width: 100%;
        height: auto; /*수정*/
        margin: 10px 0;
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
        height: 2095px;
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
        min-height: 743px;
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


   
    main > .main_btm > article > p:nth-of-type(1) {
        position: absolute;
        left: 40px;
        top: 113px;
        font-weight: 700;
        font-size: 16px;
        color: #000;
    }
    main > .main_btm .content > div {
        position: absolute;
        width: 762px;
        height: 270px;
        top: 143px;
        left: 40px;
    }

    main > .main_btm .content .berry {
        position: absolute;
        width: 240px;
        height: 240px;
        top: 0px;
        left: 0px;
    }

    main > .main_btm .content table {
        position: absolute;
        width: 457.19px;
        height: 200px;
        top: 0px;
        right: 0px;
        border-collapse: collapse;
        border-top: 2px solid #E7E7E7;
        border-bottom: 2px solid #E7E7E7;
        box-sizing: border-box;
    }

    main > .main_btm .content table > td {color: #000;}
    main > .main_btm .content table span {color: #8c8c8c;}

    main > .main_btm .content table .count {
        width: 64px;
        height: 19px;
        border: 1px solid #767676; 
        border-radius: 3px;
        box-sizing: border-box;
    }

    main > .main_btm .content table .sum {
        color: #c20a0a;
        font-weight: 700;
    }

    main > .main_btm .content a:nth-of-type(1) {
        position: absolute;
        top: 210px;
        left: 559px;
        width: 100px;
        height: 40px;
        text-align: center;
        line-height: 40px;
        background-color: #769B0A;
        color: #FFF;
    }

    main > .main_btm .content a:nth-of-type(2) {
        position: absolute;
        top: 210px;
        left: 662px;
        width: 100px;
        height: 40px;
        text-align: center;
        line-height: 40px;
        background-color: #960D1A;
        color: #FFF;
    }
    
    main > .main_btm > article > p:nth-of-type(2) {
        position: absolute;
        top: 424px;
        left: 40px;
        font-weight: 700;
        font-size: 16px;
        color: #000;
    }

    main > .main_btm > article > .sample {
        position: absolute;
        width: 750px;
        height: 1387px;
        top: 454px;
        left: 40px;
    }
    
    main > .main_btm > article > .container {
        position: absolute;
        width: 750px;
        height: auto;
        top: 1856px;
        left: 40px;
        color: #000;
    }

    main > .main_btm > article > .container > p:nth-child(1) {
        position: absolute;
        top: 0px;
        font-weight: 700;
        font-size: 16px;
    }
   
    main > .main_btm > article > .container > p:nth-child(2) {
        position: absolute;
        top: 31px;
    }

    main > .main_btm > article > .container > p:nth-child(3) {
        position: absolute;
        top: 58px;
        font-weight: 700;
        font-size: 16px;
    }

    main > .main_btm > article > .container > table {
        position: absolute;
        top: 88.5px;
        width: 762px;
        height: 150px;
        box-sizing: border-box;
        border-spacing: 0;
    }

    main > .main_btm .container > table td {border: 1px solid #ccc;}
    main > .main_btm .container > table td:nth-of-type(1) {border-left: none;}
    main > .main_btm .container > table td:nth-of-type(2) {border-right: none;}

    main > .main_btm .container > table td {
        padding-left: 10px;
    }

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
                    <p>기본정보</p>
                <div class="content">
                    <div>
                        <img src="../images/market_item_thumb.jpg"  class="berry" alt="딸기">
                        <table>
                            <tr>
                                <td>상품명</td>
                                <td>딸기 500g</td>
                            </tr>
                            <tr>
                                <td>상품코드</td>
                                <td>01</td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>5,000원&nbsp;<span>3만원 이상 무료배송</span></td>
                            </tr>
                            <tr>
                                <td>판매가격</td>
                                <td>4,000원</td>
                            </tr>
                            <tr>
                                <td>구매수량</td>
                                <td><input type="text" class="count" value="1"></td>
                            </tr>
                            <tr>
                                <td>합계</td>
                                <td class="sum">4,000원</td>
                            </tr>
                        </table>
                        <a href="#">장바구니</a>
                        <a href="#">바로구매</a>
                    </div>
                </div>
                <p>상품설명</p>
                <img src="../images/market_detail_sample.jpg" class="sample" alt="상세보기">
                <div class="container">
                    <p>배송정보</p>
                    <p>입금하신 이후 택배송장번호는 SMS(문자서비스)를 통해 고객님께 안내해드립니다.</p>
                    <p>교환/반품</p>
                    <table>
                        <tr>
                            <td>교환 반품이 가능한 경우</td>
                            <td>팜스토리 상품에 하자가 있거나 불량인 경우<br>
                                채소, 과일, 양곡등의 식품은 만1일 이내<br>
                                기타 상품은 수령일로부터 영업일 기준 일주일 이내<br>
                                받으신 상품이 표시사항과 다른 경우에는 받으신 날로부터 일주일 이내
                            </td>
                        </tr>
                        <tr>
                            <td>교환 반품이 불가능한 경우</td>
                            <td>신선 식품의 경우 단순히 마음에 들지 않는 경우<br>
                                단순 변심으로 상품이 가치가 훼손돼서 판매가 어려운 경우
                            </td>
                        </tr>
                    </table>
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