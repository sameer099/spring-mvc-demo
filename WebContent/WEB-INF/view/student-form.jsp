<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<title>Student registration form</title>

</head>


<body>

<form:form action="processForm" modelAttribute="student">


<!--when form is loaded spring mvc will student.getFirstName() and student.getLastname()-->

First name:<form:input path="firstName"/>

<br><br>

Last name:<form:input path="lastName"/>

<br><br>
Country: 
<form:select path="country">

<!-- 
	<form:option value="Brazil" label="Brazil" />
	<form:option value="France" label="France" />
	<form:option value="Germany" label="Germany" />
	<form:option value="India" label="India" />
	-->	
	
	<!-- spring will call student.getCountryOptions() -->
	
	< form:options items="${student.countryOptions}" />
	


</form:select>

<input type="Submit" value="submit" />

<!--when form is submitted spring mvc will student.setFirstName() and student.setLastname()-->


</form:form>



 </body>
 
 
 </html>