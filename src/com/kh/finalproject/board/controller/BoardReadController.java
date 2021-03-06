package com.kh.finalproject.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.finalproject.board.dao.BoardDAO;
import com.kh.finalproject.comment.dao.CommentDAO;
import com.kh.finalproject.vo.BoardVO;
import com.kh.finalproject.vo.CommentVO;

@WebServlet("/boardread")
public class BoardReadController extends HttpServlet{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String post_code = req.getParameter("post_code");
		
		
		BoardDAO DAO = new BoardDAO();
		BoardVO VO = new BoardVO();
		CommentDAO CDAO = new CommentDAO();
		RequestDispatcher dispatcher = null;
		ArrayList<CommentVO> commentlist = new ArrayList<>();
		VO = DAO.boardread(post_code);
		
		if(VO != null){
			commentlist = CDAO.commentlist(post_code);
			req.setAttribute("commentlist", commentlist);
			req.setAttribute("boardread", VO);
			dispatcher = req.getRequestDispatcher("/Post_View.jsp");
		} else {
			dispatcher = req.getRequestDispatcher("/Error.jsp");
		}
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
