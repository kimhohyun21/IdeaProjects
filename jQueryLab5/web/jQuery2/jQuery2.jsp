<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-22
  Time: 오후 5:14
  To change this template use File | Settings | File Templates.

  # 속성 다루기
    1. 속성값 구하기   : $("선택자").attr("속성이름");
    2. 속성값 설정하기 : $("선택자").attr("속성이름", "속성값");
    3. 속성값 제거하기 : $("선택자").removeAttr("속성이름");

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <style type="text/css">
        img{
            width: 500px;
            height: 250px;
        }
    </style>
    <script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
    <script type="text/javascript">
        /*
            Q8.3개의 이미지를 누를 때 마다 각각 토글 형태로 변경되게 하라
         */
        $(document).ready(function () {
           var $targetList=$('.target');
           //.target에 클릭 이벤트 등록
            $targetList.click(function () {
               var $target=$(this);
               //이미지 상태 정보를 변경(토글 지정)
               iPhone=!$target.data("iPhone");
               console.log(iPhone);
               $target.data("iPhone", iPhone); // 저장되는 값이 클릭할때 마다 한번은 true, 한번은 false로 저장
               //toggle가 true일때는 #target의 src속성의 값을 변경함
               if(iPhone==true){
                   $target.attr("src", "design_hero_large.jpg");
               }else{
                   $target.attr("src", "camera_hero_large.jpg");
               }
            });
        });
    </script>
<head>
    <title>이미지 변경 테스트</title>
</head>
<body>
    <div align="center">
        <p>Image 1</p>
        <img src="design_hero_large.jpg" class="target">
    </div>
    <br/>
    <div align="center">
        <p>Image 2</p>
        <img src="design_hero_large.jpg" class="target">
    </div>
    <br/>
    <div align="center">
        <p>Image 3</p>
        <img src="design_hero_large.jpg" class="target">
    </div>
</body>
</html>
