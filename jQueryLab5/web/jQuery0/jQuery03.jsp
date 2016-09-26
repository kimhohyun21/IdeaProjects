<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-22
  Time: 오후 2:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jQuery03</title>
    <style type="text/css">
        body{
            font-size: 9pt;
            font-family: 굴림;
        }
        ui, li{

        }
        ul.menu{
            padding: 10px;
            list-style: none;
            border: 1px solid #eeeeee;
        }

        ul.menu li{
            border: 1px solid #eeeeee;
            margin: 10px;
        }

        li.select{
            background-color: #ccc;
        }
    </style>
    <script type="text/javascript" src="../js/jquery-3.1.0.js"></script>
    <script type="text/javascript">
        /*
        Q2. 버튼을 클릭하면 ==> 메뉴 아이템을 10개 삭제하라
         */
        $(document).ready(function(){
            $('#remove').click(function(){
                $('ul.menu li').remove();
            });
        });
    </script>
</head>
<body>
    <div align="center">
        <button id="remove">제거</button>
        <table>
            <tr>
                <td>
                    <ul class="menu">
                        <li>menu1</li>
                        <li>menu2</li>
                        <li class="select">menu3</li>
                        <li>menu4</li>
                        <li>menu5</li>
                        <li>menu6</li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</body>
</html>
