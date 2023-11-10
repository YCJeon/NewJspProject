<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String name = request.getParameter("name");
    String id = request.getParameter("id");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");
    String birthday = request.getParameter("birthday");
    String schoolYear = request.getParameter("school-year");
    String attending = request.getParameter("attending");
    String color = request.getParameter("Color");
    String[] languages = request.getParameterValues("language");
    String introduction = request.getParameter("w3review");
%>
<html>
<head>
    <title>Form Data</title>
    <style>
        .color-box {
            width: 50px;
            height: 50px;
            background-color: <%= color %>;
        }
    </style>
</head>
<body>
<h2>입력한 정보</h2>
<p>이름: <%= name %></p>
<p>아이디: <%= id %></p>
<p>비밀번호: <%= password %></p>
<p>성별: <%= gender %></p>
<p>생년월일: <%= birthday %></p>
<p>현재 대학교 학년: <%= schoolYear %></p>
<p>현재 재학여부: <%= attending %></p>
<p>좋아하는 색: <span class="color-box"></span></p>
<p>가능한 언어:
    <% if (languages != null) {
        for (String language : languages) {
            out.println(language + " ");
        }
    }
    %>
</p>
<p>간단한 자기소개: <%= introduction %></p>
</body>
</html>
