<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항</title>
<link rel="stylesheet" type="text/css" href="/all_about_knowledge/front/student/css/semantic.css">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"
  integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
  crossorigin="anonymous"></script>
<script src="/all_about_knowledge/front/student/js/semantic.js"></script>

 <style type="text/css">
  body {
    background-color: #FFFFFF;
  }
  .ui.menu .item img.logo {
    margin-right: 1.5em;
  }
  .main.container {
    margin-top: 7em;
  }
  .wireframe {
    margin-top: 2em;
  }
  .ui.footer.segment {
    margin: 5em 0em 0em;
    padding: 5em 0em;
  }
  .ui.fixed.menu {
    background-color: #FFFFFF !important;
    color: #000000 !important;
  }
  .ui.fixed.menu .item {
    color: #000000 !important;
  }
  .ui.fixed.menu .item:hover {
    background-color: #F0F0F0 !important;
  }
  .ui.vertical.footer.segment {
    background-color: #FFFFFF !important;
    color: #000000 !important;
  }
  .ui.vertical.footer.segment .header, .ui.vertical.footer.segment .item {
    color: #000000 !important;
  }
  .ui.vertical.footer.segment .item:hover {
    background-color: #F0F0F0 !important;
  }
  .search-container {
    display: flex;
    justify-content: flex-end;
  }
</style>

</head>
<body>

  <div class="ui fixed menu">
    <div class="ui container">
      <a href="#" class="header item">
        <img class="logo" src="assets/images/logo.png">
        Project Name
      </a>
      <a href="#" class="item">Home</a>
      <div class="ui simple dropdown item">
        Dropdown <i class="dropdown icon"></i>
        <div class="menu">
          <a class="item" href="#">Link Item</a>
          <a class="item" href="#">Link Item</a>
          <div class="divider"></div>
          <div class="header">Header Item</div>
          <div class="item">
            <i class="dropdown icon"></i>
            Sub Menu
            <div class="menu">
              <a class="item" href="#">Link Item</a>
              <a class="item" href="#">Link Item</a>
            </div>
          </div>
          <a class="item" href="#">Link Item</a>
        </div>
      </div>
    </div>
  </div>

  <div class="ui main container">
    <h1 class="ui header">문의사항</h1>
    
    <div class="search-container">
      <div class="ui icon input">
        <input type="text" placeholder="Search...">
        <i class="search icon"></i>
      </div>
    </div>
    
    <table class="ui very basic table">
      <thead>
        <tr>
          <th>No</th>
          <th>Title</th>
          <th>Date</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>문의사항 제목 1</td>
          <td>2024-06-08</td>
        </tr>
        <tr>
          <td>2</td>
          <td>문의사항 제목 2</td>
          <td>2024-06-07</td>
        </tr>
        <tr>
          <td>3</td>
          <td>문의사항 제목 3</td>
          <td>2024-06-06</td>
        </tr>
      </tbody>
    </table>
  </div>

  <div class="ui vertical footer segment">
    <div class="ui center aligned container">
      <div class="ui stackable inverted divided grid">
        <div class="three wide column">
          <h4 class="ui inverted header">Group 1</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Group 2</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="three wide column">
          <h4 class="ui inverted header">Group 3</h4>
          <div class="ui inverted link list">
            <a href="#" class="item">Link One</a>
            <a href="#" class="item">Link Two</a>
            <a href="#" class="item">Link Three</a>
            <a href="#" class="item">Link Four</a>
          </div>
        </div>
        <div class="seven wide column">
          <h4 class="ui inverted header">Footer Header</h4>
          <p>Extra space for a call to action inside the footer that could help re-engage users.</p>
        </div>
      </div>
      <div class="ui inverted section divider"></div>
      <img src="assets/images/logo.png" class="ui centered mini image">
      <div class="ui horizontal inverted small divided link list">
        <a class="item" href="#">Site Map</a>
        <a class="item" href="#">Contact Us</a>
        <a class="item" href="#">Terms and Conditions</a>
        <a class="item" href="#">Privacy Policy</a>
      </div>
    </div>
  </div>
</body>

</html>