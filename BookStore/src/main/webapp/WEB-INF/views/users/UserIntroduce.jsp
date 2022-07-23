<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:url value="${pageContext.request.contextPath}" var="base" />

<!-- SPRING FORM -->
<%@ taglib prefix="springform"
	uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>Contact</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
	<link rel="stylesheet" type="text/css"
    	href="${base}/css/users/Introduce.css">
<script type="text/javascript" src="${base}/js/users/jquery-3.5.1.js"></script>
<script type="text/javascript" src="${base}/js/users/script-contact.js"></script>
<script type="text/javascript" src="${base}/js/users/shop.js"></script>
</head>
<body>
	<!-- wrapper -->
	<div class="wrapper">
		<!-- header -->
		<jsp:include page="/WEB-INF/views/users/common/header.jsp"></jsp:include>
		<!-- /header -->
		<!-- main -->

        <div style="text-align: center"><h1>NHÀ SÁCH NVTaza KÍNH CHÀO QUÝ KHÁCH</h1></div>
        <div class="cand">
        Kính CHÀO QUÝ KHÁCH HÀNG THÂN MẾN<br><br>

        Trước hết, nhà sách <b>NVTaza</b> xin chân thành cám ơn quý khách hàng đã tin tưởng và hợp tác với cửa hàng chúng tôi trong suốt thời gian qua !<br><br>

        Để đáp lại niềm tin đó, chúng tôi luôn không ngừng nâng cao chất lượng và hệ thống phục vụ ngày càng hoàn thiện hơn .<br><br>

        Thưa Quý Khách Hàng<br><br>



        Khởi đầu công ty lấy tên gọi là "Nhà Sách King-book" tại trung tâm bờ hồ Hoàn Kiếm .Nhằm mở rộng thị trường và đáp ứng nhu cầu khắt khe nhất của quý khách hàng công ty đã mở rộng mặt bằng tại Số 3 Hàng Tre - Hoàn Kiếm - Hà Nội và hiện nay lấy tên là " Nhà Sách NVTaza " địa chỉ số 14 Chương Dương Độ. Trải qua bao thăng trầm và sự cố gắng nỗ lực của toàn thể ban lãnh đạo cửa hàng cũng như toàn thể anh em nhân viên để rồi hiện nay nhà sách NVTaza đang là một cái tên được rất nhiều các nhà sách, công ty sách, thiết bị trường học, phát hành sách và tất cả các khách hàng thân mến biết đến . Với hơn 30 năm hoạt động với quy mô và doanh số không ngừng tăng lên rõ rệt qua từng năm. Hiện nay, công ty đã phát hành và phân phối hàng triệu đầu sách khác nhau của các nhà xuất bản uy tín với chất lượng đảm bảo và mức chiết khấu hợp lý .<br><br>

        Cùng với sự lớn mạnh của đất nước, ngành sách nói chung và Nhà sách NVTaza nói riêng luôn luôn phấn đấu và cố gắng có thể mang đến cho tất cả các quý khách hàng những đầu sách mới nhất, chất lượng đảm bảo nhất , những mẫu lịch đẹp nhất và trang trọng nhất. Và đó cũng là ưu điểm mạnh nhất mà công ty chúng tôi muốn đem đến cho quý khách hàng .<br><br>

        Đặc biệt, Nhà sách NVTaza luôn coi trọng việc chăm sóc quý khách hàng và phục vụ quý khách hàng lên hàng đầu và sẽ phục vụ Quý Khách Hàng một cách nhanh nhất, chính xác nhất với phương châm " Khách Hàng Là Người Bạn Thân Thiết " .<br><br>

        Một lần nữa, Nhà sách NVTaza Lợi xin chân thành cám ơn sự tin tưởng và hợp tác của Quý Khách hàng .<br><br>

        Kính chúc Quý khách hàng ngày càng phát triển, thịnh vượng, chúc sự hợp tác giữa Quý khách hàng và Nhà sách NVTaza ngày càng thêm bền chặt !<br><br>

        Trân trọng cảm ơn !

        </div>
		<!-- /main -->
		<!-- footer -->
		<jsp:include page="/WEB-INF/views/users/common/footer.jsp"></jsp:include>
		<!-- /footer -->
	</div>
	<!-- /wrapper -->
</body>
</html>
