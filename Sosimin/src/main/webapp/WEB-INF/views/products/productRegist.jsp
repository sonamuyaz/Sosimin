<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<title>소시민 상품등록</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/LineIcons.3.0.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/tiny-slider.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main/glightbox.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/product.css" />
<style type="text/css">
	article {
		text-align: center;
	}
	li{
	list-style-type: none;
	}
	.tag {
    display: inline-block;
    margin-right: 5px;
    padding: 5px;
    background-color: #eaeaea;
    border-radius: 2px;
    flex-shrink: 0;
    border-radius: 1rem;
    background: rgb(246, 246, 246);
    height: 2rem;
    -webkit-box-align: center;
    align-items: center;
    padding: 0.25rem 0.375rem;
}
    
    
/* 태그에 닫기 버튼 */
.close-button {
    background-position: center center;
    background-repeat: no-repeat;
    background-size: cover;
    width: 20px;
    height: 20px;
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIiBmaWxsPSJub25lIj4KICAgIDxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIgogICAgICAgIGQ9Ik0xMy40OTkzIDEyLjIxMzVDMTMuODU0OSAxMi41NjkxIDEzLjg1NDkgMTMuMTQ0OCAxMy40OTkzIDEzLjQ5OTNDMTMuMzIxNSAxMy42NzcxIDEzLjA4OTIgMTMuNzY2IDEyLjg1NTkgMTMuNzY2QzEyLjYyMzYgMTMuNzY2IDEyLjM5MDMgMTMuNjc3MSAxMi4yMTM1IDEzLjQ5OTNMOS45OTg0OSAxMS4yODYzTDcuNzg1NDcgMTMuNDk5M0M3LjYwNzcgMTMuNjc3MSA3LjM3NTM5IDEzLjc2NiA3LjE0MjA2IDEzLjc2NkM2LjkwOTc1IDEzLjc2NiA2LjY3NjQzIDEzLjY3NzEgNi40OTg2NiAxMy40OTkzQzYuMTQ0MTMgMTMuMTQ0OCA2LjE0NDEzIDEyLjU2OTEgNi40OTg2NiAxMi4yMTM1TDguNzEyNjkgMTAuMDAwNUw2LjQ5ODY2IDcuNzg2NDhDNi4xNDQxMyA3LjQzMTk1IDYuMTQ0MTMgNi44NTUyMSA2LjQ5ODY2IDYuNTAwNjhDNi44NTQyIDYuMTQ1MTQgNy40Mjk5MyA2LjE0NTE0IDcuNzg1NDcgNi41MDA2OEw5Ljk5ODQ5IDguNzEzN0wxMi4yMTM1IDYuNTAwNjhDMTIuNTY4MSA2LjE0NTE0IDEzLjE0MzggNi4xNDUxNCAxMy40OTkzIDYuNTAwNjhDMTMuODU0OSA2Ljg1NTIxIDEzLjg1NDkgNy40MzE5NSAxMy40OTkzIDcuNzg2NDhMMTEuMjg1MyAxMC4wMDA1TDEzLjQ5OTMgMTIuMjEzNVpNOS45OTk0OSAwQzQuNDg1NjMgMCAwIDQuNDg2NjQgMCAxMC4wMDA1QzAgMTUuNTE0NCA0LjQ4NTYzIDIwIDkuOTk5NDkgMjBDMTUuNTEzNCAyMCAyMCAxNS41MTQ0IDIwIDEwLjAwMDVDMjAgNC40ODY2NCAxNS41MTM0IDAgOS45OTk0OSAwWiIKICAgICAgICBmaWxsPSIjQ0NDQ0NDIiAvPgo8L3N2Zz4=);
    margin-left: 0.5rem;
    vertical-align: middle;
    border: none;
	}
/* 0/40 텍스트 박스 위치 이동*/
#textLength{
	display: inline-block;
	position: relative;
	right: 9em;
}
/* 업로드한 이미지 크기 조정 */
.imageSize {
	width: 201px;
	height: 201px;
	margin-left: 1em;
}	

/* form 전체 사이즈 줘서 사이즈 줄였을때 페이지 안뭉개지게 하기 */
.add-form{
	width: 1300px;
	max-width: 1300px;
}

