/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import java.util.List;
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
public class ListBticket extends org.apache.struts.action.Action {
    
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
          SessionFactory sf=HibernateUtil.getSessionFactory();
          Session ss=sf.openSession();
          Transaction tx=null;
          HttpSession session=request.getSession();
          Passenger p1=(Passenger)session.getAttribute("logger");
        try
        {
            tx=ss.beginTransaction();
            String y="";
            Query q=ss.createQuery("From Booking where name= :y");
            /*SQLQuery q1=ss.createSQLQuery("select from Booking where name= :y ");
              q1.addEntity(Booking.class);
              q1.setString(0,p1.getName());*/
            q.setParameter("y",p1.getName());
            List l=q.list();
            if(l!=null)
               request.setAttribute("data1",l);
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
