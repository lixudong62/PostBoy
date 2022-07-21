<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../common/header.jsp"></jsp:include>
</head>
<body>

<div class="tab-item-padding pd-20">
    <div class="layui-row layui-col-space10">
        <div class="layui-col-md5">
            <pre class="layui-code url ht-600"
                 contenteditable="true">http://localhost:9091/wui/index.html</pre>
        </div>
        <div class="layui-col-md2 layui-btn-container">
            <div class="layui-row btn-row-600">
                <button type="button" class="layui-btn layui-btn-sm layui-btn-normal" onclick="onPostSubmit()">POST提交 >
                </button>
            </div>
        </div>
        <div class="layui-col-md5">
            <div class="group">
                <pre class="layui-code res-body ht-600" contenteditable="true"></pre>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(() => {
        layui.use('code', function () {
            layui.code({elem: ".url", title: "请求地址", skin: 'dark', encode: true});
        });

        layui.use('code', function () {
            layui.code({elem: ".res-body", title: "响应数据", skin: 'dark', encode: true});
        });
    })

    function onPostSubmit() {
        let url = $(".url .layui-code-ol").text();
        $.ajax({
            type: "post",
            url: url,
            success: function (res) {
                $(".res-body").text(res)
                layui.use('code', function () {
                    layui.code({elem: ".res-body", title: "响应数据", skin: 'dark', encode: true});
                });
            },
            error: function (res) {
                $(".res-body layui-code-ol").text(JSON.stringify(res, null, "\t"))
            }
        })
    }

</script>
</body>
</html>