/* .jyaWFk { */
/*    display: flex; */
/*    width: 856px; */
/*    flex-wrap: wrap; */
/*    overflow-x: hidden; */
/* } */
#imageTd {
	display: inline-block;
}

.form-group {
	display: inline-block;
}

 .mainImage { 
     position: absolute; 
     height: 1.5rem; 
     padding: 0px 0.5rem; 
     display: flex; 
     -webkit-box-align: center; 
     align-items: center; 
     top: 0.5rem; 
     left: 17px; 
     background: rgba(25, 25, 25, 0.3);
     color: rgb(255, 255, 255); 
     border-radius: 12px; 
     font-size: 12px; 
     vertical-align: middle;
     z-index: 1;
      }
      
.imageClose {
    width: 1.5rem;
    height: 1.5rem;
    background-position: center center;
    background-repeat: no-repeat;
    background-size: 12px 12px;
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiNGRkYiIGZpbGwtcnVsZT0iZXZlbm9kZCIKICAgICAgICBkPSJNNi44NDggNmwzLjc3Ni0zLjc3NmEuNi42IDAgMSAwLS44NDgtLjg0OEw2IDUuMTUgMi4yMjQgMS4zNzZhLjYuNiAwIDAgMC0uODQ4Ljg0OEw1LjE1MiA2IDEuMzc2IDkuNzc1YS42LjYgMCAxIDAgLjg0OC44NDlMNiA2Ljg0OGwzLjc3NiAzLjc3NmEuNTk4LjU5OCAwIDAgMCAxLjAyNC0uNDI1LjYuNiAwIDAgMC0uMTc2LS40MjRMNi44NDggNnoiIC8+Cjwvc3ZnPg==);
    background-color: rgb(25, 25, 25);
    opacity: 0.3;
    border-radius: 50%;
    position: absolute;
    right: 8px;
    top: 3px;
/*     top: 0.5rem; */
}      

#tradeXText{
text-decoration : underline;
}

#image_container{
	position: relative;
}
  p span {
    color: red;
  }
  p {
  	font-weight: bold;
  	font-size: 20px;
  	color: black;
  }

/* 거래금지품목 위치 */
#tradeX{
	position:relative;
    right: 10em;
    font-size: 1rem;
    color: rgb(153, 153, 153);
    font-weight: 400;
    line-height: 125%;
    text-decoration: underline;
    
}

#productName{
	display: inline-block;
	position: relative;
}

.imageItem {
	display: inline-block;
	position: relative;
}

h1 {
	text-align: center;
}

#Category{
	color:red;
}


#myMapButton {
    height: 3rem;
    width: 6.5rem;
    text-align: center;
    font-size: 16px;
    font-weight: 400;
    line-height: 125%;
    color: rgb(25, 25, 25);
    border: 1px solid rgb(204, 204, 204);
    margin-right: 1rem;
    border-radius: 2px;
    background-color: white;
}

