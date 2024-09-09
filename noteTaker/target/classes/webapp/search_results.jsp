<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.List" %> 
<%@page import="entity.Note"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search results</title>
<%@include file = "all_js_css.jsp" %>
</head>
<body>
   
   <div class = "container">
       
       <%@include file="navbar.jsp" %>
       
       <br>
       
       <h1>Search Results</h1>   
       <br>
       
       <%
         // retrive the search results from the request
         List<Note> searchResults =(List<Note>) request.getAttribute("searchResults");
       
       if(searchResults !=null && !searchResults.isEmpty()){
    	   %>
    	   
    	   <ul class = "list-group">
    	   
    	   <%
    	      // iterate through the search results
    	      for(Note note : searchResults){
    	    	  
    	   %> 
    	   
    	    <li class = "list-group-item">
    	    <h4><%= note.getTitle() %></h4>
    	    <p><%= note.getContent() %></p>
    	    </li>
    	    
    	    <% 
    	      }
    	    %>
    	   </ul>
    	   <% 
       }else{
    	   %>
    	   <p>NO notes found matchinf your search criteria.</p>
    	   
    	   <%  
           }
           %>
   </div>
   
</body>
</html>