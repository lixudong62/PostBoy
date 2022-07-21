<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="common/header.jsp"></jsp:include>
    <link href="css/index.css" rel="stylesheet">
</head>
<body>
<div class="layui-row">
    <ul class="layui-nav" lay-filter="">
        <li class="logo">
            Post Boy
        </li>
        <li class="layui-nav-item layui-this">
            <a href="javascript:;" data-url="request/request-get.jsp">GET</a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;" data-url="request/request-post.jsp">POST</a>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;" data-url="request/request-json.jsp">JSON</a>
        </li>
    </ul>
</div>
<div class="layui-row content">
</div>
<script type="text/javascript">
    $(function () {
        $(".content").html("<iframe src='" + $(".layui-nav a").eq(0).attr("data-url") + "'></iframe>")
        $(".layui-nav a").click(function () {
            let url = $(this).attr("data-url")
            $(".content").html("<iframe src='" + url + "'></iframe>")
        })
    })
</script>
</body>
</html>