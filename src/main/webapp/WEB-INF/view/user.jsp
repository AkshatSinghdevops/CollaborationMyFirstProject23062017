<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>AngularJS $http Example</title>  
   
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>

<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
  
  
   <style>
         .Search {
     position: absolute;
     top: 355px;
     left: 575px;
}
.Search input {
     height: 50px;
     width: 180pt;
}
        </style>
  </head>
 
 
  <body ng-app="myApp" class="ng-cloak" >
  
  
  
   <nav class="navbar navbar-default navbar-fixed-top" > <!-- style="background:#00ffff; solid; padding:20px;" -->
  <div class="container-fluid">
    <div class="navbar-header">
  
      <a class="navbar-brand " href="#"><marquee>Collaboration</marquee></a>
    </div>
   <ul class="nav navbar-nav">
  
   
   
   <button class="btn btn-danger" ><span class="glyphicon glyphicon-home"></span><a href="Home">Home</a> </button>
   
  
      <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Blogs<span class="caret"></span></a>
    <ul class="dropdown-menu">
       <li><a href="blog">Create-Blogs</a></li>
      <li><a href="showblog">Our-Blogs</a></li>
    </ul></li>
     </button>
     
     <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
  <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Friends<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="ViewFriend">Friend-LISTS</a></li>
       <li ><a href="ViewRequest">View-Request</a></li>
    <li ><a href="MyFriendList">MyFriend-List</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Jobs<span class="caret"></span></a>
    <ul class="dropdown-menu">
     <li><a href="joblist">Search</a></li>
      <li><a href="job">Post-Jobs</a></li>
    </ul></li>
    </button>
    
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown">Chat Forums<span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="chatforum">Create Chat Forum</a></li>
      <li><a href="viewchatforums">View Existing Forums</a></li>
    </ul></li>
    </button>
    
    
     <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="blog">CREATE-BLOG</a></li>
    </button> -->
   
     
     <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs">Update Profile</a></li>
    </button>
    
    <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showblog">BLOG-LISTS</a></li>
    </button> -->
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showforum">FORUM-LISTS</a></li>
    </button>
    
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showchat">CHAT-LISTS</a></li>
    </button>
    
    
   
   <!-- <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewFriend">Friend-LISTS</a></li>
   </button>
   
    <button type="button" class="btn btn-default dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="ViewRequest">Requests</a></li>
   </button> -->
   
   
   <!--  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="AboutUs"><span class="glyphicon glyphicon-envelope"></span>AboutUsChating</a></li>
   </button> -->
   
   <!-- <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="job"><span class="glyphicon glyphicon-briefcase"></span>POST-NEW-JOB</a></li>
   </button>

  <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="joblist"><span class="glyphicon glyphicon-list"></span>MY-JOB-LIST</a></li>
   </button> -->
    
    
    <button type="button" class="btn btn-outline-primary dropdown-toggle"  style="margin:8px">
    <li class="active"><a href="showprofile"><span class="glyphicon glyphicon-user"></span>MY-PROFILE</a></li>
   </button>
    
      <!-- ======================================================== -->
         <%
   String user=(String)session.getAttribute("loggedInUserID"); 
   if(user==null)
   {   
	  
	   
	   out.println("<button type='button' class='btn btn-outline-primary dropdown-toggle' style='margin:8px'><li class='active'><a href='login'><span class='glyphicon glyphicon-log-in'>Sing-In</span></a></li></button>"); 

	   out.println("<button type='button' class='btn btn-outline-primary dropdown-toggle' style='margin:8px'><li class='active'><a href='user'><span class='glyphicon glyphicon-user'>Sing-Up</span></a></li></button");
   
     
   }
   else
   {
	   out.println("<button class='btn btn-outline-danger'><li class='active'><a href='logout'><span class='glyphicon glyphicon-off'></span>Logout</a></li></button>");
	  /*  out.println("<li> Welcome : " + user + "</li>"); */
   }
   
   %>
    
    <!-- ========================================================= -->
    
    

  <div class="text-center">
   <% 
   String user1=(String)session.getAttribute("loggedInUserID");
   
   if(user1==null){}
   else{
	   out.println("<li> Welcome : "+ user1 +"</li>");
   }
   %>
   
   </div>

 


