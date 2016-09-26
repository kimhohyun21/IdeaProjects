<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-22
  Time: 오후 5:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
    <script type="text/javascript">
        /*
            Q7.이미지를 누를 때 마다 토글 형태로 변경되게 하라
         */
        $(document).ready(function () {
           //#target찾기
           var $img=$('#target');
           //변수 생성
           var toggle=true;
           //#target에 클릭 이벤트 등록
            $img.click(function () {
               //toggle값을 true<-->false로 변경
               toggle=!toggle;
               //toggle가 true일때는 #target의 src속성의 값을 변경함
               if(toggle==true){
                   $img.attr("src", "design_hero_large.jpg");
               }else{
                   $img.attr("src", "camera_hero_large.jpg");
               }
            });
        });
    </script>
<head>
    <title>이미지 변경 테스트</title>
</head>
<body>
    <div align="center">
        <img src="design_hero_large.jpg" id="target">
    </div>
</body>
</html>
