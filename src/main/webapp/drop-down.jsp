<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>The confirmation</title>
</head>

<body>
    <div>
        The student confirmed: ${param.firstName} ${param.lastName}
        <br/>
        The student country confirmed: ${param.country}
        <br/>
        The pesun size is confirmed: ${param.length}
        <br/>
        <%
        	if(request.getParameter("isBorov").equals("Borov")){
        		out.println("Uraaaaa on nash bOrOV!");
        	} else{
        		out.println("nahruka ne bude");
        	}
        	
        %>	
        <br/>
        The student genders are confirmed:
        <ul>
	        <%
	        	String[] genders = request.getParameterValues("gender");
	        	
	        	for(String gander : genders){
	        		out.println("<li>" + gander + "</li>");
	        	}
	        %>
        </ul>
        
        	
    </div>
</body>
</html>
