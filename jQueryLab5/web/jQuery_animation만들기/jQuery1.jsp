<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-26
  Time: 오후 5:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>animation 만들기</title>
    <style type="text/css">
        body{
            font-size: 9px;
        }
        .panel{
            margin: 0px;
            width: 850px;
            height: 420px;
            border: 1px solid #ccc;
        }
        .nav{
            margin: 0px;
            width: 850px;
            height: 30px;
            border: 1px solid #ccc;
            background-color: aquamarine;
        }
        button{
            position: relative;
            top: 15%;
        }
    </style>
    <script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
    <script type="text/javascript">
        /*
         Q5. 간단한 차 이미지 애니메이션 뷰어 만들기
          - 요구사항
            1) play버튼 ==> 애니메이션이 될 수 있게 0.1초 마다 순차적으로 이미지가 한장씩 변경됨
            2) stop버튼 ==> 애니메니션 기능 멈춤
            3) prev버튼 ==> 이전 이미지 보여주기
            4) next버튼 ==> 다음 이미지 보여주기
         */
        //전역변수
        var $view=null;

        $(document).ready(function(){
            init();
            initEvent();
        });

        function init(){
            //전역변수 초기화
            $view=$('#view');
        };

        function initEvent(){

        };
    </script>
</head>
<body>
    <div align="center">
        <div class="panel">
            <img src="./img/1.jpg" id="view">
        </div>
        <div class="nav">
            <button id="play">play</button>
            <button id="stop">stop</button>
            <button id="prev">prev</button>
            <button id="next">next</button>
        </div>
    </div>
</body>
</html>
