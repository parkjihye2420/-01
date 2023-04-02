<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script>
        function addItem() {
            let todo = document.getElementById("item");
            let list = document.getElementById("todolist");
            let listitem = document.createElement("li");
            // listitem.className
            // = "d-flex list-group-item list-group-item-action list-group-item-warning";
            let xbtn = document.createElement("button");

            xbtn.className = "btn-close ms-auto";
            xbtn.innerText = "X";

            xbtn.onclick = function(e) {
                let pnode = e.target.parentNode;
                list.removeChild(pnode);
            }
            listitem.innerText = todo.value;
            listitem.appendChild(xbtn);
            list.appendChild(listitem);
            todo.value = "";
            todo.focus();
        }
    </script>
    <link rel="stylesheet" href="b.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
        <div class="con">
            <h2>My ToDo App</h2>
        <!-- <hr> -->
        <div class="ip">
            <input type="text" id="item" placeholder="  할일을 입력하세요...">
            <button type="button" onclick="addItem()" class="bt">할일 추가</button>
        </div>
        <!-- <hr> -->
        <ul id="todolist">

        </ul> 
        </div>
    </div>
</body>
</html>