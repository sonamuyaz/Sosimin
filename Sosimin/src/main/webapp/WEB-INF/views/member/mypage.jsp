<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Muse-Market</title>

<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/list.css" />

<link rel="stylesheet" type="text/css" href="css/styles.css" />
<link rel="stylesheet" type="text/css" href="css/styles1.css" />

<!-- Bootstrap CDN -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

<!-- 헤더 푸터 -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/price-range.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="images/ico/apple-touch-icon-57-precomposed.png">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
a {
	text-decoration: none;
	color: black;
}
</style>

</head>
<body>

	<!-- 헤더 : header -->
	<div th:replace="~{common/header :: headerFragment}"></div>
	<!-- 내비바 -->


	<div id="wrapper" style="min-height: 800px;">
		<div class="container" style="height: auto;">

			<h1>My Muse</h1>
			<br />

			<!-- 프로필 -->
			<div id="content"
				style="width: 200px; padding-top: -100px; float: left; padding-left: 0px;">
				<div class="card" style="width: 200px">
					<img class="card-img-top" src="./images/mypage/profile.png"
						alt="Card image" style="width: 100%">
					<div class="card-body">
						<h4 class="card-title">
							<div>
								<span th:text="${session.login.getUserName()}"></span> ( <span
									th:text="${session.login.getUserId()}"></span> )
							</div>
						</h4>

						<div>
							<ul>
								<li>거래 지역 : <span th:text="${session.login.getUserAddr()}"></span></li>
								<li>전화번호 : <span th:text="${session.login.getUserTel()}"></span></li>
								<li>이메일 : <span th:text="${session.login.getUserEmail()}"></span></li>
							</ul>
						</div>

						<a th:href="@{mypage_updated.action}" class="btn btn-primary"
							style="background-color: black; width: 100%; font-size: 11px">
							내 정보 수정하기</a>
						<div th:if="${session.login.userId}==Master">
							<a th:href="@{qa_list.action}" class="btn btn-primary"
								style="background-color: black; width: 100%; font-size: 11px">
								1:1 문의 확인하기</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 프로필 끝-->

			<div id="content" style="padding-left: 230px; height: 0px;">

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item"><a class="nav-link active"
						data-toggle="tab" href="#home" style="color: black;">판매내역</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu2" style="color: black;">찜한상품</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu3" style="color: black;">나의 댓글</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#menu4" style="color: black;">나의 커뮤니티</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div id="home" class="container tab-pane active">
						<br>

						<!-- 판매 -->



						<table class="table" style="width: 850px;">
							<thead class="bg-light">
								<tr>
									<th scope="col" style="width: 50px">품번</th>
									<th scope="col" style="width: 150px">이미지</th>
									<th scope="col" style="width: 150px">이름</th>
									<th scope="col" style="width: 250px">제목</th>
									<th scope="col" style="width: 100px">가격</th>
									<th scope="col" style="width: 150px">등록일</th>
								</tr>

							</thead>
							<tbody>
								<tr th:each="item : ${saleLists}">
									<td th:text=" '#'+ ${item.prodNo}" style="line-height: 100px"></td>
									<td
										th:with="baseUrl=(${item.prodNo}? 'sale_article.action' : ${item.prodNo})">
										<a th:href="@{${baseUrl}(prodNo=${item.prodNo})}"> <img
											th:src="@{/upload/} + ${item.tmImg}" width="100px"
											height="100px" alt="" />
									</a>
									</td>
									<td th:text="${item.prodName}" style="line-height: 100px"></td>
									<td th:text="${item.prodSubject}" style="line-height: 100px"></td>
									<td th:text="${item.prodPrice} + '원'"
										style="line-height: 100px"></td>
									<td th:text="${item.prodCreated}" style="line-height: 100px"></td>
								</tr>
							</tbody>
						</table>



					</div>

					<div id="menu2" class="container tab-pane fade">
						<br>


						<table class="table" style="width: 850px;">
							<thead class="bg-light">
								<tr>
									<th scope="col" style="width: 50px">품번</th>
									<th scope="col" style="width: 150px">이미지</th>
									<th scope="col" style="width: 150px">이름</th>
									<th scope="col" style="width: 250px">제목</th>
									<th scope="col" style="width: 100px">가격</th>
									<th scope="col" style="width: 150px">등록일</th>
								</tr>

							</thead>
							<tbody>
								<tr th:each="item : ${heartLists}">
									<td th:text=" '#'+ ${item.prodNo}" style="line-height: 100px"></td>
									<td
										th:with="baseUrl=(${item.prodNo}? 'sale_article.action' : ${item.prodNo})">
										<a th:href="@{${baseUrl}(prodNo=${item.prodNo})}"> <img
											th:src="@{/upload/} + ${item.tmImg}" width="100px"
											height="100px" alt="" />
									</a>
									</td>
									<td th:text="${item.prodName}" style="line-height: 100px"></td>
									<td th:text="${item.prodSubject}" style="line-height: 100px"></td>
									<td th:text="${item.prodPrice} + '원'"
										style="line-height: 100px"></td>
									<td th:text="${item.prodCreated}" style="line-height: 100px"></td>
								</tr>
							</tbody>
						</table>


					</div>
					<div id="menu3" class="container tab-pane fade">
						<br>


						<table class="table" style="width: 850px;">
							<thead class="bg-light">
								<tr style="">
									<th scope="col" rowspan="2"
										style="width: 50px; line-height: 20px;">리뷰<br /> 번호
									</th>
									<th scope="col" style="width: 500px" colspan="2">상품 종류</th>
									<th scope="col"
										style="width: 150px; line-height: 50px; text-align: center;"
										rowspan="2">작성일</th>
									<th scope="col"
										style="width: 100px; line-height: 50px; text-align: center;"
										rowspan="2">상품 페이지</th>
								</tr>
								<tr style="height: 10px;">
									<th scope="col" style="width: 300px" colspan="2">나의 댓글</th>
								</tr>
							</thead>

							<tbody th:each="item : ${reviewLists}">
								<tr>
									<td rowspan="2" th:text=" '#'+ ${item.reviewNo}"
										style="line-height: 50px"></td>
									<td colspan="2"
										th:text="'#'+${item.prodNo} + ' ) ' +${item.prodName} + ' : ' + ${item.prodSubject}"></td>
									<td rowspan="2" th:text="${item.reviewCreated}"
										style="line-height: 50px; text-align: center;"></td>
									<td rowspan="2" style="line-height: 50px; text-align: center;"
										th:with="baseUrl=(${item.prodNo}? 'sale_article.action' : ${item.prodNo})">
										<a th:href="@{${baseUrl}(prodNo=${item.prodNo})}">More</a>
									</td>
								</tr>
								<tr>
									<td>ㄴ</td>
									<td th:text="${item.reviewContent}"></td>
								</tr>
							</tbody>
						</table>

					</div>

					<div id="menu4" class="container tab-pane fade">
						<br>

						<table class="table" style="width: 850px;">
							<thead class="bg-light">
								<tr>
									<th scope="col" style="width: 50px; line-height: 15px;">커뮤<br />
										번호
									</th>
									<th scope="col" style="width: 500px; line-height: 30px;">제목</th>
									<th scope="col" style="width: 150px; line-height: 30px;">등록일</th>
									<th scope="col"
										style="width: 100px; text-align: center; line-height: 30px;">커뮤니티</th>
								</tr>

							</thead>
							<tbody>
								<tr th:each="item : ${commuLists}">
									<td th:text=" '#'+ ${item.commuNo}" style="line-height: 50px"></td>
									<td th:text="${item.commuSubject}" style="line-height: 50px"></td>
									<td th:text="${item.commuCreated}" style="line-height: 50px"></td>
									<td style="line-height: 50px; text-align: center;"
										th:with="baseUrl=(${item.commuNo}? 'list.action' : ${item.commuNo})">
										<a th:href="@{${baseUrl}(commuNo=${item.commuNo})}">More</a>
									</td>
								</tr>
							</tbody>
						</table>


					</div>
				</div>
			</div>
			<!-- Tab panes -->

			<br /> <br />
		</div>

	</div>

	<!-- 내비바 끝-->

	<br />
	<br />
	</div>

	
	<!-- 푸터 : footer -->
	<div th:replace="~{common/footer :: footer}"></div>

	<script src=" js/jquery.js"></script>
	<script src=" js/bootstrap.min.js"></script>
	<script src=" js/jquery.scrollUp.min.js"></script>
	<script src=" js/price-range.js"></script>
	<script src=" js/jquery.prettyPhoto.js"></script>
	<script src=" js/main.js"></script>

</body>
</html>