/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
/**
 *
 * @author Dell_Vostro
 */
public class PloginServ extends org.apache.struts.action.Action {
    
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
        try{
            tx=ss.beginTransaction();
            HttpSession session = request.getSession();
            
            if(p.getName().equals(""))
               response.sendRedirect("home.jsp?msg=Name required");
            else if(p.getPassw().equals(""))
               response.sendRedirect("home.jsp?msg=Password required");
            else
            {
                 Passenger pp=null;
                 pp=(Passenger)ss.get(Passenger.class,p.getName());
                 if(pp!=null)
                 {
                   if(!pp.getPassw().equals(p.getPassw()))
                   {
                     response.sendRedirect("home.jsp?msg=Invalid User or Password");
                   }
                   else
                   {
                       session.setAttribute("plg", "yes");
                       session.setAttribute("logger",p);
                   }
                 }
                 else
                    response.sendRedirect("home.jsp?msg=Invalid User or Password");
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
