<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="write-Wrap">
        <div class="write">
            <form action="/WriteContent" method="get">
                <div class="notice">
                    <h1>작성하기</h1>
                    <hr>
                </div>

                <div class="write-tit">
                    <label for="title" class="title">제목</label>
                    <input type="text" name="title" id="title" placeholder="제목 입력">
                </div>

                <div class="content">
                    <label for="content" class="title">내용</label>
                    <textarea name="content" id="content" cols="40" rows="20" placeholder="내용 입력"></textarea>
                </div>
                    
                    <input type="submit" value="완료" class="btn btn-dark">
                    <a href="./board.php"><input type="button" href="./board.php" value="취소" class="btn btn-dark"></a>
            </form>
        </div>
    </div>
</body>
</html>