#divPadding{
	padding-top: 10px;
	padding-bottom: 10px;
}
</style>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.js"></script>
</head>
<script>
$(function() {
	
	// 파일 이미지로만 제한
	$(function() {
		$(".file").on("change", function() {
			let fileVal = $(this).val();
			if (fileVal != "") {
				let ext = fileVal.split('.').pop().toLowerCase(); // 확장자 분리
				
				// 허용되는 확장자 리스트
				let allowedExtensions = ['jpg', 'jpeg', 'gif', 'png'];
				
				// 허용되지 않는 확장자일 경우 경고 메시지 출력 후 등록 취소
				if (!allowedExtensions.includes(ext)) {
					alert("jpg, gif, jpeg, png 파일만 업로드 할 수 있습니다.");
					$(this).val(""); // 파일 입력 필드 초기화
					return false;
				}
			}
		});
	});
	
		  
	navigator.geolocation.getCurrentPosition(function(position) {
		  var latitude = position.coords.latitude; // 현재 위치의 위도
		  var longitude = position.coords.longitude; // 현재 위치의 경도

		  var container = document.getElementById('map'); // 지도를 표시할 위치
		  var options = {
		    center: new kakao.maps.LatLng(latitude, longitude), // 지도 위치 설정(내위치)
		    level: 3 // 지도 확대 레벨(휠로 돌리기전 기본 레벨 설정)
		  };

		  map = new kakao.maps.Map(container, options); // 지도 생성 및 표시

		  var markerPosition = new kakao.maps.LatLng(latitude, longitude); // 마커의 위치 좌표 내위치기준으로 좌표줬음
		  marker = new kakao.maps.Marker({
		    position: markerPosition		// 마커 생성 시 위치 설정
		  });
		  marker.setMap(map); // 마커를 지도에 표시해준다.
		});
		
		// 내위치정보 클릭 시 해당 위치의 주소 가져오기(위도 / 경도를 도로명주소,지번주소로 변경)
		$("#myMapButton").on("click", function() {
		  var geocoder = new kakao.maps.services.Geocoder(); // 주소-좌표 변환 객체 생성(카카오api사용)
		  var markerPosition = marker.getPosition(); // 마커의 위치 좌표(위에서 찍힌 마커 위치 좌표를 가져옴)
		  var latitude = markerPosition.getLat(); // 마커의 위도(내가 가져온 현재 위치의 위도)
		  var longitude = markerPosition.getLng(); // 마커의 경도(내가 가져온 현재 위치의 경도)

		  geocoder.coord2Address(longitude, latitude, function(result, status) {
		   if (status === kakao.maps.services.Status.OK) { // 주소-좌표 변환 성공 시
			// 도로명 주소가 있을 경우 도로명 주소를, 없을 경우 지번 주소를 표시
	          var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	          detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	          
	          var address = result[0].address.address_name; // 지번 주소
	          
	          var modifiedAddress = address.split(' ')[0] + "광역시 " +  address.split(' ')[1] + ' ' + address.split(' ')[2];
	          
	          $("#myMap").val(modifiedAddress);
	          
	          
		    } else {
		      alert("주소를 가져오지 못했습니다.");
		    }
		  });
		});
		
	});

// XX 자릿수 이상을 입력 못하게 하기위한 코드

function key() {
	
	var productNameLength = $("#productName").val().length;
	
		$("#productNameLength").text(productNameLength) ;
		
	var ProductDescriptionLength = $("#ProductDescription").val().length;
	
		$("#ProductDescriptionLength").text(ProductDescriptionLength) ;
};

// XX자리 이상 입력후 한글자 더 입력 시 올라가는걸 막기위한 코드 
function limitInputLength(input, maxLength) {
    if (input.value.length > maxLength) {
      input.value = input.value.slice(0, maxLength);
    }
    document.getElementById("productNameLength").textContent = input.value.length;
  }


function addACategory() {
    var selectedCategory = $("#categoryName").val();
    var selectElement = document.getElementById("categoryName");
    
    // 카테고리 선택시 카테고리를 선택하세요 부분을 삭제해준다.
    var defaultOption = selectElement.querySelector("option[value='default']");
    if (defaultOption) {
      selectElement.removeChild(defaultOption);
    }
    
    document.getElementById("selectCategory").innerHTML = selectedCategory;
  }
  
  
function price(input) {
	  // 숫자 이외의 값을 입력 못하게한다.
// 	  input.value = input.value.replace(/[^0-9]/g, '');
	  
	  var value = input.value.replace(/[^0-9]/g, '');
	  
	  var formattedValue = Number(value).toLocaleString();
	  
	  input.value = formattedValue;
	}
	
	// 천 단위로 , 를 표시 
function addCommas(value) {
	  var parts = value.split(".");
	  parts[0] = parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	  return parts.join(".");
	}
	
