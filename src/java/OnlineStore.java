
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class OnlineStore extends HttpServlet {

	ArrayList order = null;

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("act");
		if(action != null){
		if (action.equals("ADD TO CART")) {
			String item = req.getParameter("itemName");
			int qty = Integer.parseInt(req.getParameter("quantity"));
			if (order == null) {
				order = new ArrayList();
			}
			Item it = new Item();
			it.setItemName(item);
			it.setQuantity(qty);
			order.add(it);
			HttpSession session = req.getSession();
			session.setAttribute("orders", order);
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/order.jsp");
			try {
				rd.forward(req, res);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if (action.equals("CHECKOUT")) {
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/checkout.jsp");
			rd.forward(req, res);
		}else if (action.equals("Finalize")) {
			String username = req.getParameter("userName");
			String email = req.getParameter("email");

			ArrayList<PersonalInfo> info = new ArrayList();
			PersonalInfo perinfo = new PersonalInfo();
			perinfo.setUserName(username);
			perinfo.setEmail(email);
			info.add(perinfo);

			HttpSession session = req.getSession();
			session.setAttribute("personalinfo", info);
			RequestDispatcher rd = getServletConfig().getServletContext().getRequestDispatcher("/confirm.jsp");
			try {
				rd.forward(req, res);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
	}
}
