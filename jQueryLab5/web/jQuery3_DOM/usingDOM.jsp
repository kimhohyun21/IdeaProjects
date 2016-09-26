<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-23
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DOM API를 사용한 HTML문서 접근</title>
    <script src="log.js"></script>
    <script>
        window.onload=function(){
            var rootNode=document.documentElement;
            log("root 태그 : "+rootNode.tagName);

            var bodyNode=document.getElementsByTagName("body").item(0);
            log("body 태그 : "+bodyNode.tagName);

            var spanList=document.getElementsByTagName("span");
            log("span 태그의 개수 : "+spanList.length);

            for(var i=0;i>spanList.length;i++){
                var span=spanList.item(i);
                log((i+1)+"번째 span 의 id :"+span.getAttribute("id"));
            }

            var debugDiv=document.getElementById("debug");
            log("debugDiv 요소 : "+debugDiv.tagName);
        };
    </script>
</head>
<body>
    <div align="center">
        <span id="a">a</span>
        <p>
            test
            <span id="b">b</span>
        </p>
        <div>
            <p>p</p>
            <span id="c">c</span>
        </div>
        <div id="debug" style="border:1px solid #000; width:300px" ></div>
    </div>
</body>
</html>
