<%@ page contentType = "text/html;charset=utf-8" %>

<html>
    <head>
        <link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity = "sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin = "anonymous">
        <script src = "https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity = "sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin = "anonymous"></script>
        <script src = "https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity = "sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin = "anonymous"></script>
        <script src = "https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity = "sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin = "anonymous"></script>
        <script type = "text/javascript" src = "../js/member_check.js"></script>
        <title>상품 등록</title>
</head>
<body>
	<jsp:include page="../top_menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원가입</h1>
		</div>
	</div>
	<div class="container">
		<form name = "newMember" id = "UserJoin_check" action = "member_add_process.jsp" class = "form-horizontal" method = "post"
              enctype ="multipart/form-data", onsubmit = "return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2">아이디</label>
				<div class="col-sm-3">
					<input type="text" id = "id" name = "id" class = "form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" id = "password" name = "password" class = "form-control" >
				</div>
			</div>
            
            <div class="form-group row">
				<label class="col-sm-2">비밀번호 재확인</label>
				<div class="col-sm-3">
					<input type="password" id = "password_check" name = "password_check" class = "form-control" >
				</div>
			</div>
            
			<div class="form-group row">
				<label class="col-sm-2">이름</label>
				<div class="col-sm-3">
					<input type="text" id = "name" name = "name" class = "form-control" >
				</div>
			</div>
			<div class="form-group row">
                <c:out value="hello World"/>
				<label class="col-sm-2">성별</label>
				<div class="col-sm-5">
					<input type = "text" id = "gender" name = "gender" class = "form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-3">
					<input type="email" id = "mail" name = "mail" class = "form-control">
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">폰번호</label>
				<div class="col-sm-3">
					<input type="text" id = "phone" name = "phone" class = "form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">주소</label>
				<div class="col-sm-3">
					<input type="text" id = "address" name = "address" class = "form-control" >
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class = "btn btn-primary" value= "가입">
                    <a href = "../login/login_user.jsp" class = "btn btn-sm btn-success pull-right">로그인(이전페이지)</a>
				</div>
			</div>
		</form>
	</div> 
    
    <script type = "text/javascript">
        function checkForm() {
            if(!document.newMember.id.value) {
                alert("아이디를 입력하세요!");
                return false;
            }
            if(!document.newMember.password.value) {
                alert("비밀번호를 입력하세요!");
                return false;
            }
            
            if(document.newMember.password.value != document.newMember.password_check.value) {
                alert("비밀번호를 동일하게 입력하세요!");
                return false;
            }
            
            if(!document.newMember.name.value) {
                alert("이름을 입력하세요!");
                return false;
            }
        }
    </script>
</body>
</html>