<html>
<head>
<title>Hello World!</title>
</head>
<body color="blue">
	<h1>Hello World New Test!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>