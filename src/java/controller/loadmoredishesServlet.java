/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import dal.MenuItemsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.MenuItems;

/**
 *
 * @author Duy Thai
 */
@WebServlet(name="loadmoredishesServlet", urlPatterns={"/loadmoredishes"})
public class loadmoredishesServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loadmoredishesServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loadmoredishesServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String amount = request.getParameter("existed");
        int iamount = Integer.parseInt(amount);
        MenuItemsDAO menuItem = new MenuItemsDAO();
        List<MenuItems> listMenuItems = menuItem.getNext9MenuItems(iamount);
        PrintWriter out = response.getWriter();
        for (MenuItems mi : listMenuItems) {
            out.println("<div class=\"dishes col-lg-4 col-md-6 col-sm-12 pb-1\">\n" +
"                                <div class=\"card product-item border-0 mb-4\">\n" +
"                                    <div class=\"card-header product-img position-relative overflow-hidden bg-transparent border p-0\">\n" +
"                                        <img class=\"img-fluid w-100\" src=\"assets/menuItems_image/"+mi.getItem_image()+"\" alt=\"\">\n" +
"                                    </div>\n" +
"                                    <div class=\"card-body border-left border-right text-center p-0 pt-4 pb-3\">\n" +
"                                        <h6 class=\"text-truncate mb-3\">"+mi.getName()+"</h6>\n" +
"                                        <div class=\"d-flex justify-content-center\">\n" +
"                                            <h6>"+mi.getPrice()+"</h6>\n" +
"                                        </div>\n" +
"                                    </div>\n" +
"                                    <div class=\"card-footer d-flex justify-content-between bg-light border\">\n" +
"                                        <a href=\"view?menu_item_id="+mi.getMenu_item_id()+"\" class=\"btn btn-sm text-dark p-0\"><i class=\"fas fa-eye text-primary mr-1\"></i>View Detail</a>\n" +
"                                        <a href=\"\" class=\"btn btn-sm text-dark p-0\"><i class=\"fas fa-shopping-cart text-primary mr-1\"></i>Add To Cart</a>\n" +
"                                    </div>\n" +
"                                </div>\n" +
"                            </div>");
        }
        
        
         
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