function handleKeyPress(e) {
	  if (e.keyCode === 13) { // 엔터키 키코드는 13번이라고 한다.
	    e.preventDefault(); // 엔터 키의 기본 동작인 줄 바꿈을 방지
	    handleTagRegistration(); // onclick 함수 호출
	  }
	}

	function handleTagRegistration() {
	  var tagName = document.getElementById("tagName").value;

	  if (tagName !== "") { // 입력폼에 널스트링이 아닐 시 
		// <span> 요소를 생성하고 생성한 <span> 요소 텍스트 내용을 #태그이름 으로 설정한다.
	    var tagElement = document.createElement("span");
	    tagElement.innerText = "#" + tagName;
	    tagElement.classList.add("tag"); // 생성한 <span> 요소에 "tag" 클래스를 추가
		// X 버튼 클릭 시 삭제 기능 추가한다.
	    var closeButton = document.createElement("button"); // 버튼 생성
	    closeButton.innerText = ""; // X 모양으로 표시했다.
	    closeButton.classList.add("close-button"); // 클래스 추가
	    tagElement.appendChild(closeButton); //  클릭시 삭제한다

	    var tagContainer = document.getElementById("tagContainer");
	    tagContainer.appendChild(tagElement);
		 // 최대 5개까지 태그를 허용하고, 5개 이상이면 입력 필드를 비활성화 시킴
	    if (tagContainer.querySelectorAll(".tag").length >= 5) {
	      document.getElementById("tagName").disabled = true;
	    }

	    document.getElementById("tagName").value = "";
	  }
	}

$(document).on("click", ".close-button", function() {
    $(this).closest(".tag").remove();
    $("#tagName").prop("disabled", false);
});

// 썸네일 이미지 작업을 위한 코드
function setThumbnail(event) {
  var reader = new FileReader();
  var imageContainer = document.getElementById("image_container");

  reader.onload = function(event) {
    var img = document.createElement("img");
    img.setAttribute("src", event.target.result);
    img.setAttribute("class", "imageSize");

    var imageText = document.querySelector(".mainImage");
    imageText.style.display = "inline";

    var closeButton = document.createElement("button");
    closeButton.setAttribute("type", "button");
    closeButton.setAttribute("class", "imageClose");
    closeButton.setAttribute("onclick", "removeImage(this)");

    var imageItem = document.createElement("span");
    imageItem.classList.add("imageItem");
    imageItem.appendChild(img);
    imageItem.appendChild(closeButton);

    imageContainer.appendChild(imageItem);
  };

  reader.readAsDataURL(event.target.files[0]);
}

function removeImage(button) {
  var imageItem = button.parentNode;
  var imageContainer = imageItem.parentNode;
  imageContainer.removeChild(imageItem);

  // 대표 이미지가 없는 경우 숨김 처리
  var imageText = document.querySelector(".mainImage");
  if (imageContainer.children.length === 1) {
    imageText.style.display = "none";
  }
}

function addFileInput() {
	  // 파일 선택 input 요소를 선택합니다.
	  var fileInput = document.getElementById('product_image');

	  // 파일 선택 input 요소를 클릭합니다.
	  fileInput.click();
	}



