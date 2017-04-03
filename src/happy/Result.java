package happy;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Result() {
        super();

    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String kind = request.getParameter("kind");
		String year = request.getParameter("year");
		String hour = request.getParameter("hour");
		String inst = request.getParameter("inst");
		String isneg = request.getParameter("isneg");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String Algo = request.getParameter("Algorithm");
		double pbyes = 1.000;
		double pbno = 1.000;
		int retval = 0;
		String happiness = "yes";
		
		/*One-Rule*/
		if(Algo.equals("or")){
			if(year.equals("1Y")) happiness="no";
		}
		
		/*Naive-Bayes*/
		else if(Algo.equals("nv")){
			
			/*kind*/
			if(kind.equals("facebook")){ 
				pbyes*=(34.0/62.0);
				pbno*=(34.0/48.0);
			}
			else if(kind.equals("instagram")){ 
				pbyes*=(7.0/62.0);
				pbno*=(7.0/48.0);
			}
			else if(kind.equals("naverband")){
				pbyes*=(6.0/62.0);
				pbno*=(3.0/48.0);
			}
			else if(kind.equals("kakaostory")){
				pbyes*=(5.0/62.0);
				pbno*=(0.0/48.0);
			}
			else{
				pbyes*=(10.0/62.0);
				pbno*=(4.0/48.0);
			}
			
			/*year*/
			if(year.equals("less 1Y")){
				pbyes*=(15.0/62.0);
				pbno*=(2.0/48.0);
			}
			else if(year.equals("1Y")){
				pbyes*=(2.0/62.0);
				pbno*=(5.0/48.0);
			}
			else if(year.equals("2Y")){
				pbyes*=(7.0/62.0);
				pbno*=(4.0/48.0);
			}
			else{
				pbyes*=(38.0/62.0);
				pbno*=(37.0/48.0);
			}
			
			/*hour*/
			if(hour.equals("less 1H")){
				pbyes*=(24.0/62.0);
				pbno*=(15.0/48.0);
			}
			else if(hour.equals("1H")){
				pbyes*=(14.0/62.0);
				pbno*=(16.0/48.0);
			}
			else{
				pbyes*=(24.0/62.0);
				pbno*=(17.0/48.0);
			}
			
			/*instrument*/
			if(inst.equals("pc")){
				pbyes*=(6.0/62.0);
				pbno*=(5.0/48.0);
			}
			else{
				pbyes*=(56.0/62.0);
				pbno*=(43.0/48.0);
			}
			
			/*isneg*/
			if(isneg.equals("yes")){
				pbyes*=(25.0/62.0);
				pbno*=(25.0/48.0);
			}
			else{
				pbyes*=(37.0/62.0);
				pbno*=(23.0/48.0);
			}
			
			/*gender*/
			if(gender.equals("male")){
				pbyes*=(40.0/62.0);
				pbno*=(30.0/48.0);
			}
			else{
				pbyes*=(22.0/62.0);
				pbno*=(18.0/48.0);
			}
			
			/*age*/
			if(age.equals("20s")){
				pbyes*=(43.0/62.0);
				pbno*=(38.0/48.0);
			}
			else if(age.equals("30s")){
				pbyes*=(12.0/62.0);
				pbno*=(6.0/48.0);
			}
			else if(age.equals("40s")){
				pbyes*=(7.0/62.0);
				pbno*=(4.0/48.0);
			}
			else{
				pbyes*=(0.0/62.0);    // 나이가 40이상일 경우
				pbno*=(0.0/48.0);
			}
			
			pbyes*=(62.0/110.0);
			pbno*=(48.0/110.0);
			retval=Double.compare(pbyes, pbno);
			
			if(retval<0){
				happiness="no";
			}
			else if(retval>0){
				happiness="yes";
			}
			else{
				happiness="either";
			}
		}
		
		/*Decision Tree*/
		else if(Algo.equals("dt")){
			if(year.equals("1Y")){
				happiness = "no"; 
			}
			else if(year.equals("more 2Y")){
				if(kind.equals("instagram")){
					if(hour.equals("more 1H")) happiness="no";
				}
				else if(kind.equals("facebook")){
					if(hour.equals("less 1H") || hour.equals("1H")) happiness="no";
				}
				else
					happiness="yes";
			}
			else
				happiness="yes";
		}
		
		else if(Algo.equals("ar")){
			request.setAttribute("KIND", kind);
			request.setAttribute("YEAR", year);
			request.setAttribute("HOUR", hour);
			request.setAttribute("INST", inst);
			request.setAttribute("ISNEG", isneg);
			request.setAttribute("GENDER", gender);
			request.setAttribute("AGE", age);
			request.setAttribute("ALGO", Algo);
			request.setAttribute("HAPPINESS", happiness);
			RequestDispatcher dis = request.getRequestDispatcher("result.jsp");
			dis.forward(request, response);
		}
		
		request.setAttribute("KIND", kind);
		request.setAttribute("YEAR", year);
		request.setAttribute("HOUR", hour);
		request.setAttribute("INST", inst);
		request.setAttribute("ISNEG", isneg);
		request.setAttribute("GENDER", gender);
		request.setAttribute("AGE", age);
		request.setAttribute("ALGO", Algo);
		request.setAttribute("HAPPINESS", happiness);
		RequestDispatcher dis = request.getRequestDispatcher("result.jsp");
		dis.forward(request, response);
	}
}
