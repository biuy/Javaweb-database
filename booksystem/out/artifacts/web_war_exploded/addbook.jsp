<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <base href="<%=basePath%>">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>图书管理bookmanager</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/docs.min.css" rel="stylesheet">
    <link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/dashboard.css" rel="stylesheet">
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand headertext col-sm-3 col-md-2 mr-0" href="#">Copyright@.biu</a>
    <span class="form-control form-control-dark w-100 headertext">  Book System 图书管理系统 </span>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="bookname.jsp">
                            <span data-feather="layers"></span>
                            图书搜索 <span class="sr-only"></span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="addbook.jsp">
                            <span data-feather="shopping-cart">(current)</span>
                            图书采购
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="file"></span>
                            图书淘汰
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="users"></span>
                            借阅查询
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <h2 style="padding-bottom: 20px">图书搜索</h2>
            <form class="form-inline" method="post" enctype="multipart/form-data" action="bookadd.action">
                <div class="bd-example">

                    <dl>
                        <dt><h4>采购信息</h4></dt>
                        <dd>书名<input type="text" name="author" class="form-control" aria-label="Text input with dropdown button" placeholder="输入作者"></dd>
                        <dd></dd>
                        <dd>一个用聊天界面实现提醒功能的APP</dd>
                        <dd>iOS开发  主要工作：部分UI设计及所有代码编写</dd>
                    </dl>
                    <button type="submit" class="btn btn-primary" name="dosearch">搜索</button>

                </div>
            </form>

            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>索书号</th>
                        <th>书名</th>
                        <th>作者</th>
                        <th>出版社</th>
                        <th>库存</th>
                        <th>借阅</th>
                    </tr>
                    </thead>
                    <tbody>
                    <s:iterator value="books">
                        <tr>
                            <td><s:property value="booknumber"/></td>
                            <td><s:property value="bookname"/></td>
                            <td><s:property value="author"/></td>
                            <td><s:property value="publisher"/></td>
                            <td><s:property value="store"/></td>
                            <td><a href="#"><span data-feather="file"></span></a></td>
                        </tr>
                    </s:iterator>
                    </tbody>
                </table>
            </div>
        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/popper.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace()
</script>

<!-- Graphs -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
</body>
</html>
