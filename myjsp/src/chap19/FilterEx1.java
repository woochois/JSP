package chap19;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Servlet Filter implementation class Filter
 */
//@WebFilter("/Filter")
public class FilterEx1 implements javax.servlet.Filter {

    /**
     * Default constructor. 
     */
    public FilterEx1() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see FilterEx1#destroy()
	 */
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see FilterEx1#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		System.out.println("필터1 통과");
		
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see FilterEx1#init(FilterConfig)
	 */
	@Override
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
