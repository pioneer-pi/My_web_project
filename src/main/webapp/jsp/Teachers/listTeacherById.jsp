<%--
  Created by IntelliJ IDEA.
  User: pioneer
  Date: 2021/12/5
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${teacher.name}-老师介绍</title>
    <link rel="stylesheet" href="/2019210179/Public_CSS/sidebar.css" type="text/css">
    <style>
        /*
        Card布局展示老师图片
        */
        .blank2{
            flex-direction: row;
            align-items: center;
        }
        .blank2 .card{
            margin: 40px 20px;
            width: 200px;
            height: 300px;
            text-align: center;
            position: relative;
            left: 280px;

        }
        .blank2 .card .img img{
            width: 200px;
            height: 300px;
            object-fit: cover;
            border-radius: 5px;
        }
        .blank2 .card .container{
            padding: 10px;
        }
        .blank2 .card .container p{
            text-align: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="header">
        <%@ include file="/jsp/header.jsp"%>
    </div>
    <div class="navigation">
        <%@ include file="/jsp/navigation.jsp"%>
    </div>
    <div class="context">
        <div class="article">
            <div class="blank1">
                <h2>教师队伍</h2>
                <ul>
                    <li><a href="/2019210179/listTeachersByTitle?Title=讲师">讲师</a></li>
                    <li><a href="/2019210179/listTeachersByTitle?Title=副教授">副教授</a></li>
                    <li><a href="/2019210179/listTeachersByTitle?Title=教授">教授</a></li>
                </ul>
            </div>
            <div class="blank2">
                <div class="card">
                    <div class="img">
                        <img src="/2019210179/resources/teachers/teacher_${teacher.id}.jpg" alt="${teacher.name}">
                    </div>
                    <div class="container">
                        <p>${teacher.name}</p>
                    </div>
                </div>
                <br>
                <p>${teacher.name}</p>
                <p>${teacher.introduce}</p>
            </div>
            <div class="blank3">
            </div>
        </div>
    </div>
<%--    footer--%>
    <%@ include file="/jsp/footer.jsp"%>
</div>
</body>
</html>