</ul></div></nav>

   
  
  <br><br><br>
 
   <br><br><br>
  
 </div>
 
  
  
  
</div>
</div>
</div>
</nav>
<!-- =========== -->
</div>
</div>
 <br><br><br>




<!-- =====================================List of profile ==================================== -->


  
      <div class="generic-container text-center" ng-controller="UserController as ctrl">
          <div class="panel panel-theme">
              <div class="panel-heading"><span class="lead">User Registration Form </span></div>
              <div class="formcontainer">
                  
                  <form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
                     
                      <input type="hidden" ng-model="ctrl.user.id" />
                      
                     
                      
                      <div class="row">
                          <div class="form-group col-md-12 has-error">
                              <label class="col-md-2 control-lable text-danger" for="name">Name</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.name" id="name" class="name form-control input-sm" placeholder="Enter your name" required ng-minlength="3" autofocus/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 3</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                         
                       
                       <div class="row">
                          <div class="form-group col-md-12 has-success">
                              <label class="col-md-2 control-lable text-success" for="password">Password</label>
                              <div class="col-md-7">
                                  <input type="password" ng-model="ctrl.user.password" id="password" class="form-control input-sm" placeholder="Enter your password. [This field is validation free]" required/>
                              </div>
                          </div>
                      </div>
 
                       
                      <div class="row">
                          <div class="form-group col-md-12 has-warning">
                              <label class="col-md-2 control-lable text-default" for="address">Address</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.address" id="address" class="form-control input-sm" placeholder="Enter your Address. [This field is validation free]" required/>
                              </div>
                          </div>
                      </div>
 
                      <div class="row">
                          <div class="form-group col-md-12 has-error">
                              <label class="col-md-2 control-lable text-info" for="email">Email</label>
                              <div class="col-md-7">
                                  <input type="email" ng-model="ctrl.user.email" id="email" class="email form-control input-sm" placeholder="Enter your Email" required/>
                                  <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.email.$error.required">This is a required field</span>
                                      <span ng-show="myForm.email.$invalid">This field is invalid </span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      
<!-- ======================================================================================= -->
                      
                       <div class="row">
                          <div class="form-group col-md-12 has-warning">
                              <label class="col-md-2 control-lable text-warning" for="gender">Gender</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.gender" id="gender" class="form-control input-sm"  placeholder="Enter your gender" required/>
                                    <input type="radio" ng-model="ctrl.user.gender" value="male">male
                                    <input type="radio" ng-model="ctrl.user.gender" value="female">female
                                    <input type="radio" ng-model="ctrl.user.gender" value="other">other
                              </div>
                          </div>
                      </div>
                      
                      
                      
                      
                       <div class="row">
                          <div class="form-group col-md-12 has-warning">
                              <label class="col-md-2 control-lable text-default" for="dob">DateOfBirth</label>
                              <div class="col-md-7">
                                  <input type="date" ng-model="ctrl.user.dob" id="dob" class="form-control input-sm" placeholder="Enter your dateofbirth" required/>
                              </div>
                          </div>
                      </div>
                      
                      
<!-- ================================================================================================ -->
                        <div class="row">
                          <div class="form-group col-md-12 has-error">
                              <label class="col-md-2 control-lable text-primary" for="mobile">Mobile</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="ctrl.user.mobile" id="mobile" class="form-control input-sm" placeholder="Enter your mobile number." pattern = "[0-9]{10}" required/>
                              </div>
                          </div>
                      </div>
 
 
                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-info btn-sm" ng-disabled="myForm.$invalid">
                           
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-info btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div></div>
         
         

         
         
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
   <script src="<c:url value='/static/app.js' />"></script>
   <script src="<c:url value='/static/user_controller.js' />"></script>
   <script src="<c:url value='/static/user_service.js' />"></script>




</body>
</html>