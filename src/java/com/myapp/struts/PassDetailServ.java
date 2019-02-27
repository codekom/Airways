/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
/**
 *
 * @author Dell_Vostro
 */
public class PassDetailServ extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        Passenger p=(Passenger)form;
        SessionFactory sf=HibernateUtil.getSessionFactory();
        Session ss=sf.openSession();
        Transaction tx=null;
        try
        {
             tx=ss.beginTransaction();
            if(p.getName().equals(""))
               response.sendRedirect("pregister.jsp?msg=Name required");
            else if(p.getPassw().length()<8)
               response.sendRedirect("pregister.jsp?msg=Password should be atleast 8 characters");
            else if(p.getEmail().equals(""))
               response.sendRedirect("pregister.jsp?msg=email required");
            else if(p.getPhone().length()<10)
               response.sendRedirect("pregister.jsp?msg=enter a valid mobile no.");
            else if(p.getSq().equalsIgnoreCase("select"))
               response.sendRedirect("pregister.jsp?msg=Security question 1 required");
            else if(p.getAns().equals(""))
               response.sendRedirect("pregister.jsp?msg=answer required");
            else if(p.getSq2().equalsIgnoreCase("select"))
               response.sendRedirect("pregister.jsp?msg=Security question 2 required");
            else if(p.getAns2().equals(""))
               response.sendRedirect("pregister.jsp?msg=answer required");
            else
            {
                ss.save(p);
                response.sendRedirect("pregister.jsp?msg=Registration successfull!!");
            }
            tx.commit();
            ss.close();
        }
        catch(Exception e)
         {
                     response.sendRedirect("error.jsp?msg="+e.toString());
         }
        return mapping.findForward(SUCCESS);
    }
}
