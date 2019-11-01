<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="dto.*"%>

<% 
	Counter counter = (Counter) request.getAttribute("counter"); 
	if(counter==null) {
		counter = new Counter();
		request.setAttribute("counter",counter);
	}
	counter.add();
%>
<jsp:forward page = "forwarded.jsp"></jsp:forward>