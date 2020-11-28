<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2020/11/28
  Time: 19:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath() + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
    <title>WELCOME! 在线考试系统</title>
</head>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
      content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- -->
<script>
    var __links = document.querySelectorAll('a');
    function __linkClick(e) {
        parent.window.postMessage(this.href, '*');
    };
    for (var i = 0, l = __links.length; i < l; i++) {
        if (__links[i].getAttribute('data-t') == '_blank') {
            __links[i].addEventListener('click', __linkClick, false);
        }
    }
</script>
<script src="<%=path%>/js/jquery.js"></script>
<script>
    $(document).ready(function(c) {
        $('.alert-close').on('click', function(c) {
            $('.message').fadeOut('slow', function(c) {
                $('.message').remove();
            });
        });
    });
</script>
</head>
<body>
<!-- contact-form -->
<div class="message warning">
    <div class="inset">
        <div class="login-head">
            <h1>修改密码</h1>
            <div class="alert-close"></div>
        </div>
        <form action="userServlet" method="get" id="form">
            <input type="hidden" name="method" value="retrieve">
            <li><input name="username" type="text" class="text" placeholder="请输入找回用户名">
            </li>
            <li><input name="name" type="text" placeholder="真实姓名">
            </li>
            <li><input name="telephone" type="text" placeholder="请输入电话">
            </li>
            <li><input name="password" type="password" placeholder="新的密码">
            </li>
            <div class="clear"></div>
            <div class="submit">
                <input type="submit" value="Retrieve" id="submit">
                <h4>
                    <a href="login.jsp" style="float: right">想起了密码，前往登录</a>
                </h4>
                <br>
                <br> <span style="color: red; font-size: 10px">${login_msg}</span>
                <div class="clear"></div>
            </div>
        </form>
    </div>
</div>

<div style="display: none">
    <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
            language='JavaScript' charset='gb2312'></script>
</div>
</body>
</html>
