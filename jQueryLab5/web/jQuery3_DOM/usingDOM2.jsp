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
    <script>
        function printTags(node) {
            var tags="";
            //노드 타입이 엘리먼트인지 체크
            if(node.nodeType==Node.ELEMENT_NODE){
                tags+=node.nodeName+'<br/>';
            }
            //자식노드 객체들에 대해서도 저장
            var children=node.childNodes;
            for(var i=0;i<children.length;i++){
                tags+=printTags(children[i]);
            }
            return tags;
        };
        window.onload=function(){
            var result=document.getElementById("result");
            result.innerHTML=printTags(document);
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
        <div id="result" style="border:1px solid #000; width:300px" ></div>
    </div>
</body>
</html>
