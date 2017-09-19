package com.mycompany.app;

/**
 * Hello world!
 *
 */
public class App 
{
	public String helloWorld() {
        return "Hello from Java!";
	}

    public static void main( String[] args )
    {
    	   App app = new App();
       System.out.println(app.helloWorld());
    }
}
