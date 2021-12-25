    <%-- 
    Document   : index
    Created on : 30 Aug 2021, 14:18:38
    Author     : ntpth
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script src="<c:url value="/javascript/jsTour.js"/>"></script>



<div id="demo" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>

  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="resources/images/car1.jpg" alt="Phu-yen" width="100%" height="330px">
        <div class="carousel-caption  ">
            <h3>Du lịch cùng VN GO Travel</h3>
            <p>ĐA DẠNG - CHẤT LƯỢNG</p>
          </div>
    </div>
    <div class="carousel-item ">
        <img src="resources/images/car2.jpg" alt="Vinh-ha-long" width="100%" height="330px">
        <div class="carousel-caption  ">
            <h3>Du lịch cùng VN GO Travel</h3>
            <p>NHIỀU SỰ LỰA CHỌN</p>
        </div>
    </div>
    <div class="carousel-item">
        <img src="resources/images/car3.jpg" alt="Phu-quoc" width="100%" height="330px">
        <div class="carousel-caption  ">
            <h3>Du lịch cùng VN GO Travel</h3>
            <p>ƯU ĐÃI BẤT NGỜ</p>
        </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<br>
<form action="">
    <div class="row">
        <div class="col-md-10">
            <input class="form-control" type="text" name="kw" placeholder="Nhập từ khóa..."/>
        </div>
        <div class="col-md-1">
            <input type="submit" value="Tìm kiếm" class="btn btn-danger"/>
        </div>
    </div>
</form>
<div class="row" style="padding-top: 30px">
    <div class="col-md-9">
        <span class="alert" style="background-color: red;color: white">
          <img style="width:30px"class="img-fluid"src="<c:url value="/images/fire.png"/>"/><strong>Tour Nổi bật</strong>
        </span>
       <div id="demo1" class="carousel slide alert alert-info" data-ride="carousel" >
  <!-- The slideshow -->
 
  <div class="carousel-inner">
    <div class="carousel-item active">
     <div class="row">
        <c:forEach var="p" items="${hotTours1}">
            <div class="col-md-4 col-xs-12" style="padding: 10px">
                <div class="card">
                <a href="<c:url value="/tour/${p[0]}"/>" style="height: 155px">
                    <c:choose>
                        <c:when test="${p[3] != null && p[3].startsWith('https') == true}">
                            <img class="card-img-top img-fluid" src="<c:url value="${p[3]}"/>" alt="${p[1]}"/>
                        </c:when>
                        <c:when test="${p[3] != null && p[3].startsWith('https') == true}">
                            <img class="card-img-top img-fluid" src="<c:url value="/images/vinh-ha-long.jpg"/>" alt="${p[1]}"/>
                        </c:when>
                    </c:choose>
                </a>
                <div class="card-body">
                    <h4 class="card-title">${p[1]}</h4>
                    <hr>
                    <p class="card-text">Ngày khởi hành: ${p[6]}</p>
                    <p class="card-text">Ngày kết thúc: ${p[7]}</p>
                    <a href="<c:url value="/tour/${p[0]}"/>"><h3 class="btn btn-warning btn-lg text-white">Giá từ ${p[5]}</h3></a>
                </div>
                </div>
            </div>
        </c:forEach>
      </div>
    </div>
    <div class="carousel-item">
      <div class="row">
        <c:forEach var="p" items="${hotTours2}">
            <div class="col-md-4 col-xs-12" style="padding: 10px">
                <div class="card">
                <a href="<c:url value="/tour/${p[0]}"/>" style="height: 155px">
                    <c:choose>
                        <c:when test="${p[3] != null && p[3].startsWith('https') == true}">
                            <img class="card-img-top img-fluid" src="<c:url value="${p[3]}"/>" alt="${p[1]}"/>
                        </c:when>
                        <c:when test="${p[3] != null && p[3].startsWith('https') == true}">
                            <img class="card-img-top img-fluid" src="<c:url value="/images/vinh-ha-long.jpg"/>" alt="${p[1]}"/>
                        </c:when>
                    </c:choose>
                </a>
                <div class="card-body">
                    <h4 class="card-title">${p[1]}</h4>
                    <hr>
                    <p class="card-text">Ngày khởi hành: ${p[6]}</p>
                    <p class="card-text">Ngày kết thúc: ${p[7]}</p>
                    <a href="<c:url value="/tour/${p[0]}"/>"><h3 class="btn btn-warning btn-lg text-white">Giá từ ${p[5]}</h3></a>
                </div>
                </div>
                
            </div> 
        </c:forEach>
          <div class="col-md-4 col-xs-12" style="padding: 10px; margin-top: 70px">
               <a href="<c:url value="/hottour/"/>" style="height: 155px">
                     <img class="img-fluid" style="width: 200px" src="<c:url value="/images/all.png  "/>"alt="Hình all"/>
               </a>
          </div>
      </div>
    </div>
  </div>
  
  <!-- Left and right controls -->
