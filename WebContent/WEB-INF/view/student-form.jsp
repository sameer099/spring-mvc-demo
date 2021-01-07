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

<input type="Submit" value="submit" />

<!--when form is submitted spring mvc will student.setFirstName() and student.setLastname()-->


</form:form>



 </body>
 
 
 </html>