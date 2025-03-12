<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>메인</title>
    <link rel="stylesheet" href="/farmstory/css/_header.css">
    <link rel="stylesheet" href="/farmstory/css/_footer.css">
<style>
    main {
            width: 100%;
            height: auto;
            /*수정*/
            margin: 10px 0;
        }


        /* utill */
        .utill {}

        .utill li {}

        .utill li a {
            margin-left: 1px;
        }

        /* h_txt */
        .h_txt {
            box-sizing: border-box;
            width: 100%;
            height: 15px;
        }

        .h_txt img {
            float: right;
            justify-content: right;
        }



        main {
            width: 100%;
            height: 1063px;
            box-sizing: border-box;
            margin-bottom: 20px;
        }

        main>section {
            width: 100%;
            height: auto;
            box-sizing: border-box;
            position: relative;

        }



        main>.sub_bg {
            width: 980px;
            height: 312px;
            box-sizing: border-box;
            margin: 0 auto;
            z-index: 1;
        }



        main>.sub_bg {
            box-sizing: border-box;
            background-attachment: fixed;
            position: relative
        }

        main .mainbntit {
            position: absolute;
            z-index: 2;
            background-attachment: fixed;
            left: 40px;
            top: 50px;
            box-sizing: border-box;
        }

        main .bannerbg {
            width: 230px;
            height: 312px;
            position: absolute;
            z-index: 2;
            background-attachment: fixed;
            box-sizing: border-box;
            right: 0;

        }

        main .main_banner {
            position: absolute;
            z-index: 4;
            background-attachment: fixed;
            box-sizing: border-box;
            width: 230px;
            height: 312px;
            left: 750px;
            top: 0px;
        }

        main .main_banner .bannerimg {
            box-sizing: border-box;
            position: absolute;
            bottom: 2px;
            left: 10px;
        }

        main .main_banner .bannertit {
            box-sizing: border-box;
            position: absolute;
            top: 34px;
            left: 10px;
        }

        main .main_banner .bannertxt {
            box-sizing: border-box;
            position: absolute;
            top: 11px;
            right: 10px;
        }

        /* mainin  */
        .mainIn {
            width: 980px;
            height: auto;
            margin: 0 auto;
        }


        /* 메인 타이틀 */
        .maintit {
            margin-top: 20px;
            margin-bottom: 14px;
        }

        .market {
            width: 100%;
            text-align: center;
            align-self: center;

        }

        .market article:nth-of-type(1),
        .market article:nth-of-type(2),
        .market article:nth-of-type(3),
        .market article:nth-of-type(4),
        .market article:nth-of-type(5) {
            display: flex;
            float: left;
            width: 155.33px;
            height: 236px;
            border: 1px solid #EEEEEE;
            text-align: center;
            box-sizing: border-box;
            margin-right: 9px;
        }

        .market article:nth-of-type(6) {
            margin-right: 0;
            display: flex;
            float: left;
            width: 155.33px;
            height: 236px;
            border: 1px solid #EEEEEE;
            text-align: center;
            box-sizing: border-box;
        }

        .market article>a {
            margin: 0 auto;
            margin-top: 11px
        }

        .last {
            margin-right: 0;
        }

        .market article img {
            width: 120px;
            height: 120px;

        }

        .mtxt {
            margin-top: 11px;
        }

        .mtxt span {
            font-size: 12px;
            color: #777777;
            height: 14px;
            width: 24.2px;
            line-height: 14px;
            margin-bottom: 11px;

        }

        .prodname {
            margin-top: 11px;
            font-size: 12px;
            font-family: Inter;
            font-size: 11.06px;
            font-weight: 400;
            line-height: 13.39px;
            text-align: center;

        }

        .del {
            font: 400 10px/7.26px 'Inter' !important;
            text-align: center !important;
            text-decoration: line-through !important;
        }
        
        /* del 10% */
        .del > .del_percent {
            font: 400 10px/7.26px 'Inter' !important;
            text-align: center !important;
            text-decoration: line-through !important;
            margin-left: 2px;
            color : red;
        }

        .price1>strong {
            font-family: Inter;
            font-size: 10.13px;
            font-weight: 700;
            line-height: 12.25px;
            text-align: center;

        }

        .price2>strong {
            font-family: Inter;
            font-size: 10.13px;
            font-weight: 700;
            line-height: 12.25px;
            text-align: center;

        }


        /* ad  */

        .ad {
            width: 980px;
            height: 74px;
            overflow: hidden;
            overflow: hidden;
            display: inline-flex;
            margin-top: 10px;

        }


        .ad>article {
            box-sizing: border-box;
            display: inline-flex;
            flex-direction: row;
            justify-content: left;
            width: 490px;
            height: 74px;
            flex-wrap: nowrap;

        }

        .ad>article>a {
            display: inline-flex;
            box-sizing: border-box;
            width: 187px;
            height: 40px;
            margin-top: 16px;
            margin-left: 16px;

        }

        .ad .ad1 {
            background: url(/farmstory/images/main_banner_sub1_bg.jpg);
        }

        .ad .ad2 {
            background: url(/farmstory/images/main_banner_sub2_bg.jpg);
        }




        /* crop */

        .crop {
            width: 980px;
            height: 186px;
            overflow: hidden;
            overflow: hidden;
            display: inline-flex;
            margin-top: 10px;
        }

        .crop article {
            width: 326px;
            height: 186px;
        }


        .garden>a:nth-child(1) {
            margin-bottom: 16px;
        }

        .returnfarm>a:nth-child(1) {
            margin-bottom: 16px;
        }

        .croptalk>a:nth-child(1) {
            margin-bottom: 16px;
        }

        .crop a {
            display: block;

        }

        .crop>article>img {
            float: left;
            margin-right: 14.84px;
            margin-top: 4px;
        }

        .txt_line {
            letter-spacing: -0.75px;
            width: 70px;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            line-height: 15px;
        }

        .discount {
            color: #EB000A !important;
            font-family: Inter;
            font-size: 6px !important;
            font-weight: 400;
            line-height: 7.26px;
            text-align: center;
        }

        .ellipsis {
            letter-spacing: -0.75px;
            display: inline-block;
            width: 113px;
            /* 제목이 표시될 최대 너비를 설정 */
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            vertical-align: middle;
        }

        .ellipsis_notice {
            display: inline-block;
            width: 200px;
            /* 제목이 표시될 최대 너비를 설정 */
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            vertical-align: middle;
        }


        /* notice section */

        .notice {
            width: 980px;
            height: 154px;
            box-sizing: border-box;
            background: url(/farmstory/images/main_cs_top_line.png) no-repeat;
            background-position-y: top;
            background-position: top;
            overflow: hidden;
            display: inline-flex;
            margin-top: 10px;
            margin-bottom: 10px;
        }

        /*   */
        .notice .cs {
            width: 386px;
            height: 124px;
            margin-bottom: 16px;
            box-sizing: border-box;
            background: url(/farmstory/images/main_sub2);
            margin-top: 18px;

        }

        .announcement {
            width: 354px;
            height: 132px;
        }

        .ntitle {
            display: block;
            margin-bottom: 16px;
        }




        .cs>.cstxt {
            box-sizing: border-box;
            display: inline-flex;
            flex-direction: row;
            width: 386px;
            height: 54px;
            margin-bottom: 16px;

        }

        .cstxt>img:nth-child(1) {
            width: 45px;
            height: 42px;
            margin-right: 16px;
        }

        .cstxt>img:nth-child(2) {
            width: 121px;
            height: 40px;
            margin-right: 16px;

        }

        .cs>p {
            font: 10.88px;
            height: 54px;
            width: 140.39px;
        }

        .cslink {
            margin-bottom: 12px;
        }

        /* account */
        .account {
            width: 230px;
            height: 132px;
            border-left: 1px solid #D7D7D7;
            border-right: 1px solid #D7D7D7;
            margin-top: 18px;
            color: #666666;

        }

        .account .ntitle {
            margin-left: 17px;
            height: 14px;

        }

        .account .accounttxt {
            margin-left: 17px;

        }

        /* announcement */
        .announcement {
            width: 355px;
            height: 132px;
            margin-top: 12px;
            margin-left: 10px;
            margin-bottom: 14px;
            color: #6A6A6A;
        }

        .announcement .ntitle {
            height: 14px;
            margin-top: 6px;

        }

        .announcement .ntable {
            font-size: 11px;
            margin-left: 4px;
            margin-top: -4px;
            width: 305px;
            height: 88px;

        }


        /* copyright */
        .Copy {
            text-align: justify;
            padding-left: 243px;
            font-size: 12px;
            /* Font size */
            color: #777;
            /* Text color */
            font-weight: bold;
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
        <main id="main">
            <section class="sub_bg">
                <article>
                    <img src="/farmstory/images/main_slide_img1.jpg" alt="main slid image">
                    <img src="/farmstory/images/main_slide_img_tit.png" alt="main_slide_img_tit"
                        class="mainbntit">
                    <img src="/farmstory/images/main_banner_bg.jpg" alt="grand open" class="bannerbg">

                    <div class="main_banner">
                        <img src="/farmstory/images/main_banner_img.png" alt="메인 사진" class="bannerimg">
                        <img src="/farmstory/images/main_banner_tit.png" alt="30%할인 이벤트" class="bannertit">
                        <img src="/farmstory/images/main_banner_txt.png" alt="grand open" class="bannertxt">
                    </div>
                </article>
            </section>
            <section class="mainIn">
                <div class="maintit">
                    <img src="/farmstory/images/main_market_tit.png" alt="장보기 베스트">
                </div><!-- .maintit end -->

                <section class="market">
                    <article>
                        <a href="">
                            <img src="/farmstory/images/market_item6.jpg" alt="과일">
                            <div class="mtxt">
                                <span>과일</span>
                                <p class="prodname">사과 500g</p>
                                <p class="del">4,000<span class="del_percent">10%</span></p>
                                <p class="price1"><strong>3,600</strong></p>
                                <p class="price2"><strong>원</strong></p>
                            </div>

                        </a>
                    </article>
                    <article>
                        <a href="">
                            <img src="/farmstory/images/market_item5.jpg" alt="과일">
                            <div class="mtxt">
                                <span>과일</span>
                                <p class="prodname">사과 500g</p>
                                <p class="del">4,000 <span class="del_percent">10%</span></p>
                                <p class="price1"><strong>3,600</strong></p>
                                <p class="price2"><strong>원</strong></p>
                            </div>

                        </a>
                    </article>
                    <article>
                        <a href="">
                            <img src="/farmstory/images/market_item4.jpg" alt="과일">
                            <div class="mtxt">
                                <span>과일</span>
                                <p class="prodname">사과 500g</p>
                                <p class="del">4,000 <span class="del_percent">10%</span></p>
                                <p class="price1"><strong>3,600</strong></p>
                                <p class="price2"><strong>원</strong></p>
                            </div>

                        </a>
                    </article>
                    <article>
                        <a href="">
                            <img src="/farmstory/images/market_item3.jpg" alt="과일">
                            <div class="mtxt">
                                <span>과일</span>
                                <p class="prodname">사과 500g</p>
                                <p class="del">4,000 <span class="del_percent">10%</span></p>
                                <p class="price1"><strong>3,600</strong></p>
                                <p class="price2"><strong>원</strong></p>
                            </div>

                        </a>
                    </article>
                    <article>
                        <a href="">
                            <img src="/farmstory/images/market_item2.jpg" alt="과일">
                            <div class="mtxt">
                                <span>과일</span>
                                <p class="prodname">사과 500g</p>
                                <p class="del">4,000 <span class="del_percent">10%</span></p>
                                <p class="price1"><strong>3,600</strong></p>
                                <p class="price2"><strong>원</strong></p>
                            </div>

                        </a>
                    </article>
                    <article>
                        <a href="">
                            <img src="/farmstory/images/market_item1.jpg" alt="과일">
                            <div class="mtxt">
                                <span>과일</span>
                                <p class="prodname">사과 500g</p>
                                <p class="del">4,000<span class="del_percent">10%</span></p>
                                <p class="price1"><strong>3,600</strong></p>
                                <p class="price2"><strong>원</strong></p>
                            </div>

                        </a>
                    </article>
                </section><!-- .market section end-->
                <section class="ad">
                    <article class="ad1">
                        <a href="#"><img src="/farmstory/images/main_banner_sub1_tit.png" alt="오늘의 식단"></a>
                    </article>
                    <article class="ad2">
                        <a href="#"><img src="/farmstory/images/main_banner_sub2_tit.png" alt="나도 요리사"></a>
                    </article>
                </section> <!-- .ad end-->

                <section class="crop">
                    <article class="garden">
                        <a href="#"><img src="/farmstory/images/main_latest1_tit.png" alt="텃밭가꾸기"></a>
                        <img src="/farmstory/images/main_latest1_img.jpg" alt="텃밭가꾸기">
                        <table>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                        </table>
                    </article>
                    <article class="returnfarm">
                        <a href="#"><img src="/farmstory/images/main_latest2_tit.png" alt="귀농학교"></a>
                        <img src="/farmstory/images/main_latest2_img.jpg" alt="귀농학교">
                        <table>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                        </table>
                    </article>
                    <article class="croptalk">
                        <a href="#"><img src="/farmstory/images/main_latest3_tit.png" alt="농작물이야기"></a>
                        <img src="/farmstory/images/main_latest3_img.jpg" alt="농작물 이야기">
                        <table>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                            <tr>
                                <th>></th>
                                <td>토마토! 건강하게 길러…</td>
                                <td>20-12-22</td>
                            </tr>
                        </table>
                    </article>
                </section>
                <section class="notice">
                    <article class="cs">
                        <div class="ntitle">
                            <img src="/farmstory/images/main_sub2_cs_tit.png" alt="고객센터안내">
                        </div>
                        <div class="cstxt">
                            <img src="/farmstory/images/main_sub2_cs_img.png" alt="전화기">

                            <img src="/farmstory/images/main_sub2_cs_txt.png" alt="고객센터 전화번호 1666-777">

                            <p class="cs_time">
                                평일: AM 09:00 ~ PM 06:00<br>
                                점심: PM 12:00 ~ PM 01:00<br>
                                토, 일요일, 공휴일 휴무<br>
                            </p>
                        </div>
                        <div class="cslink">
                            <a href="#"><img src="/farmstory/images/main_sub2_cs_bt1.png" alt="1:1고객문의"></a>
                            <a href="#"><img src="/farmstory/images/main_sub2_cs_bt2.png" alt="자주묻는 질문"></a>
                            <a href="#"><img src="/farmstory/images/main_sub2_cs_bt3.png" alt="배송 조회"></a>
                        </div>

                    </article>
                    <article class="account">
                        <div class="ntitle">
                            <img src="/farmstory/images/main_sub2_account_tit.png" alt="계좌안내">
                        </div>
                        <div class="accounttxt">
                            <p>
                                기업은행 123-456789-01-01-012<br>
                                국민은행 01-1234-56789<br>
                                우리은행 123-456789-01-01-012<br>
                                하나은행 123-456789-01-01<br>
                                예 금 주 (주)팜스토리
                            </p>
                        </div>

                    </article>
                    <article class="announcement">
                        <div class="ntitle">
                            <img src="/farmstory/images/main_sub2_notice_tit.png" alt="공지사항">
                        </div>
                        <div class="ntable">
                            <table class="ntable">
                                <tr>
                                    <th>·</th>
                                    <td>안녕하세요. 홈페이지 오픈 기념 이벤트를 … </td>
                                    <td>20-12-22</td>
                                </tr>
                                <tr>
                                    <th>·</th>
                                    <td>안녕하세요. 홈페이지 오픈 기념 이벤트를 … </td>
                                    <td>20-12-22</td>
                                </tr>
                                <tr>
                                    <th>·</th>
                                    <td>안녕하세요. 홈페이지 오픈 기념 이벤트를 … </td>
                                    <td>20-12-22</td>
                                </tr>
                                <tr>
                                    <th>·</th>
                                    <td>안녕하세요. 홈페이지 오픈 기념 이벤트를 … </td>
                                    <td>20-12-22</td>
                                </tr>
                                <tr>
                                    <th>·</th>
                                    <td>안녕하세요. 홈페이지 오픈 기념 이벤트를 … </td>
                                    <td>20-12-22</td>
                                </tr>
                            </table>
                        </div>
                    </article>
                </section><!--.notice end-->
            </section><!--.mainin end-->
        </main><!-- #main -->
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
</html>