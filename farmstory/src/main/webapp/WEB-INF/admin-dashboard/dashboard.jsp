<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>관리자 주문관리> 주문목록</title>
    <style>
            /* 태그 초기화 */
    * {
        margin: 0;
        padding: 0;
        font: normal 12px '돋움';
        }
    ul, ol {list-style: none;}
    a {text-decoration: none; color: #111;}
    input, textarea {outline: none;}

    #wrapper {
        position: relative;
        width: 1920px;
        height: 759px;
        overflow-y: scroll;

        background: #FFFFFF;
    }




    /* 헤더 */
    header {
        position: absolute;
        height: 60px;
        left: 470px;
        right: 470px;
        top: 0px;

        background: url(/farmstory/images/admin/admin_bg.jpg);
    }

    header > img {
        position: absolute;
        width: 170px;
        height: 32px;
        left: 12px;
        top: 12px;
    }

    .u_home {
        /* Link → HOME | */
        position: absolute;
        width: 170px;
        height: 14px;
        left: 790px;
        top: 13px;

        
    }

    .u_home > a{
        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        
        align-items: center;

        color: #FFFFFF;
    }



    /*메인 전체*/

    main {
        position: absolute;
        height: 658px;
        left: 470px;
        right: 470px;
        top: 60px;

    }

    /*메인 어사이드(왼쪽메뉴창)*/

    main > aside {
        position: absolute;
        width: 176px;
        height: 400px;
        left: 0px;
        top: 0px;

    }

    .a_title {
        box-sizing: border-box;

        position: absolute;
        height: 30px;
        left: 10px;
        right: 10px;
        top: 10px;

        background: #E5E5E5;
        border: 1px solid #CCCCCC;
        border-radius: 20px;
    }

    .a_title > span {
        position: absolute;
        width: 56.2px;
        height: 15px;
        left: 21px;
        top: 7px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 14px;
        line-height: 17px;
        display: flex;
        align-items: center;

        color: #000000;
    }

    .title {
        position: absolute;
        height: 234px;
        left: 10px;
        right: 10px;
        top: 40px;
    }

    .title > ul {}

    .title > ul > li:nth-of-type(1) {
        position: absolute;
        height: 72px;
        left: 16px;
        right: 16px;
        top: 26px;
    }

    .title > ul > li:nth-of-type(1) > span{
        position: absolute;
        width: 48.2px;
        height: 14px;
        left: 0px;
        top: 4px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #000000;
    }

    .title > ul > li:nth-of-type(1) > ol{
        position: absolute;
        height: 44px;
        left: 0px;
        right: 0px;
        top: 28px;
    }

    .title > ul > li:nth-of-type(1) > ol > li:nth-of-type(1){
        position: absolute;
        height: 22px;
        left: 0px;
        right: 0px;
        top: 0px;
    }

    .title > ul > li:nth-of-type(1) > ol > li:nth-of-type(2){
        position: absolute;
        height: 22px;
        left: 0px;
        right: 0px;
        top: 22px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #111111;
    }

    .title > ul > li:nth-of-type(2) {
        position: absolute;
        height: 50px;
        left: 16px;
        right: 16px;
        top: 108px;
    }

    .title > ul > li:nth-of-type(2) > span{
        position: absolute;
        width: 48.2px;
        height: 14px;
        left: 0px;
        top: 4px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #000000;
    }

    .title > ul > li:nth-of-type(2) > ol {
        position: absolute;
        height: 22px;
        left: 0px;
        right: 0px;
        top: 28px;
    }

    .title > ul > li:nth-of-type(2) > ol > li{
        position: absolute;
        
        height: 14px;
        left: 0px;
        top: 0px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #111111;

    }

    .title > ul > li:nth-of-type(3) {
        position: absolute;
        height: 50px;
        left: 16px;
        right: 16px;
        top: 168px;

    }

    .title > ul > li:nth-of-type(3) > span{
        position: absolute;
        width: 48.2px;
        height: 14px;
        left: 0px;
        top: 4px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #000000;
    }

    .title > ul > li:nth-of-type(3) > ol {
        position: absolute;
        height: 22px;
        left: 0px;
        right: 0px;
        top: 28px;

    }

    .title > ul > li:nth-of-type(3) > ol >li{
        position: absolute;
        
        height: 14px;
        left: 0px;
        top: 0px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #111111;
    }


    /* 섹션 부분 (표 있는부분) */

    main > section{
        /* Section */

        position: absolute;
        width: 804px;
        height: 658px;
        left: 176px;
        top: 0px;
    }

    main > section > span{
        /* Nav → Heading 3 → 관리자 메인 */

        position: absolute;
        width: 100px;
        height: 19px;
        left: 10px;
        top: 12px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 700;
        font-size: 17px;
        line-height: 21px;
        display: flex;
        align-items: center;

        color: #3F3F3F;
    }

    main > section > div:nth-of-type(1){
        /* Article */

        position: absolute;
        height: 193px;
        left: 10px;
        right: 10px;
        top: 45px;


    }

    main > section > div:nth-of-type(1) > div {
        position: absolute;
        height: 17px;
        left: 0px;
        right: 0px;
        top: 0px;
    }

    main > section > div:nth-of-type(1) > div > span{
        position: absolute;
        width: 48.2px;
        height: 14px;
        left: 0px;
        top: 1px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #111111;
    }

    main > section > div:nth-of-type(1) > div > a{
        position: absolute;
        width: 45.98px;
        height: 14px;
        left: 738.22px;
        top: 1px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 12px;
        line-height: 15px;
        display: flex;
        align-items: center;

        color: #111111;

    }

    /*표 첫번째*/

    .product {
        /* Table */

        box-sizing: border-box;
        width: 784px;
        position: absolute;
        height: 170px;
        left: 0px;
        right: 0px;
        top: 23px;

        border-top: 2px solid #333333;

    }

    .product > tbody{
        position: absolute;
        width: 784px;
        height: 168.5px;
        left: 0px;
        top: calc(50% - 168.5px/2 + 0.25px);
    }

    .product > tbody> tr:nth-of-type(1){
        box-sizing: border-box;

        position: absolute;
        width: 784px;
        height: 42.5px;
        left: 0px;
        top: calc(50% - 42.5px/2 - 63px);

        border-bottom: 1px dashed #999999;
    }

    .product > tbody> tr:nth-of-type(1) > th:nth-of-type(1){
        position: absolute;
width: 146.23px;
height: 42.5px;
left: 0px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;


    }
    .product > tbody> tr:nth-of-type(1) > th:nth-of-type(2){
        position: absolute;
width: 152.33px;
height: 42.5px;
left: 146.23px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .product > tbody> tr:nth-of-type(1) > th:nth-of-type(3){
        position: absolute;
width: 97.48px;
height: 42.5px;
left: 298.56px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .product > tbody> tr:nth-of-type(1) > th:nth-of-type(4){
        position: absolute;
width: 127.95px;
height: 42.5px;
left: 396.05px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .product > tbody> tr:nth-of-type(1) > th:nth-of-type(5){
        position: absolute;
width: 97.48px;
height: 42.5px;
left: 524px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .product > tbody> tr:nth-of-type(1) > th:nth-of-type(6){
        position: absolute;
width: 162.52px;
height: 42.5px;
left: 621.48px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }



    .product > tbody> tr:nth-of-type(2){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 - 20.75px);

border-bottom: 1px dashed #999999;
    }
    
    .product > tbody> tr:nth-of-type(2) > td:nth-of-type(1){
        position: absolute;
width: 23.76px;
height: 14px;
left: 61.33px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.625px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(2) > td:nth-of-type(2){
        position: absolute;
width: 26.61px;
height: 14px;
left: 207.89px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 8px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(2) > td:nth-of-type(3){
        position: absolute;
width: 24.2px;
height: 14px;
left: 335.3px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(2) > td:nth-of-type(4){
        position: absolute;
width: 8.42px;
height: 14px;
left: 449.3px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(2) > td:nth-of-type(5){
        position: absolute;
width: 18.2px;
height: 14px;
left: 563.73px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10.5px;
line-height: 13px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(2) > td:nth-of-type(6){
        position: absolute;
width: 56.2px;
height: 14px;
left: 674.73px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 9.9375px;
line-height: 12px;
display: flex;
align-items: center;
text-align: center;

color: #000000;

    }



    .product > tbody> tr:nth-of-type(3){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 + 21.25px);

border-bottom: 1px dashed #999999;
    }
    .product > tbody> tr:nth-of-type(3) > td:nth-of-type(1){
        position: absolute;
width: 23.76px;
height: 14px;
left: 61.33px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.625px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(3) > td:nth-of-type(2){
        position: absolute;
width: 26.61px;
height: 14px;
left: 207.89px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 8px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(3) > td:nth-of-type(3){
        position: absolute;
width: 24.2px;
height: 14px;
left: 335.3px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(3) > td:nth-of-type(4){
        position: absolute;
width: 8.42px;
height: 14px;
left: 449.3px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(3) > td:nth-of-type(5){
        position: absolute;
width: 18.2px;
height: 14px;
left: 563.73px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10.5px;
line-height: 13px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(3) > td:nth-of-type(6){
        position: absolute;
width: 56.2px;
height: 14px;
left: 674.73px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 9.9375px;
line-height: 12px;
display: flex;
align-items: center;
text-align: center;

color: #000000;


    }

    .product > tbody> tr:nth-of-type(4){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 + 63.25px);

border-bottom: 1px dashed #999999;
    }
    .product > tbody> tr:nth-of-type(4) > td:nth-of-type(1){
        position: absolute;
width: 23.76px;
height: 14px;
left: 61.33px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.625px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(4) > td:nth-of-type(2){
        position: absolute;
width: 26.61px;
height: 14px;
left: 207.89px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 8px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(4) > td:nth-of-type(3){
        position: absolute;
width: 24.2px;
height: 14px;
left: 335.3px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(4) > td:nth-of-type(4){
        position: absolute;
width: 8.42px;
height: 14px;
left: 449.3px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(4) > td:nth-of-type(5){
        position: absolute;
width: 18.2px;
height: 14px;
left: 563.73px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10.5px;
line-height: 13px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .product > tbody> tr:nth-of-type(4) > td:nth-of-type(6){
        position: absolute;
width: 56.2px;
height: 14px;
left: 674.73px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 9.9375px;
line-height: 12px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }

    



    main > section > div:nth-of-type(2){
        /* Article */

position: absolute;
height: 193px;
left: 10px;
right: 10px;
top: 250px;


    }

    main > section > div:nth-of-type(2) > div{
        /* Heading 3 */

position: absolute;
height: 17px;
left: 0px;
right: 0px;
top: 0px;


    }

    main > section > div:nth-of-type(2) > div > span{
        /* Link → 주문현황 */

position: absolute;
width: 48.2px;
height: 14px;
left: 0px;
top: 1px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;

color: #111111;


    }

    main > section > div:nth-of-type(2) > div > a{
        /* Link → + 더보기 */

position: absolute;
width: 45.98px;
height: 14px;
left: 738.22px;
top: 1px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;

color: #111111;


    }

    .order {
        /* Table */

box-sizing: border-box;
width: 784px;
position: absolute;
height: 170px;
left: 0px;
right: 0px;
top: 23px;

border-top: 2px solid #333333;

    }

    .order> tbody {
        /* Body */

position: absolute;
width: 784px;
height: 168.5px;
left: 0px;
top: calc(50% - 168.5px/2 + 0.25px);


    }

    .order> tbody > tr:nth-of-type(1){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42.5px;
left: 0px;
top: calc(50% - 42.5px/2 - 63px);

border-bottom: 1px dashed #999999;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(1){
        position: absolute;
width: 105.89px;
height: 42.5px;
left: 0px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;

line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(2){
        position: absolute;
width: 110.31px;
height: 42.5px;
left: 105.89px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(3){
        position: absolute;
width: 105.89px;
height: 42.5px;
left: 216.2px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(4){
        position: absolute;
width: 70.59px;
height: 42.5px;
left: 322.09px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(5){
        position: absolute;
width: 92.66px;
height: 42.5px;
left: 392.69px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(6){
        position: absolute;
width: 92.66px;
height: 42.5px;
left: 485.34px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(7){
        position: absolute;
width: 88.25px;
height: 42.5px;
left: 578px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .order> tbody > tr:nth-of-type(1) > th:nth-of-type(8){
        position: absolute;
width: 117.75px;
height: 42.5px;
left: 666.25px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }


    .order> tbody > tr:nth-of-type(2) {
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 - 20.75px);

border-bottom: 1px dashed #999999;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(1){
        position: absolute;
width: 23.76px;
height: 14px;
left: 41.16px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.625px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(2){
        position: absolute;
width: 51.2px;
height: 14px;
left: 135.55px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.0625px;
line-height: 13px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(3){
        position: absolute;
width: 31.49px;
height: 14px;
left: 257.35px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(4){
        position: absolute;
width: 7.15px;
height: 14px;
left: 359.44px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(5){
        position: absolute;
width: 21.53px;
height: 14px;
left: 437.19px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(6){
        position: absolute;
width: 22.05px;
height: 14px;
left: 529.32px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(7){
        position: absolute;
width: 32px;
height: 14px;
left: 610px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(2) > td:nth-of-type(8){
        position: absolute;
width: 42.4px;
height: 14px;
left: 710.93px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }

    .order> tbody > tr:nth-of-type(3) {
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 + 21.25px);

border-bottom: 1px dashed #999999;
    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(1){
        position: absolute;
width: 23.76px;
height: 14px;
left: 41.16px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.625px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(2){
        position: absolute;
width: 51.2px;
height: 14px;
left: 135.55px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.0625px;
line-height: 13px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(3){
        position: absolute;
width: 31.49px;
height: 14px;
left: 257.35px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(4){
        position: absolute;
width: 7.15px;
height: 14px;
left: 359.44px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(5){
        position: absolute;
width: 21.53px;
height: 14px;
left: 437.19px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(6){
        position: absolute;
width: 22.05px;
height: 14px;
left: 529.32px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(7){
        position: absolute;
width: 32px;
height: 14px;
left: 610px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .order> tbody > tr:nth-of-type(3) > td:nth-of-type(8){
        position: absolute;
width: 42.4px;
height: 14px;
left: 710.93px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }

    
    .order> tbody > tr:nth-of-type(4) {
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 + 63.25px);

border-bottom: 1px dashed #999999;
    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(1){
        position: absolute;
width: 23.76px;
height: 14px;
left: 41.16px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.625px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(2){
        position: absolute;
width: 51.2px;
height: 14px;
left: 135.55px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.0625px;
line-height: 13px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(3){
        position: absolute;
width: 31.49px;
height: 14px;
left: 257.35px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(4){
        position: absolute;
width: 7.15px;
height: 14px;
left: 359.44px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(5){
        position: absolute;
width: 21.53px;
height: 14px;
left: 437.19px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(6){
        position: absolute;
width: 22.05px;
height: 14px;
left: 529.32px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(7){
        position: absolute;
width: 32px;
height: 14px;
left: 610px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .order> tbody > tr:nth-of-type(4) > td:nth-of-type(8){
        position: absolute;
width: 42.4px;
height: 14px;
left: 710.93px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }


    main > section > div:nth-of-type(3){
        /* Article */

position: absolute;
height: 193px;
left: 10px;
right: 10px;
top: 455px;


    }

    main > section > div:nth-of-type(3) > div{
        /* Heading 3 */

position: absolute;
height: 17px;
left: 0px;
right: 0px;
top: 0px;


    }

    main > section > div:nth-of-type(3) > div > span{
        /* Link → 회원현황 */

position: absolute;
width: 48.2px;
height: 14px;
left: 0px;
top: 1px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;

color: #111111;


    }

    main > section > div:nth-of-type(3) > div > a{
        /* Link → + 더보기 */

position: absolute;
width: 45.98px;
height: 14px;
left: 738.22px;
top: 1px;

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;

color: #111111;


    }

    .customer {
        /* Table */

box-sizing: border-box;
width: 784px;
position: absolute;
height: 170px;
left: 0px;
right: 0px;
top: 23px;

border-top: 2px solid #333333;

    }

    .customer >tbody {
        /* Body */

position: absolute;
width: 784px;
height: 168.5px;
left: 0px;
top: calc(50% - 168.5px/2 + 0.25px);


    }
    .customer >tbody >tr:nth-of-type(1){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42.5px;
left: 0px;
top: calc(50% - 42.5px/2 - 63px);

border-bottom: 1px dashed #999999;
    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(1){
        position: absolute;
width: 115.8px;
height: 42.5px;
left: 0px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(2){
        position: absolute;
width: 82.7px;
height: 42.5px;
left: 115.8px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(3){
        position: absolute;
width: 90.98px;
height: 42.5px;
left: 198.5px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;

    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(4){
        position: absolute;
width: 135.09px;
height: 42.5px;
left: 289.48px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(5){
        position: absolute;
width: 177.42px;
height: 42.5px;
left: 424.58px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;

    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(6){
        position: absolute;
width: 66.16px;
height: 42.5px;
left: 602px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }
    .customer >tbody >tr:nth-of-type(1)> th:nth-of-type(7){
        position: absolute;
width: 115.84px;
height: 42.5px;
left: 668.16px;
top: calc(50% - 42.5px/2);

background: #FBFBFB;
line-height: 40px;
    }


    .customer >tbody >tr:nth-of-type(2){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 - 20.75px);

border-bottom: 1px dashed #999999;

    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(1){
        position: absolute;
width: 23.53px;
height: 14px;
left: 46.23px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.25px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(2){
        position: absolute;
width: 36.2px;
height: 14px;
left: 139.14px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(3){
        position: absolute;
width: 20.44px;
height: 14px;
left: 238px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 9px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(4){
        position: absolute;
width: 59.65px;
height: 14px;
left: 334.58px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(5){
        position: absolute;
width: 102.21px;
height: 14px;
left: 463.63px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10.125px;
line-height: 12px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(6){
        position: absolute;
width: 3.04px;
height: 14px;
left: 635.24px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 7px;
display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .customer >tbody >tr:nth-of-type(2)> td:nth-of-type(7){
        position: absolute;
width: 46.6px;
height: 14px;
left: 707.68px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    

    .customer >tbody >tr:nth-of-type(3){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 + 21.25px);

border-bottom: 1px dashed #999999;
    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(1){
        position: absolute;
width: 23.53px;
height: 14px;
left: 46.23px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.25px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(2){
        position: absolute;
width: 36.2px;
height: 14px;
left: 139.14px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(3){
        position: absolute;
width: 20.44px;
height: 14px;
left: 238px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 9px;
display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(4){
        position: absolute;
width: 59.65px;
height: 14px;
left: 334.58px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(5){
        position: absolute;
width: 102.21px;
height: 14px;
left: 463.63px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10.125px;
line-height: 12px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(6){
        position: absolute;
width: 3.04px;
height: 14px;
left: 635.24px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 7px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(3)> td:nth-of-type(7){
        position: absolute;
width: 46.6px;
height: 14px;
left: 707.68px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }

    .customer >tbody >tr:nth-of-type(4){
        box-sizing: border-box;

position: absolute;
width: 784px;
height: 42px;
left: 0px;
top: calc(50% - 42px/2 + 63.25px);

border-bottom: 1px dashed #999999;
    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(1){
        position: absolute;
width: 23.53px;
height: 14px;
left: 46.23px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 11.25px;
line-height: 14px;
/* identical to box height */
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(2){
        position: absolute;
width: 36.2px;
height: 14px;
left: 139.14px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 12px;
line-height: 15px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(3){
        position: absolute;
width: 20.44px;
height: 14px;
left: 238px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 9px;
display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(4){
        position: absolute;
width: 59.65px;
height: 14px;
left: 334.58px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;

    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(5){
        position: absolute;
width: 102.21px;
height: 14px;
left: 463.63px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10.125px;
line-height: 12px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(6){
        position: absolute;
width: 3.04px;
height: 14px;
left: 635.24px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;
line-height: 7px;
display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    .customer >tbody >tr:nth-of-type(4)> td:nth-of-type(7){
        position: absolute;
width: 46.6px;
height: 14px;
left: 707.68px;
top: calc(50% - 14px/2 - 0.5px);

font-family: 'Inter';
font-style: normal;
font-weight: 400;
font-size: 10px;

display: flex;
align-items: center;
text-align: center;

color: #000000;
    }
    







    /* footer */

    footer{
        position: absolute;
        height: 41px;
        left: 470px;
        right: 470px;
        top: 718px;

        background: #353535;
    }

    footer >span{
        position: absolute;
        width: 449.56px;
        height: 14px;
        left: 12px;
        top: 12px;

        font-family: 'Inter';
        font-style: normal;
        font-weight: 400;
        font-size: 10.875px;
        line-height: 13px;
        /* identical to box height */
        display: flex;
        align-items: center;

        color: #FFFFFF;
    }

    
    </style>
</head>
<body>
    <div id="wrapper">
        <header>
            <img src="/farmstory/images/admin/admin_logo.jpg" alt="표지로고">
            <span class="u_home">
                <a href="/farmstory/main/main.do">HOME |</a>&thinsp;
                <a href="/farmstory/user/logout.do">로그아웃 |</a>&thinsp;
                <a href=""> 고객센터</a>&thinsp;
            </span>
        </header>


        <main>
            <aside>
                <div class="a_title">
                    <span>주요기능</span>
                </div>
                <div class="title">
                    <ul>
                        <li>
                            <span>상품관리</span>
                            <ol>
                                <li><a href="/farmstory/admin-products/product-lists.do">L 상품목록</a></li>
                                <li><a href="/farmstory/admin-products/add-product.do">L 상품등록</a></li>
                            </ol>
                        </li>
                        <li>
                            <span>주문관리</span>
                            <ol>
                                <li><a href="/farmstory/admin-products/order-list.do">L 주문목록</a></li>
                            </ol>
                        </li>
                        <li>
                            <span>회원관리</span>
                            <ol>
                                <li><a href="/farmstory/admin-products/user-list.do">L 회원목록</a></li>
                            </ol>
                        </li>
                    </ul>
                </div>
            </aside>

            <section>
                <span>관리자 메인</span>

                <div>
                    <div>
                        <span>상품현황</span>
                        <a href="">+더보기</a>
                    </div>
                    <table class="product">
                        <tbody>
                            <tr>
                                <th>상품번호</th>
                                <th>상품명</th>
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                            <tr>
                                <td>1011</td>
                                <td>사과500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr>
                                <td>1011</td>
                                <td>사과500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr>
                                <td>1011</td>
                                <td>사과500g</td>
                                <td>과일</td>
                                <td>4,000원</td>
                                <td>100</td>
                                <td>2023-01-01</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div>
                    <div>
                        <span>주문현황</span>
                        <a href="">+더보기</a>
                    </div>
                    <table class="order">
                        <tbody>
                            <tr>
                                <th>주문번호</th>
                                <th>상품명</th>
                                <th>판매가격</th>
                                <th>수량</th>
                                <th>배송비</th>
                                <th>합계</th>
                                <th>주문자</th>
                                <th>주문일</th>
                            </tr>
                            <tr>
                                <td>1011</td>
                                <td>사과500g</td>
                                <td>4,000원</td>
                                <td>2개</td>
                                <td>3,000원</td>
                                <td>8,000원</td>
                                <td>홍길동</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr>
                                <td>1011</td>
                                <td>사과500g</td>
                                <td>4,000원</td>
                                <td>2개</td>
                                <td>3,000원</td>
                                <td>8,000원</td>
                                <td>홍길동</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr>
                                <td>1011</td>
                                <td>사과500g</td>
                                <td>4,000원</td>
                                <td>2개</td>
                                <td>3,000원</td>
                                <td>8,000원</td>
                                <td>홍길동</td>
                                <td>2023-01-01</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div>
                    <div>
                        <span>회원현황</span>
                        <a href="">+더보기</a>
                    </div>
                    <table class="customer">
                        <tbody>
                            <tr>
                                <th>회원아이디</th>
                                <th>이름</th>
                                <th>닉네임</th>
                                <th>휴대폰</th>
                                <th>이메일</th>
                                <th>등급</th>
                                <th>회원가입일</th>
                            </tr>
                            <tr>
                                <td>a101</td>
                                <td>김유신</td>
                                <td>유신123</td>
                                <td>010-1234-1001</td>
                                <td>yusin123@naver.com</td>
                                <td>2</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr>
                                <td>a101</td>
                                <td>김유신</td>
                                <td>유신123</td>
                                <td>010-1234-1001</td>
                                <td>yusin123@naver.com</td>
                                <td>2</td>
                                <td>2023-01-01</td>
                            </tr>
                            <tr>
                                <td>a101</td>
                                <td>김유신</td>
                                <td>유신123</td>
                                <td>010-1234-1001</td>
                                <td>yusin123@naver.com</td>
                                <td>2</td>
                                <td>2023-01-01</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>

            

        </main>



        <footer>
            <span>Copyright(C)Farmstory All rights reserved. FARMSTORY ADMINISTRATOR Version 1.0.1</span>
        </footer>





    </div>
    
</body>
</html>