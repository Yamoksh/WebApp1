<html>
<head>
<title>Devops by Yamoksh</title>
</head>
<body>
<form action="index.jsp" method="POST">
	
	<%
		String s1 = request.getParameter("n1");	
		String s2 = request.getParameter("n2");
		if(s1!=null&&s2!=null){
			
	%>		
	<input name="n1" type="text" value="<%= s1 %>">&nbsp; +&nbsp; 
	<input name="n2" type="text" value="<%= s2 %>">&nbsp;
	<input type="submit" value="Calculate Sum">	
	<% 
			try{
				int n1 = Integer.parseInt(s1);
				int n2 = Integer.parseInt(s2);
				int n3=n1+n2;
				out.println("<input name='result'  type='text' value='"+n3+"'>");
			}
			catch(NumberFormatException e){
				out.println("<input name='result'  type='text' value='Incorrect Data'>");
			}
			catch(Exception e){
				out.println("<input name='result'  type='text' value=''>");
			}
		}
		else{
	%>
	
	<input name="n1" type="text" placeholder="Number1">&nbsp; +&nbsp; 
	<input name="n2" type="text" placeholder="Number2">&nbsp;
	<input type="submit" value="Calculate Sum">	
	<% 		
			out.println("<input name='result'  type='text' value=''>");
		}
	%>
	
</form>

</body>
</html>
