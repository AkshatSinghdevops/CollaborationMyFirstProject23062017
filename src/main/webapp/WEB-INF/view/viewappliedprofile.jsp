<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script>
function getParameter(theParameter) { 
	  var params = window.location.search.substr(1).split('&');
	 
	  for (var i = 0; i < params.length; i++) {
	    var p=params[i].split('=');
		if (p[0] == theParameter) {
			
		  return decodeURIComponent(p[1]);
		}
	  }
	  return false;
	}
	
	var app = angular.module('myApp', []);
app.controller('ctrl', function($scope, $http) {
  $http.get("getJobdetails/"+getParameter('id'))
  .then(function(response) {
      $scope.user = response.data;
  });
});
</script>


 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


</head>
<body>




<div ng-app="myApp" ng-controller="ctrl"> 
<br>
Search Your Friend: <input type='text' ng-model='searchtext'/><br><br>
<br><br><br>

<table class="table">
		<tr class="danger">
			<th width="80">UserID</th>
			<th width="80">Name</th>
			
				<th width="80">Email</th>
					<th width="80">Address</th>
						<th width="80">MobileNo.</th>
						<th width="80">Interview</th>
						<th width="80">Reject</th>
						<th width="80">Select</th>
					</tr>
			
 <tr ng-repeat="b in user | filter:searchtext" class="warning">
 
 <td >{{ b.id }} </td>
 <td>{{ b.userID }}</td>
  <td >{{ b.email }} </td>
   <td >{{ b.address }} </td>
    <td >{{ b.mobile }} </td>
    <script>
    function seturl(){
    var param=getParameter('id');
    var a=document.getElementById('applied');
    a.href=a.href+"/"+param+"/interview";
    }
    function setrejecturl(){
        var param=getParameter('id');
        var a=document.getElementById('applied1');
        a.href=a.href+"/"+param+"/rejected";
        }
    function setselecturl(){
        var param=getParameter('id');
        var a=document.getElementById('applied2');
        a.href=a.href+"/"+param+"/selected";
        }
    </script>
   <td><a id="applied" href="callForInterview/{{ b.id }}" onclick='seturl()'>Call For Interview</a>
 <td><a id="applied1" href="rejectJobApplication/{{ b.id }}" onclick='setrejecturl()'>Reject</a></td>
  <td><a id="applied2" href="selectUser/{{ b.id }}" onclick='setselecturl()'>Selected</a></td>
  </tr>
 </table>
</div>





</body>
</html>