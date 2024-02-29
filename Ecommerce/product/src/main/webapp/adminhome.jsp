<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
body {
	background-image:
		url(https://smallbiztrends.com/wp-content/uploads/2020/12/Ecommerce-Website.png);
	background-repeat: no-repeat;
	background-size: cover;
}
h1{
margin-left:30%;
margin-top:5%;
color:red;
}
h1:hover{
color:green;
}
img
{
padding:60px;
margin-left:5%;
}
.container{
margin-top:23%;
}
h3{
color:purple;
}
p{
color:orange;
}
</style>
</head>
<body>
	<div class="nav">
		<nav class="navbar navbar-expand-sm bg-light">
			<div class="container-fluid">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="addproduct.jsp">Add
							Product</a></li>
					<li class="nav-item"><a class="nav-link"
						href="deleteproduct.jsp">Delete Product</a></li>
					<li class="nav-item"><a class="nav-link"
						href="update.jsp">Update Product</a></li>
					<li class="nav-item"><a class="nav-link"
						href="userdetails.jsp">User Details</a></li>
					<li class="nav-item"><a class="nav-link"
						href="orderdetails.jsp">Order Details</a></li>
					<li class="nav-item"><a class="nav-link"
						href="productview.jsp">Product View</a></li>	
				</ul>
			</div>
		</nav>
	</div>
	
	<h1>WELCOME TO THE PRODUCT</h1>
	
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
   <div class="carousel-item active">
       <img src="a2.jpg" >
       <img src="a1.jpg" >
       <img src="a5.jpg" >
   </div>
   <div class="carousel-item">
       <img src="a6.jpg" >
       <img src="a7.jpg" >
       <img src="a8.jpg" >
    </div>
<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
</button>
<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
</button>

<div class="container">
  <div class="row">
     <div class="col-md-4">
       <div class="card ">
        <h3>ALL DRESSES</h3>
        <p>Dresses are outer garments made up of a bodice and a skirt and can be made in one or more pieces. </p>
       </div>
     </div>
    <div class="col-md-4">
      <div class="card ">
        <h3>FOOT WEAR</h3>
        <p>Footwear refers to garments worn on the feet, which typically serve the purpose mainly used this.</p>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card ">
        <h3>COSMETIC </h3>
        <p>The key ingredients present in most cosmetics  preservatives, thickeners,  colours and fragrances.</p>
      </div>
    </div>
  </div>
</div>
</body>
</html>