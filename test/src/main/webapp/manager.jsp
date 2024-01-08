<%@ page import= "DAO.OrderDAO" %>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="model.Order"  %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Hotel</title>
        <link rel="stylesheet" href="./css/management.css">
        <link rel="stylesheet" href="./css/all.min.css">
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        
    </head>
<body>
        <div class="management-container">
            <div class="management-sidebar">
                <div style="cursor: pointer;" onclick="ToMenu()" class="management-sidebar-title">
                    <i class="house-icon fa-solid fa-house fa-2x"></i>
                    <span > Trang Quản Trị</span>
                </div>
                <div class="management-sidebar-content">
                    <div class="management-sidebar-list">
                        <ul>
                            <li class="post">
                                <i class="fa-brands fa-wpforms"></i>
                                <span>Bài Viết</span>
                            </li>

                            <li class="list-room">
                                <i class="fa-solid fa-bars"></i>
                                <span>Danh Sách Phòng</span>
                            </li>

                            <li class="list-book-room">
                                <i id="a1" class="fa-solid fa-cart-plus"></i>
                                <span>Các Phòng Đặt</span>
                            </li>

                            <li class="list-staff">
                                <i class="fa-solid fa-clipboard-user"></i>
                                <span>Nhân Viên</span>
                            </li>

                            <li class="account">
                                <i class="fa-solid fa-user-tie"></i>
                                <span>Tài Khoản</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="management-side">
                <div class="management-sidebar-header">
                    <div class="header-search">
                    </div>
                    <div class="header-search-icon" style="position: absolute; margin-left: 5%;">
                        <input type="text" placeholder="Tìm kiếm" style="border-radius: 17px; text-align: left;">
                        <i style="position: absolute; margin-left: -27px;color:cadetblue ; margin-top: 5.9px; cursor: pointer;" class="fa-solid fa-magnifying-glass"></i>
                        
                    </div>
                    <div class="notice">
                        <i class="fa-solid fa-bell"></i>
                        <i class="fa-regular fa-message"></i>
                    </div>
                    <div class="admin" id="adminInfoTrigger">
                        <div class="management-sidebar-avatar"></div>
                        <span id="a1">Admin</span>
                        <i class="fa-solid fa-caret-down"></i> 
                        <div class="admin-info">
                            <div class="admin-info-item" style="font-size: 20px; color:black ; ">
                                Vũ Trần Hoàng
                            </div>
                            <div class="admin-info-item" style="font-size: 20px; color:black ; ">
                                Hoangtop8
                            </div>
                            <div class="admin-info-item" style="font-size: 15px; color:black">
                                Hoang@gmail.com
                            </div>
                            <div class="admin-info-icons">
                                <i class="fa-brands fa-facebook"></i>
                                <i class="fa-brands fa-instagram"></i>
                                <i class="fa-solid fa-phone"></i>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

            <!--Trang menu-->
            <div class="management-content-container menu active">
                <img style="display: block; margin-left: auto; margin-right: auto;width: 100%;;" src="./image/a1.jpg" alt="">
            </div>

             <!--Tạo bài viết-->
             <div class="management-content-container post">
                <div class="post-header">Bài Viết</div>
                <div class="selection-post">
                    <button class="add-post" onclick="addNewPost()">
                        <i class="icon-add fa-solid fa-plus"></i>
                        <span>Thêm bài viết</span>
                    </button>
                    <button class="delete-post" onclick="deleteSelectedPosts()">
                        <i class="icon-delete fa-solid fa-trash "></i>
                        <span>Xóa bài viết</span>
                    </button>
                </div>
                <!-- Các bài viết -->
                <div class="post-content" >
                    <img  onclick="showPostDetail('/image/post1.jpg')" class="img-post" src="./image/post1.jpg" style="height: 200px; width: 35%; cursor: zoom-in;">
                    <div class="post-content-list">
                        <span class="post-content-list" style="width: 100%; text-align: center;">Ưu đãi cực SỐC với chương trình GIẢM 50% không giới hạn giá trị tối đa</span>
                        <div class="detail">
                            <u style="width: 100px; height: 30px; color: #0076ff; border: none; border-radius: 4px; font-size: 20px;">Chi Tiết</u>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>
                    </div>
                </div>
                
                <div class="post-content">
                    <img  onclick="showPostDetail('/image/post2.jpg')" class="img-post" src="./image/post2.jpg" style="height: 200px; width: 35%; cursor: zoom-in;">
                    <div class="post-content-list">
                        <span class="post-content-list" style="width: 100%; text-align: center;">Khuyến mãi 40% khi đặt phòng thông qua trang website của khách sạn</span>
                        <div class="detail">
                            <u style="width: 100px; height: 30px; color: #0076ff; border: none; border-radius: 4px; font-size: 20px;" onclick="hidePostDetail()">Chi Tiết</u>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>
                    </div>
                </div>

                <div class="post-content">
                    <img  onclick="showPostDetail('/image/post3.jpg' )" class="img-post" src="./image/post3.jpg" style="height: 200px; width: 35%; cursor: zoom-in;">
                    <div class="post-content-list">
                        <span class="post-content-list" style="width: 100%; text-align: center;">Đặt phòng khách sạn trên ứng dụng ngân hàng và ví VNPAY giảm tới 300.000 đồng</span>
                        <div class="detail">
                            <u style="width: 100px; height: 30px; color: #0076ff; border: none; border-radius: 4px; font-size: 20px;" onclick="hidePostDetail()">Chi Tiết</u>
                            <i class="fa-solid fa-arrow-right"></i>
                        </div>
                    </div>
                </div>
            </div>


            <!-- Hiển thị danh sách phòng -->
            <div class="management-content-container list-room">
                <div class="title">Danh sách các phòng</div>
                <div class="management-content">
                    <div class="add-room">
                        <button class="btn-add-room" onclick="handleAddRoom()">
                            <i class="fa-solid fa-plus"></i>
                        Tạo mới
                        </button>
                    </div>
                    <div class="rooms">
                        <table style="width: 100%">
                            <tr >
                                <th style="width: 5%">STT</th>
                                <th style="width: 15%">Tên phòng</th>
                                <th style="width: 20%">Hình ảnh</th>
                                <th style="width: 40%">Thông tin</th>
                                <th style="width: 10%">Trạng thái</th>
                                <th style="width: 10%">Hành động</th>
                            </tr>
                            <tr class="room" data-room-index="${index}">
                                <td>1</td>
                                <td>Phòng 101</td>
                                <td>
                                    <div class="room-image"style="background: url('./image/nền.jpeg') center /cover no-repeat;"></div>
                                </td>
                                <td style="text-align: left">
                                    <ul>
                                        <li>
                                        <b>Loại phòng: </b>
                                        Phòng hạng sang
                                        </li>
                                        <li>
                                        <b>Mô tả: </b>
                                        Phòng được bài trí theo phong cách hiện đại, có thể được
                                        đặt cho hai người cũng như cho một người.
                                        </li>
                                        <li>
                                        <b>Giá: </b>
                                        1.0000.000 VND
                                        </li>
                                    </ul>
                                </td>
                                <td>Đã đặt</td>
                                <td>
                                    <button class="btn-edit-room" onclick="handleEditRoom(${index})">
                                        <i class="fa-solid fa-pen"></i>
                                    </button>
                                    <button class="btn-delete-room" onclick="handleDeleteRoom(${index})">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
           
            <!-- Danh sách đơn đặt phòng -->
          <div class="staff-content-container list-book-room" >
      <div class="title">Danh sách đơn đặt phòng</div>
      <div class="search">
        <input
          type="text"
          id="search"
          name="search"
          placeholder="Nhập mã đặt phòng"
        />
        <button class="btn-search" onclick = >
          <i class="fa-solid fa-magnifying-glass"></i>
          Tìm kiếm
        </button>
      </div>
      <div class="staff-content">
        <div class="rooms">
          <table style="width: 100%">
            <tr>
              <th style="width: 5%">STT</th>
              <th style="width: 10%">Tên phòng</th>
              <th style="width: 25%">Tên khách hàng</th>
              <th style="width: 30%">Thông tin phòng</th>
              <th style="width: 10%">Mã đặt phòng</th>
              <th style="width: 10%">Trạng thái</th>
              <th style="width: 10%">Hành động</th>
            </tr>  
           <%
           		int stt=1;
           		ArrayList<Order> list = new OrderDAO().selectAll();
           		if(list != null){
	           		for(Order od : list){
	           			out.print("<tr class=\"book-room\">");
	           			
	           			out.print("<td>"+stt+"</td>");stt++;
	           			out.print("<td>"+od.getRoomID()+"</td>");
	           			
		           			out.print("<td style=\"text-align: left\">");
		           			out.print("<ul>");
		           			out.print("<li><span>Tên:</span>"+od.getCustomerName()+"</li>");
		           			out.print("<li><span>CCCD:</span>"+od.getCustomerCitizenID()+"</li>");
		           			out.print("<li><span>Phone:</span>"+od.getCustomerPhoneNumber()+"</li>");
		           			out.print("</ul>");
			            	out.print("</td>");
			            	
			            	out.print("<td style=\"text-align: left\">");
		           			out.print("<ul>");
		           			out.print("<li><span>Ngày nhận phòng:</span>"+od.getTimeStart()+"</li>");
		           			out.print("<li><span>Ngày trả phòng:</span>"+od.getTimeEnd()+"</li>");
		           			out.print("<li><span>Tổng tiền:</span>"+od.getOrderPrice()+"</li>");
		           			out.print("</ul>");
			            	out.print("</td>");
			            	
			            	out.print("<td>"+od.getOrderID()+"</td>");
			            	out.print("<td>"+od.getOrderStatus()+"</td>");
			            	
			            	out.print("<td>");
			                out.print("<button class=\"btn-edit-room\" onclick=\"handleEditBookRoom()\"> " );
			                out.print("<i class=\"fa-solid fa-pen\"></i>");
			              	out.print("</button>");
			              	out.print("<button class=\"btn-delete-room\" >" );
			                out.print("<i class=\"fa-solid fa-trash\" ></i>");
			              	out.print("</button>");
			            	out.print("</td>");
	           			out.print("</tr>");
           			}
           		}
           		
           %>
            
            
             
          </table>
        </div>
        
      </div>
    </div>

            
            <!-- Thêm Phòng Mới -->
            <div class="add-room-container">
                <div class="add-room-modal">
                <form action="AddRoom" method="POST">
                    <i class="fa-solid fa-xmark icon-close"></i>
                    <div class="title">Tạo phòng mới</div>
                    <div class="content">
                    <div class="room-name">
                        <label for="room-name">Tên phòng</label>
                        <input type="text" id="room-name" name="room-name" />
                    </div>
                  
                    <div class="room-image">
                        <label for="room-image">Id</label>
                        <input type="text" id="room-image" name="room-image" />
                    </div>
                    <div class="room-type">
                        <label for="room-type">Loại phòng</label>
                        <input type="text" id="room-type" name="room-type" />
                    </div>
                    <div class="room-description">
                        <label for="room-description">Mô tả</label>
                        <textarea name="room-description" id="room-description">
                        </textarea>
                    </div>
                    <div class="room-price">
                        <label for="room-price">Giá</label>
                        <input type="text" name="room-price" id="room-price" />
                    </div>
                    <div class="btn-submit btn btn-primary" onclick="AddRoom()">Tạo mới</div>
                    </div>
                </form>
                </div>
            </div>

            <!-- Chỉnh sửa thông tin phòng -->
            <div class="edit-room-container">
                <div class="edit-room-modal">
                    <form action="" method="POST">
                        <i class="fa-solid fa-xmark icon-close"></i>
                        <div class="title">Chỉnh Sửa</div>
                        <div class="content">
                        <div class="edit-room-name">
                            <label for="edit-room-name">Tên phòng</label>
                            <input type="text" id="edit-room-name" name="edit-room-name" />
                        </div>
                        <div class="edit-room-image">
                            <label for="edit-room-image">Link hình ảnh</label>
                            <input type="text" id="edit-room-image" name="edit-room-image" />
                        </div>
                        <div class="edit-room-type">
                            <label for="edit-room-type">Loại phòng</label>
                            <input type="text" id="edit-room-type" name="edit-room-type" />
                        </div>
                        <div class="edit-room-description">
                            <label for="edit-room-description">Mô tả</label>
                            <textarea name="edit-room-description" id="edit-room-description">
                            </textarea>
                        </div>
                        <div class="edit-room-price">
                            <label for="edit-room-price">Giá</label>
                            <input type="text" name="edit-room-price" id="edit-room-price" />
                        </div>
                        <div class="btn-submit btn btn-primary" >Cập Nhập</div>
                        </div>
                    </form>
                </div>
            </div>


            <!--thêm nhân viên-->
            <div class="add-staff-container">
                <div class="add-staff-modal">
                <form action="" method="post">
                    <i class="fa-solid fa-xmark icon-close"></i>
                    <div class="title">Thêm Nhân Viên</div>
                    <div class="content">
                    <div class="staff-name">
                        <label for="staff-name">Họ Tên</label>
                        <input type="text" id="staff-name" name="staff-name" />
                    </div>
                    <div class="staff-gender">
                        <label for="staff-gender">Giới Tính</label>
                        <select id="staff-gender" name="staff-gender">
                            <option selected>Nam</option>
                            <option >Nữ</option>
                            <option>Khác</option>
                        </select>
                    </div>
                    <div class="staff-date">
                        <label for="staff-date">Ngày Sinh</label>
                        <input type="date" id="staff-date" name="staff-date" />
                    </div>
                    <div class="staff-position">
                        <label for="staff-address">Địa Chỉ</label>
                        <input type="text" id="staff-address" name="staff-address"> 
                    </div>
                    <div class="staff-phone">
                        <label for="staff-phone">Số Điện Thoại</label>
                        <input type="number" name="staff-phone" id="staff-phone">
                    </div>
                    <div class="staff-email">
                        <label for="staff-email">Email</label>
                        <input type="text" id="staff-email" name="staff-email">
                    </div>
                    <input type="button" onclick="inputStaff()" value="Tạo mới" class="btn-submit btn btn-primary">
                    </div>
                </form>
                </div>
            </div>

            <!-- Chỉnh sửa thông tin nhân viên -->
            <div class="edit-staff-container">
                <div class="edit-staff-modal">
                <form action="" method="POST">
                    <i class="fa-solid fa-xmark icon-close"></i>
                    <div class="title">Chỉnh sửa thông tin</div>
                    <div class="content">
                    <div class="edit-staff-name">
                        <label for="edit-staff-name">Họ Tên</label>
                        <input type="text" id="edit-staff-name" name="edit-staff-name" />
                    </div>
        
                    <div class="edit-staff-gender">
                        <label for="edit-staff-gender">Giới Tính</label>
                        <input type="text" id="edit-staff-gender" name="edit-staff-gender" />
                    </div>
                    <div class="edit-staff-date">
                        <label for="edit-staff-date">Ngày Sinh</label>
                        <textarea name="edit-staff-date" id="edit-staff-date">
                        </textarea>
                    </div>
                    <div class="edit-staff-position">
                        <label for="edit-staff-position">Chức Vụ</label>
                        <input type="text" name="edit-staff-position" id="edit-staff-position" />
                    </div>
                    <div class="btn-submit btn btn-primary">Cập nhật</div>
                    </div>
                </form>
                </div>
            </div>

            <!--Nhân viên-->
            <div class="management-content-container list-staff ">
            <div class="title">Danh sách nhân viên</div>
            <div class="management-content">
                <div class="add-staff">
                    <button class="btn-add-staff" onclick="handleAddStaff()">
                        <i class="fa-solid fa-plus"></i>
                    	Tạo mới
                    </button>


                </div>
                <div class="staff">
                    <table id="aa" style="width: 100%">
                        <tr>
                            <th style="width: 5%">STT</th>
                            <th style="width: 15%">Họ Tên</th>
                            <th style="width: 10%">Giới Tính</th>
                            <th style="width: 10%">Ngày Sinh</th>
                            <th style="width: 20%">Địa Chỉ</th>
                            <th style="width: 15%">Số Điện Thoại</th>
                            <th style="width: 15%">Email</th>
                            <th style="width: 10%">Active</th>
                        </tr>
                    </table>
                    
                </div>
            </div>   
            </div>

            <!--Account-->
            <div class="management-content-container account ">
                <div class="profile-header">
                    <span class="title">Profile</span>
                </div>
                <div class="container light-style flex-grow-1 container-p-y">
                <div class="management-profile">
                    <div class="card overflow-hidden">
                        <div class="row no-gutters row-bordered row-border-light">
                            <div class="col-md-3 pt-0">
                                <div class="list-group list-group-flush account-settings-links">
                                    <a class="list-group-item list-group-item-action active" data-toggle="list"
                                        href="#account-general">General</a>
                                    <a class="list-group-item list-group-item-action" data-toggle="list"
                                        href="#account-change-password">Change password</a>
                                    <a class="list-group-item list-group-item-action" data-toggle="list"
                                        href="#account-info">Info</a>
                                    <a  class="list-group-item list-group-item-action" 
                                        href="index.jsp">sign out</a>
                                </div>
                            </div>
                            
                            <div class="col-md-9">
                                <div class="tab-content">
                                    <div class="tab-pane fade active show" id="account-general">
                                        <div class="card-body media align-items-center">
                                            <img src="./image/avatar.jpg"  
                                                class="d-block ui-w-80">
                                            <div class="media-body ml-4">
                                                <label class="btn btn-outline-primary">
                                                    Upload new photo
                                                    <input type="file" class="account-settings-fileinput">
                                                </label> &nbsp;
                                                <button type="button" class="btn btn-default md-btn-flat"  onclick="signOut()">Reset</button>
                                            </div>
                                        </div>
                                        <hr class="border-light m-0">
                                        <div class="card-body">
                                            <div class="form-group">
                                                <label class="form-label">Username</label>
                                                <input type="text" class="form-control mb-1" value="hoangtop8">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Name</label>
                                                <input type="text" class="form-control" value="Vu Tran Hoang">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">E-mail</label>
                                                <input type="text" class="form-control mb-1" value="hoangl@mail.com">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="account-change-password">
                                        <div class="card-body pb-2">
                                            <div class="form-group">
                                                <label class="form-label">Mật khẩu hiện tại</label>
                                                <input type="password" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Mật khẩu mới</label>
                                                <input type="password" class="form-control">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Nhập lại mật khẩu</label>
                                                <input type="password" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="account-info">
                                        <div class="card-body pb-2">
                                            <div class="form-group">
                                                <label class="form-label">Birthday</label>
                                                <input type="text" class="form-control" value="25-1-2003">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Giới Tính</label>
                                                <select class="custom-select">
                                                    <option selected>Nam</option>
                                                    <option >Nữ</option>
                                                    <option>Khác</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Nơi ở</label>
                                                <select class="custom-select">
                                                    <option>USA</option>
                                                    <option selected>VietNam</option>
                                                    <option>China</option>
                                                    <option>Germany</option>
                                                    <option>France</option>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Điện thoại</label>
                                                <input type="text" class="form-control" value="+0 (123) 456 7891">
                                            </div>
                                            <div class="form-group">
                                                <label class="form-label">Website</label>
                                                <input type="text" class="form-control" >
                                            </div>
                                        </div>
                                    </div>
                                    <div class="text-right mt-3">
                                        <button style="margin: 10px; size: 50px;" type="button" class="btn btn-primary">Save</button>
                                        <button style="margin: 10px; size: 50px;" type="button" class="btn btn-default">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="./js/management.js"></script>
    <script data-cfasync="false" src="../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript"></script>
</html>