</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9a75e8ce5f3bdcb17d52cf91eac1f473&libraries=services"></script>
<body>
	
	
	<header class="header navbar-area">
		<jsp:include page="../inc/top.jsp"></jsp:include>
	</header>
	<div class="container content-wrapper">
		<div class="addBox">
			<form id="addForm" name="addForm" class="add-form" th:action="@{/admin/product/add}" method="post" enctype="multipart/form-data">
			<h1>상품 등록</h1>
			
				<ul>
					<li class="th"><p>상품이미지<span>*</span></p></li>
					<li class="td" id="imageTd"></li>
				</ul>
				<img src="${pageContext.request.contextPath}/resources/images/이미지버튼.png" class="thumbnail" onclick="addFileInput()">

				<input class="form-control form-control-user" type="file" style="display: none;"
				  name="product_image" id="product_image" onchange="setThumbnail(event);">
				
				<div class="form-group">
				  <div id="image_container">
				    <span class="mainImage" style="display: none; padding-top: 5px;">대표이미지</span>
				  </div>
				</div>
						
				<hr>
				<!-- 현재 등록돼 있는 카테고리 목록 호출, 사용자가 추가 가능 -->
				<ul>
					<li ><p id="divPadding">상품명<span>*</span></p></li>
					<li class="td">
						<div>
							<input type="text" id="productName" onkeyup="key()" maxlength="40" oninput="limitInputLength(this, 40)"
							placeholder="상품명을 입력해 주세요." class="text-box">
							<a href="https://help.bunjang.co.kr/faq/2/220" target="_blank" id="tradeX">
							 <span id="tradeXText">거래금지 품목 보기</span></a>
							 <div id="textLength">
							 <span id="productNameLength">0</span><span>/40</span>
							 </div>
						</div>
					</li>
				</ul>
				<hr>
				<ul>
					<li class="th"><p id="divPadding">카테고리<span>*</span></p></li>
					<li class="td">
						<select id="categoryName" name="categoryName" class="dataTable-selector selector" onchange="addACategory();">
							<option value="default">카테고리를 선택하세요.</option>
							<option>패션잡화(모자/가방/지갑)</option>
							<option>아우터</option>
							<option>상의</option>
							<option>하의(치마)</option>
							<option>아동복</option>
							<option>셋업 세트(원피스)</option>
							<option>신발</option>
						</select>
						<div id="Category">
						선택한 카테고리 : 
						<b id="selectCategory"></b>
						</div>
					</li>
				</ul>
				
				
				<ul>
					<li class="th"><p id="divPadding">거래지역<span>*</span></p></li>
					<li class="td">
						<input type="hidden" id="map">
						<div id="divPadding"><input type="button" id="myMapButton" value="내 위치"></div>
						<input type="text" name="myMap" id="myMap" size="25" required disabled placeholder="지역을 설정해 주세요">
					</li>
				</ul>
				
				<ul>
					<li class="th"><p>상품 상태<span>*</span></p></li>
					<li class="td">
						<input type="radio" id="productStatus1" name="productStatus">보통<br>
						<input type="radio" id="productStatus2" name="productStatus">좋은상태<br>
						<input type="radio" id="productStatus3" name="productStatus">새상품<br>
					</li>
				</ul>
				
				<ul>
					<li class="th"><p>가격<span>*</span></p></li>
					<li class="td">
						<input type="text" id="priceInput" placeholder="가격을 입력해 주세요." oninput="price(this)" maxlength="11">원
						<div><input type="checkbox">가격제안 받기</div>
					</li>
				</ul>
				
				<ul>
					<li class="th"><p>설명<span>*</span></p></li>
					<li class="td">
						<div>
							<textarea rows="6" cols="100" style="resize: none;" id="ProductDescription" maxlength="2000" onkeyup="key()" 
							oninput="limitInputLength(this, 2000)" placeholder="구매시기,브랜드/모델명,제품의 상태(사용감,하자 유무) 등을 입력해 주세요"></textarea>
							<span id="ProductDescriptionLength">0</span><span>/2000</span>
						</div>
					</li>
				</ul>
				<!-- ProductTag ENUM 호출 -->
				<ul>
					<li class="th"><p>태그</p></li>
					<li class="td">
						<input type="text" id="tagName" placeholder="태그를 입력해 주세요. (최대 5개 까지 등록)" size="34" maxlength="9" onkeypress="handleKeyPress(event)">
						<input type="button" value="등록" onclick="handleTagRegistration()"><br>
						<span id="tagContainer"></span>
						<div></div>
						- 태그는 띄어쓰기로 구분되며 최대 9자까지 입력할 수 있어요.<br>
						- 내 상품을 다양한 태그로 표현해 보세요.<br>
						- 사람들이 내 상품을 더 잘 찾을 수 있어요.<br>
						- 상품과 관련 없는 태그를 입력할 경우, 판매에 제재를 받을 수 있어요.<br>
					</li>
				</ul>
   				<div class="buttonBox">
					<button type="button">상품등록</button>
				</div>
			</form>
		</div>
	</div>
	<!-- JS -->
    <th:block layout:fragment="script">
    	<script th:src="@{/js/selector.js}" type="text/javascript"></script>
    	<script th:src="@{/js/product.js}" type="text/javascript"></script>
    	
    	<!-- CKEditor4 -->
	  	<script src="https://cdn.ckeditor.com/4.19.0/standard/ckeditor.js"></script>
	  	<script type="text/javascript">
	  	$(function() {
			let ckeditor_config = {
					filebrowserUploadMethod : 'form',
					filebrowserUploadUrl : '/admin/product/add/contentImageUpload',
					language : 'ko'
			};
			CKEDITOR.replace('prodDetailContent', ckeditor_config);
	  	});
		</script>
		
    	<!-- Select2 -->
    	<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
		<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
	</th:block>
</body>
</html>
















