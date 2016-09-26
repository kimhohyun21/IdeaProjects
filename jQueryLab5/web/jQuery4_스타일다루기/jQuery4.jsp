<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-26
  Time: 오후 2:15
  To change this template use File | Settings | File Templates.

  #스타일 다루기
    1. 스타일의 속성값 구하기   $("선택자").css("스타일 속성");
    2. 스타일의 속성값 설정하기 $("선택자").css("스타일 속성", "값");
    3. 스타일틔 속성 제거하기   없음
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jQuery4</title>
    <style type="text/css">
       #panel{
           width: 600px;
           height: 400px;
           border: 1px solid #999;
           position: relative;
       }
       #watch{
           width: 200px;
           height: 200px;
           position: absolute;
           left: 200px;
           top: 100px;
       }
    </style>
    <script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
    <script type="text/javascript">
        /*
         Q4. 와치 움직이기
            - 버튼을 클릭할 때마다 와치가 랜덤하게 움직이도록 하라
            - 단, 와치가 패널(#panel) 영역을 벗어나지 않고 영역 안에서만 움직일 것
        */
        window.onload=function(){
            //와치 노드 구하기
            var $watch=$('#watch');

            //패널의 너비와 높이 구하기
            var panelWidth=parseInt($('#panel').css('width')); //600px
            var panelHeight=parseInt($('#panel').css('height')); //400px

            //와치가 최대로 움직일 영역구하기
            panelWidth=panelWidth-parseInt($watch.css('width'));
            panelHeight=panelHeight-parseInt($watch.css('height'));

            $('#btnStart').click(function(){
               //와치의 위치를 랜덤하게 설정
                var $left=(Math.random()*panelWidth);
                var $top=(Math.random()*panelHeight);

                //와치 위치 설정하기
                $watch.css('left', $left);
                $watch.css('top', $top);
            });
        };
    </script>
</head>
<body>
    <div align="center">
        <button id="btnStart">
            클릭하면 와치가 움직여요
        </button>
        <div id="panel">
            <img src="gallery1.jpg" id="watch">
        </div>
    </div>
</body>
</html>