<a class="carousel-control-prev" href="#demo1" data-slide="prev">
      <img name="Hinh" src="/QuanLyTourDuLich/images/previous.png"
           onmouseover="document.Hinh.src='/QuanLyTourDuLich/images/previous2.png'"
           onmouseout="document.Hinh.src='/QuanLyTourDuLich/images/previous.png'">
  </a>
  <a class="carousel-control-next" href="#demo1" data-slide="next">
    <img name="Hinh2" src="/QuanLyTourDuLich/images/next.png"
         onmouseover="document.Hinh2.src='/QuanLyTourDuLich/images/next2.png'"
         onmouseout="document.Hinh2.src='/QuanLyTourDuLich/images/next.png'"/>
  </a>
</div>

    </div>
    <div class="col-md-3">
        <span class="badge text-dark"  style="background-color:#DA70D6; width: 100%; ">
            <h3 style="text-align: center;"><spring:message code="label.news" /></h3>
        </span>
        <c:forEach var="n" items="${latestNews}">
            <h4><a href="<c:url value="/news/${n[0]}" />">${n[1]}</a></h4>
            <h7 style="color: #87CEFA;"><i>(Ngày: ${n[2]})</i></h7>
        </c:forEach>
    </div>
</div>

<!--page-->
<div>
    <ul class="pagination">
        <c:forEach var="i" begin="1" end="${Math.ceil(counter / 20)}" >
            <li class="page-item"><a class="page-link" href="<c:url value="/" />?page=${i}">${i}</a></li>
        </c:forEach>
    </ul>
</div>
<!--Nội dung Tour-->
<c:forEach var="tour" items="${tours}">
        <div class="row p-2 mb-2 bg-light bg-gradient" >
                <div class="col-md-5" >
                    <a href="<c:url value="/tour/${tour.id}"></c:url>">
                        <c:if test="${tour.image != null && tour.image.startsWith('https') == true}">
                            <img style="cursor: pointer; width: 285px; height: 177px" class="img-fluid img1" src="<c:url value="${tour.image}"/>" alt="${tour.name}" />
                        </c:if>
                        <c:if test="${tour.image == null || tour.image.startsWith('https') == false}">
                            <img style="cursor: pointer; width: 285px; height: 177px" class="img-fluid img1" src="<c:url value="/images/vinh-ha-long.jpg"/>" alt="${tour.name}" />
                        </c:if>
                    </a>        
                    
                </div>
                <div class="col-md-5">
                    <h1><a href="<c:url value="/tour/${tour.id}"></c:url>">${tour.name}</a> </h1>
                    <p>${tour.trip}</p>           
                </div>
                <div class="col-md-2">
                    <a href="<c:url value="/tour/${tour.id}"/>"<button class="btn btn-warning btn-lg text-white">Giá từ ${tour.childPrice}</button></a>
                    <br/><br/>
                    <span>${tour.startDay}</span>
                    <br/><br/>
                    <span>${tour.endDay}</span>
                </div>
        </div>
</c:forEach>

<hr>
<c:forEach var="p" items="${hotTours}">
        <div class="row p-2 mb-2 bg-light bg-gradient" >
                <div class="col-md-5" >
                    <a href="<c:url value="/tour/${p[0]}"></c:url>">
                        <c:if test="${p[3] != null && p[3].startsWith('https') == true}">
                            <img style="cursor: pointer; width: 285px; height: 177px" class="img-fluid img1" src="<c:url value="${p[3]}"/>" alt="${tour.name}" />
                        </c:if>
                        <c:if test="${p[3] == null || p[3].startsWith('https') == false}">
                            <img style="cursor: pointer; width: 285px; height: 177px" class="img-fluid img1" src="<c:url value="/images/vinh-ha-long.jpg"/>" alt="${tour.name}" />
                        </c:if>
                    </a>        
                    
                </div>
                <div class="col-md-5">
                    <h1><a href="<c:url value="/tour/${p[0]}"></c:url>">${p[1]}</a> </h1>
                    <p>${p[2]}</p>           
                </div>
                <div class="col-md-2">
                    <a href="<c:url value="/tour/${p[0]}"/>"<button onclick="" class="btn btn-warning btn-lg text-white">Giá từ ${p[5]}</button></a>
                    <br/><br/>
                    <span>${p[6]}</span>
                    <br/><br/>
                    <span>${p[7]}</span>
                </div>
        </div>
</c:forEach>
<!--page-->
<ul class="pagination">
        <c:forEach  var="i" begin="1" end="${Math.ceil(counter / 20)}">
            <li class="page-item"><a class="page-link" href="<c:url value="/" />?page=${i}">${i}</a></li>
        </c:forEach>
</ul>