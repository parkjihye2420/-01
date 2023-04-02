<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My ToDo App</title>
<style>
  body {
    background-color: wheat;
  }
  h2 {
    border-radius: 5px;
    text-align: left;
    color:black;
    padding: 15px;
    margin-top: 20px;
  }
  #reform {
    padding: 15px 20px;
    border-radius: 10px;
    margin: auto;
    width: 50%;
    background-color: wheat;
  }
  .input-group {
    margin-bottom: 10px;
  }
  .form-control {
    width: 80%;
  }
  .btn-primary {
    margin-left: 10px;
  }
  .d-flex.list-group-item.list-group-item-action.list-group-item-warning {
    justify-content: space-between;
  }
</style>
</head>
<body>
<div class="container bg-warning shadow mx-auto mt-5 p-5 w-75" id="reform">
  <h2>My ToDo App</h2>
  <hr>
  <div class="input-group">
    <input id="item" class="form-control" type="text" placeholder="할일을 입력하세요…">
    <button type="button" class="btn btn-primary">할일 추가</button>
  </div>
  <hr>
  <ul id="todolist" class="list-group"></ul>
</div>
</body>
<script>
function addItem() {
  let todo = document.getElementById("item");
  let list = document.getElementById("todolist");
  let listitem= document.createElement("li");
  listitem.className = "d-flex list-group-item list-group-item-action list-group-item-warning";
  let xbtn = document.createElement("button");

  xbtn.className = "btn-close ms-auto";

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

document.querySelector("button").addEventListener("click", addItem);
</script>
</html>