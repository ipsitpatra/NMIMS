/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pbs;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Ipsit
 */
public class new_patient extends HttpServlet {
   
    /**
	 * 
	 */
	private static final long serialVersionUID = 8565817069001715146L;

	/** 
    * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
    * @param request servlet request
    * @param response servlet response
    */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            patient p=new patient();
            String room = request.getParameter("room");
            String name = request.getParameter("name");
            String age = request.getParameter("age");
            String address = request.getParameter("address");
            String blood = request.getParameter("blood");
            String phone = request.getParameter("phone");
            String email = request.getParameter("email");
            String sex = request.getParameter("sex");
            String doctor = request.getParameter("doctor");
            String admit = request.getParameter("admit");
            if (p.newpatient(name,age,sex,blood,address,phone,email,doctor,room,admit))
                {
                response.sendRedirect("patient_detail.jsp");
            } else {
                response.sendRedirect("patient_detail.jsp?error");
            }
        } finally { 
            out.close();
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
    * Handles the HTTP <code>GET</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 

    /** 
    * Handles the HTTP <code>POST</code> method.
    * @param request servlet request
    * @param response servlet response
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
    * Returns a short description of the servlet.
    */
    public String getServletInfo() {
        return "Short description";
    }
    // </editor-fold>
}
