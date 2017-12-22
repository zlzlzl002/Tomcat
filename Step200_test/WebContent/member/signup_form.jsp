<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/signup_form.jsp</title>
<jsp:include page="resource.jsp"></jsp:include>
<style>
 body {
        background: #f8f8f8;
        padding: 100px 0;
    }
    
    #form_css > div {
        margin: 15px 0;
    }
    body { padding: 2em; }
</style>
</head>
<body> 
<div class="container">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">환영합니다!</div>
            </div>
            <div class="panel-body">
                <form action="signup.jsp" method="post" id="form_css">
                    <div>
                        <input type="text" class="form-control" name="id" id="id" placeholder="Username" autofocus>
                    </div>
                    <div>
                        <input type="text" class="form-control" name="pwd" id="pwd" placeholder="Password">
                    </div>
                     <div>
                     	<a class="form-control btn btn-primary" href="login_form.jsp">로그인</a>
                    </div>
                    <div>
                        <button type="submit" class="form-control btn btn-success">회원 가입</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>