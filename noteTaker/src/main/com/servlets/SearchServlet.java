package com.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.query.Query;

import entity.Note;
import hbUtils.FactoryProvider;

@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;//unique version identifier
    
    public SearchServlet() {
        super(); 
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// get the search query from the request
		String query = request.getParameter("query");
		List<Note> searchResults = null;
		
		// check if the query is not null or empty
		if(query !=null && !query.trim().isEmpty()) {
			try {
				Session s = FactoryProvider.getFactory().openSession();
				
				Query<Note> hQuery = s.createQuery("FROM Note WHERE title LIKE :title",Note.class);
				hQuery.setParameter("title", "%" + query + "%");
				
				// execute the query and get the results
				searchResults = hQuery.getResultList();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		// set the search requests in the request scope
		request.setAttribute("searchResults", searchResults);
		
		// forward the request to the search results jsp page
		request.getRequestDispatcher("search_results.jsp").forward(request, response);
	}


}
