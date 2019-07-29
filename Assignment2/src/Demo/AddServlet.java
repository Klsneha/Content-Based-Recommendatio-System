package Demo;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class AddServlet extends HttpServlet {

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException
	{ 
		
		
		String temp=req.getParameter("post");
		int count=Integer.parseInt(req.getParameter("postCount"));
		
		System.out.println(temp);
		String key="name"+count;
		System.out.println("Key is "+key);
		String post="";
		if(temp.equals("post3"))
		{
			post="I was presented with this question in an end of module open book exam today and found myself lost. i was reading Head first Javaand both definitions seemed to be exactly the same. i was just wondering what the MAIN difference was for my own piece of mind. i know there are a number of similar questions to this but, none i have seen which provide a definitive answer.Thanks, Darren";
		}
		else if(temp.equals("post4"))
		{
			post="I found out that the above piece of code is perfectly legal in Java. I have the following questions. ThanksAdded one more question regarding Abstract method classes.";
		}
		else if(temp.equals("post5"))
		{
			post="In java it's a bit difficult to implement a deep object copy function. What steps you take to ensure the original object and the cloned one share no reference";
		}
		else if(temp.equals("post6"))
		{
			post="Java has the ability to create classes at runtime. These classes are known as Synthetic Classes or Dynamic Proxies. See for more information. Other open-source libraries, such as and also allow you to generate synthetic classes, and are more powerful than the libraries provided with the JRE. Synthetic classes are used by AOP (Aspect Oriented Programming) libraries such as Spring AOP and AspectJ, as well as ORM libraries such as Hibernate.";
		}
		else if(temp.equals("post1"))
		{
			post="In short: the web server issues a unique identifier to on his visit. The visitor must bring back that ID for him to be recognised next time around. This identifier also allows the server to properly segregate objects owned by one session against that of another. If is: If is: Once he's on the service mode and on the groove, the servlet will work on the requests from all other clients.Why isn't it a good idea to have one instance per client? Think about this: Will you hire one pizza guy for every order that came? Do that and you'd be out of business in no time. It comes with a small risk though. Remember: this single guy holds all the order information in his pocket: so if you're not cautious about, he may end up giving the wrong order to a certain client.";
		}
		else if(temp.equals("post2"))
		{
			post="A safe way is to serialize the object, then deserialize.This ensures everything is a brand new reference.about how to do this efficiently. Caveats: It's possible for classes to override serialization such that new instances are created, e.g. for singletons.Also this of course doesn't work if your classes aren't Serializable.";
		}
		else if(temp.equals("post7"))
		{
			post="You can make a deep copy serialization without creating some files. Copy Restore";
		}
		else if(temp.equals("post8"))
		{
			post="One way to implement deep copy is to add copy constructors to each associated class. A copy constructor takes an instance of this as its single argument and copies all the values from it. Quite some work but pretty straightforward and safe.  note that you don not need to use accessor methods to read fields. You can access all fields directly because the source instance is always of the same type as the instance with the copy constructor. Obvious but might be overlooked. Example Note that when using copy constructors you need to know the runtime type of the object you are copying. With the above approach you cannot easily copy a mixed list.";
		}
		else if(temp.equals("post9"))
		{
			post="Inheritance is when a class derives from an existing class.So if you have a Person class  then you have a Student class that extends Person  Student inherits all the things that Person has.There are some details around the access modifiers you put on the fields methods in Person  but that's the basic idea.For example if you have a private field on Person  Student won't see it because its private and private fields are not visible to subclasses. Polymorphism deals with how the program decides which methods it should use depending on what type of thing it has. If you have a Person  which has a read method and you have a Student which extends Person  which has its own implementation of read  which method gets called is determined for you by the runtime  depending if you have a Person or a Student. Thats the polymorphism in action.You can do that assignment because a Student is a Person  but the runtime is smart enough to know that the actual type of p is Student.Note that details differ among languages.You can do inheritance in javascript for example  but its completely different than the way it works in Java.";
		}
		else if(temp.equals("post10"))
		{
			post="Polymorphism The ability to treat objects of different types in a similar manner.Example Giraffe and Crocodile are both Animals  and animals can Move.If you have an instance of an Animal then you can call Move without knowing or caring what type of animal it is. Inheritance This is one way of achieving both Polymorphism and code reuse at the same time.Other forms of polymorphism There are other way of achieving polymorphism, such as interfaces, which provide only polymorphism but no code reuse sometimes the code is quite different, such as Move for a Snake would be quite different from Move for a Dog, in which case an Interface would be the better polymorphic choice in this case.In other dynamic languages polymorphism can be achieved with Duck Typing, which is the classes don't even need to share the same base class or interface, they just need a method with the same name.Or even more dynamic like Javascript, you don't even need classes at all, just an object with the same method name can be used polymorphically.";
		}
		String finalKey="";
		try {
			//JSoupDemo.Demo();
			String links[]=SimpleLuceneIndexing.dupmain(post);
			System.out.println("In Servlet");
			String outPutString="";
			for(int i=0;i<links.length;i++)
			{
				//outPutString=outPutString+links[i]+"<br>";
				finalKey=key+i;
				System.out.println("Key is"+finalKey);
				req.setAttribute(finalKey, links[i]);			
			}
	
			//req.setAttribute(key, outPutString);
			getServletConfig().getServletContext().getRequestDispatcher("/Index.jsp").forward(req, res);
			
			
			
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
}
}
