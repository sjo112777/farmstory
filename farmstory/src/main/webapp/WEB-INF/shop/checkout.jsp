<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문하기</title>

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
        min-height: 920.75px;
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
        margin-top: 113px;
    }

    main > .main_btm .content > table {
        margin-top: 10px;
        width: 762px;
        height: 332px;
        border-collapse: collapse;
        box-sizing: border-box;
    }

    main > .main_btm .content > table td, th {
        height: 85px;
        border-top: 1px solid #EEE;
        border-bottom: 1px solid #EEE;
        text-align: center;
        color: #777;
        padding-left: 18px;
    }

    main > .main_btm .content th {
        height: 38px;
        color: #000;
        background-color: #E5ECEF;
        border-top: 1px solid #111;
    }

    main .content > table tr:nth-of-type(2) > td {height: 38px;}
    main .content > table .sample {width: 60px; height: 60px;}
    main .content > table td:nth-of-type(4) {color: #000;}
    main .content > table .point {color: #000; font-weight: 700;}
    main .content > table tr:nth-of-type(5) > td {border-bottom: 1px solid #111;}

    main article .order {
        position: absolute;
        right: 1px;
        margin-top: 10px;
        width: 304.8px;
        height: 262px;
        border: 1px solid #D7d7d7;
        box-sizing: border-box;
        padding: 7px;
    }

    main article .order > table {
        width: 290.8px;
        height: 201px;
        border-top: 1px solid #111;
        border-bottom: 1px solid #111;
        box-sizing: border-box;
    }
    
    main article .order > table tr:nth-of-type(1) > td {text-align: center;}
    main article .order > table  td, th {padding-left: 15px;}
    main article .order > table .point {color: #c20A0A; font-weight: 700;}

    main article .order > .order_btn {
        width: 290.8px;
        height: 37px;
        margin-top: 7px;
        background-color: #960D1A;
        border: none;
        color: #fff;
    }

    main article > .info {
        margin-top: 10px;
        margin-left: 40px;
    }

    main article > .info >  table {
        width: 447.19px;
        height: 440.75px;
        margin-top: 10px;
        border-collapse: collapse;
        box-sizing: border-box;
    }

    main .info > table td {
        border-top: 1px solid #D7d7d7;
        border-bottom: 1px solid #D7d7d7;
        padding: 6px;
    }

    main .info > table td:nth-of-type(1) {
        width: 80px;
        background-color: #F7F7F7;
    }

    main .info > table tr:nth-of-type(1) > td:nth-of-type(1) {border-top: 1px solid  #c20A0A;}
    main .info > table tr:nth-of-type(1) > td:nth-of-type(2) {border-top: 1px solid #960D1A;}
    main .info > table input, textarea {border: 1px solid #D7D7D7;}
    main .info > table button {height: 20px;}
    main .info > table .addr button {border: none; width: 91px;}
    main .info > table .addr input:nth-of-type(2) {width: 322px;}
    main .info > table .addr input:nth-of-type(3) {width: 322px;}
    main .info > table textarea {width: 322px; height: 62px;}

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
                        <p>주문상품 전체(10)</p>
                        <table>
                                <tr>
                                    <th><input type="checkbox"></th>
                                    <th>이미지</th>
                                    <th>종류</th>
                                    <th>상품명</th>
                                    <th>수량</th>
                                    <th>할인</th>
                                    <th>포인트</th>
                                    <th>가격</th>
                                    <th>소계</th>
                                </tr>
                                <tr>
                                    <td colspan="9" class="empty">장바구니에 상품이 없습니다</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td><img src="../images/market_item1.jpg" class="sample" alt="사과"></td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>1</td>
                                    <td>10%</td>
                                    <td>40P</td>
                                    <td>4,000원</td>
                                    <td><span class="point">3,600</span>원</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td><img src="../images/market_item1.jpg" class="sample" alt="사과"></td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>1</td>
                                    <td>10%</td>
                                    <td>40P</td>
                                    <td>4,000원</td>
                                    <td><span class="point">3,600</span>원</td>
                                </tr>
                                <tr>
                                    <td><input type="checkbox"></td>
                                    <td><img src="../images/market_item1.jpg" class="sample" alt="사과"></td>
                                    <td>과일</td>
                                    <td>사과 500g</td>
                                    <td>1</td>
                                    <td>10%</td>
                                    <td>40P</td>
                                    <td>4,000원</td>
                                    <td><span class="point">3,600</span>원</td>
                                </tr>
                        </table>
                    </div>
                    <div class="order">
                        <table>
                            <tr>
                                <td colspan="2">전체합계</td>
                            </tr>
                            <tr>
                                <td class="a">상품수</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>상품금액</td>
                                <td>27,000</td>
                            </tr>
                            <tr>
                                <td>할인금액</td>
                                <td>5,000</td>
                            </tr>
                            <tr>
                                <td>배송비</td>
                                <td>5,000</td>
                            </tr>
                            <tr>
                                <td>포인트</td>
                                <td>4,000</td>
                            </tr>
                            <tr>
                                <td>전체주문금액</td>
                                <td class="point">22,000</td>
                            </tr>
                        </table>
                        <button type="submit" class="order_btn">주문하기</button>
                    </div>
                    <div class="info">
                        <span>주문정보 입력</span>
                        <table>                        
                            <tr>
                                <td>주문자</td>
                                <td><input type="text" name="name"/></td>
                            </tr>
                            <tr>
                                <td>휴대폰</td>
                                <td><input type="tel" name="phone"/></td>
                            </tr>
                            <tr>
                                <td>포인트사용</td>
                                <td>
                                    <input type="number" name="point"/>
                                    <button type="button">사용하기</button><br>
                                    <span>사용가능 2,000</span>
                                </td>
                            </tr>
                            <tr>
                                <td>받는분</td>
                                <td><input type="text" name="receiver"></td>
                            </tr>
                            <tr>
                                <td>연락처</td>
                                <td><input type="text" name="hp"></td>
                            </tr>
                            <tr class="addr">
                                <td>배송주소</td>
                                <td>
                                    <input type="text" name="zip" readonly/>
                                    <button type="button" onclick="daumPostcode()"><img src="../images/user/btn_post_search.gif" alt="우편번호검색"/></button>
                                    <input type="text" name="addr1" readonly placeholder="기본주소 검색"/><br>
                                    <input type="text" name="addr2" placeholder="상세주소 입력"/>
                                </td>
                            </tr>
                            <tr>
                                <td>결제방법</td>
                                <td>
                                    <label><input type="radio" name="payment">계좌이체</label>
                                    <label><input type="radio" name="payment">신용카드</label>
                                    <label><input type="radio" name="payment">체크카드</label>
                                    <label><input type="radio" name="payment">휴대폰</label>
                                </td>
                            </tr>
                            <tr>
                                <td>기타</td>
                                <td><textarea></textarea></td>
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