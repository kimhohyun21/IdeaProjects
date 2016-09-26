<%--
  Created by IntelliJ IDEA.
  User: sist
  Date: 2016-09-22
  Time: 오후 2:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>jQuery1</title>
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
        Q6.선택한 메뉴 아이템 다운

         */

        //전역변수 선언 및 초기화
        var $menu=null;
        var $menuName=null;
        var $selectedItem=null;

        $(document).ready(function(){
            init(); //함수 초기화
            initEvent(); //이벤트에 대한 핸들러
        });

        //전역변수에서 사용할 요소 초기화
        function init(){
            $menu=$('ul.menu');
            $menuName=$('#menuName');
        };

        //이벤트 초기화
        function initEvent(){
            //메뉴 추가
            $('#add').click(function(){
                addMenu();// 함수를 호출하는 형태로 따로 뺌
            });
            //메뉴 수정
            $('#update').click(function(){
                updateMenuItem();
            });
            //메뉴 삭제
            $('#remove').click(function(){
                removeMenuItem();// 함수를 호출하는 형태로 따로 뺌
            });
            //메뉴 업
            $('#up').click(function(){
                upMenuItem();
            });
            //메뉴 다운
            $('#down').click(function () {
               downMenuItem();
            });
            //on으로 선택 이벤트 등록
            $menu.on('click', 'li', function(){
                selectItem($(this));
            });


        };

        function addMenu(){
            //텍스트 입력가 받아오기
            var menuName=$menuName.val(); //jQuery 객체의 값을 가져오는 함수, 결과값은 jQuery객체가 아니기 때문에 그냥 변수에 받음

            //신규 메뉴 아이템 문자열을 만들어
            var newMenuItem='<li>'+menuName+'</li>';

            //메뉴에 신규 메뉴 아이템을 추가
            //선택한 아이템이 있는 경우 그 뒤에 추가, 나머지는 그냥 맨 뒤에 추가
            if($selectedItem){
                $selectedItem.after(newMenuItem);
            }else{
                $menu.append(newMenuItem);
            };
        };

        function updateMenuItem(){
            if($selectedItem){
                var menuName=$menuName.val();
                if(menuName!=""){
                    $selectedItem.html(menuName);
                }else {
                    alert('입력된 값이 없습니다.');
                }
            }else{
                alert('선택메뉴가 존재하지 않습니다.');
            }
        };

        function removeMenuItem(){
            if($selectedItem){
                $selectedItem.remove();
                $selectedItem=null; //이상한 값이 할당되지 않도록
            }else{
                alert('선택메뉴가 존재하지 않습니다.');
            }
        };

        function upMenuItem(){
          if($selectedItem){
              var $prevItem=$selectedItem.prev(); //선택된 아이템의 앞의 아이템
              if($prevItem){
                  $selectedItem.insertBefore($prevItem);
              }
          }else{
              alert('선택메뉴가 없습니다.');
          }
        };
        function downMenuItem() {
            if($selectedItem){
                var $nextItem=$selectedItem.next();
                if($nextItem){
                    $selectedItem.insertAfter($nextItem);
                }
            }else{
                alert('선택메뉴가 없습니다.');
            }
        }
        //선택된 아이템에 클래스 추가
        function selectItem($item){
            //기존에 선택한 아이템이 있을 경우 삭제
            if($selectedItem!=null) $selectedItem.removeClass();

            //신규 아이템을 처리
            $selectedItem=$item;
            $selectedItem.addClass("select");
        };


    </script>
</head>
<body>
<div align="center">
    <table>
        <tr>
            <td>
                <input type="text" id="menuName">
                <button id="add">추가</button>
                <button id="update">수정</button>
                <button id="remove">삭제</button>
                <button id="up">UP</button>
                <button id="down">DOWN</button>
            </td>
        </tr>
        <tr>
            <td>
                <ul class="menu">
                    <li>menu1</li>
                    <li>menu2</li>
                    <li>menu3</li>
                    <li>menu4</li>
                    <li>menu5</li>
                </ul>
            </td>
        </tr>
    </table>
</div>
</body>
</html>
