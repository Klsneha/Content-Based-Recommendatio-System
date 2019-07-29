<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
	<title>Lucene Recomendations on Wiki Book Pages</title>
	<meta name="description" content="Hello World">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

</head>
<body>


<header>
        <div class="container">
		<div class="Panel with panel-info class">
			
			<div class="panel-heading">	<h1 style="centre">Java Programming Wiki Book Pages Recommendations</h1></div>
				<h3> Crawled Java Programming Wiki Book Pages using JSoup JAVA Library and stored the links, content as Documents in local folder. Applied Lucene Indexing to recommend top 10 Items</h3>
			</div> 
		</div> 
	</header>


<div class="container">
 <h3>Indexing the Content</h3>
 <p> Implemented Recommendations using Lucene Indexing. The Lucene index provides a mapping from terms to documents. This is called an inverted index because it reverses the usual mapping of a document to the terms it contains. The inverted index provides the mechanism for scoring search results: if a number of search terms all map to the same document, then that document is likely to be relevant.</p>
 </div>
 
 <div class="container">
 <h3>Originality</h3>
 <p>Document indexing consists of first constructing a document that contains the fields to be indexed or stored, then adding that document to the index. The key classes involved in indexing are,oal.index.IndexWriter which is responsible for adding documents to an index, and, oal.store.Directory which is the storage abstraction used for the index itself. Directories provide an interface that’s similar to an operating system’s file system. A Directory contains any number of sub-indexes called segments. Maintaining the index as a set of segments allows Lucene to rapidly update and delete documents from the index.</p>
 </div>


<div class="container">
<div class="Panel with panel-success class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post1&postCount=1"><h3>Post 1: &nbsp</h3><h4>In short: the web server issues a unique identifier to on his visit. The visitor must bring back that ID for him to be recognised next time around. This identifier also allows the server to properly segregate objects owned by one session against that of another. If is: If is: Once he's on the service mode and on the groove, the servlet will work on the requests from all other clients.Why isn't it a good idea to have one instance per client? Think about this: Will you hire one pizza guy for every order that came? Do that and you'd be out of business in no time. It comes with a small risk though. Remember: this single guy holds all the order information in his pocket: so if you're not cautious about, he may end up giving the wrong order to a certain client.</h4></a></h3></div>
 <br>
<a href="${name10}"><h4>${name10}</h4></a>
<br>
<a href="${name11}"><h4>${name11}</h4></a>
<br>
<a href="${name12}"><h4>${name12}</h4></a>
<br>
<a href="${name13}"><h4>${name13}</h4></a>
<br>
<a href="${name14}"><h4>${name14}</h4></a>
<br>
<a href="${name15}"><h4>${name15}</h4></a>
<br>
<a href="${name16}"><h4>${name16}</h4></a>
<br>
<a href="${name17}"><h4>${name17}</h4></a>
<br>
<a href="${name18}"><h4>${name18}</h4></a>
<br>
<a href="${name19}"><h4>${name19}</h4></a>
<br>
</div>
<div class="Panel with panel-warning class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post2&postCount=2"><h3>Post 2: &nbsp</h3><h4>A safe way is to serialize the object, then deserialize.This ensures everything is a brand new reference.about how to do this efficiently. Caveats: It's possible for classes to override serialization such that new instances are created, e.g. for singletons.Also this of course doesn't work if your classes aren't Serializable.</h4></a></h3></div>
 <br>
<a href="${name20}"><h4>${name20}</h4></a>
<br>
<a href="${name21}"><h4>${name21}</h4></a>
<br>
<a href="${name22}"><h4>${name22}</h4></a>
<br>
<a href="${name23}"><h4>${name23}</h4></a>
<br>
<a href="${name24}"><h4>${name24}</h4></a>
<br>
<a href="${name25}"><h4>${name25}</h4></a>
<br>
<a href="${name26}"><h4>${name26}</h4></a>
<br>
<a href="${name27}"><h4>${name27}</h4></a>
<br>
<a href="${name28}"><h4>${name28}</h4></a>
<br>
<a href="${name29}"><h4>${name29}</h4></a>
<br>
</div>

<div class="Panel with panel-success class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post3&postCount=3"><h3>Post 3: &nbsp</h3><h4>I was presented with this question in an end of module open book exam today and found myself lost. i was reading Head first Javaand both definitions seemed to be exactly the same. i was just wondering what the MAIN difference was for my own piece of mind. i know there are a number of similar questions to this but, none i have seen which provide a definitive answer.Thanks, Darren</h4></a> </h3></div>
 <br>
<a href="${name30}"><h4>${name30}</h4></a>
<br>
<a href="${name31}"><h4>${name31}</h4></a>
<br>
<a href="${name32}"><h4>${name32}</h4></a>
<br>
<a href="${name33}"><h4>${name33}</h4></a>
<br>
<a href="${name34}"><h4>${name34}</h4></a>
<br>
<a href="${name35}"><h4>${name35}</h4></a>
<br>
<a href="${name36}"><h4>${name36}</h4></a>
<br>
<a href="${name37}"><h4>${name37}</h4></a>
<br>
<a href="${name38}"><h4>${name38}</h4></a>
<br>
<a href="${name39}"><h4>${name39}</h4></a>
</div>

<div class="Panel with panel-warning class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post4&postCount=4"><h3>Post 4: &nbsp</h3><h4>I found out that the above piece of code is perfectly legal in Java. I have the following questions. ThanksAdded one more question regarding Abstract method classes.</h4></a> </h3></div>

<br>
<a href="${name40}"><h4>${name40}</h4></a>
<br>
<a href="${name41}"><h4>${name41}</h4></a>
<br>
<a href="${name42}"><h4>${name42}</h4></a>
<br>
<a href="${name43}"><h4>${name43}</h4></a>
<br>
<a href="${name44}"><h4>${name44}</h4></a>
<br>
<a href="${name45}"><h4>${name45}</h4></a>
<br>
<a href="${name46}"><h4>${name46}</h4></a>
<br>
<a href="${name47}"><h4>${name47}</h4></a>
<br>
<a href="${name48}"><h4>${name48}</h4></a>
<br>
<a href="${name49}"><h4>${name49}</h4></a>
<br>
</div>

<div class="Panel with panel-success class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post5&postCount=5"><h3>Post 5: &nbsp</h3><h4>In java it's a bit difficult to implement a deep object copy function. What steps you take to ensure the original object and the cloned one share no reference</h4></a> </h3></div>
 <br>
<a href="${name50}"><h4>${name50}</h4></a>
<br>
<a href="${name51}"><h4>${name51}</h4></a>
<br>
<a href="${name52}"><h4>${name52}</h4></a>
<br>
<a href="${name53}"><h4>${name53}</h4></a>
<br>
<a href="${name54}"><h4>${name54}</h4></a>
<br>
<a href="${name55}"><h4>${name55}</h4></a>
<br>
<a href="${name56}"><h4>${name56}</h4></a>
<br>
<a href="${name57}"><h4>${name57}</h4></a>
<br>
<a href="${name58}"><h4>${name58}</h4></a>
<br>
<a href="${name59}"><h4>${name59}</h4></a>
<br>
</div>

<div class="Panel with panel-warning class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post6&postCount=6"><h3>Post 6: &nbsp</h3><h4>Java has the ability to create classes at runtime. These classes are known as Synthetic Classes or Dynamic Proxies. See for more information. Other open-source libraries, such as and also allow you to generate synthetic classes, and are more powerful than the libraries provided with the JRE. Synthetic classes are used by AOP (Aspect Oriented Programming) libraries such as Spring AOP and AspectJ, as well as ORM libraries such as Hibernate.</h4></a></h3></div>
 <br>
<a href="${name60}"><h4>${name60}</h4></a>
<br>
<a href="${name61}"><h4>${name61}</h4></a>
<br>
<a href="${name62}"><h4>${name62}</h4></a>
<br>
<a href="${name63}"><h4>${name63}</h4></a>
<br>
<a href="${name64}"><h4>${name64}</h4></a>
<br>
<a href="${name65}"><h4>${name65}</h4></a>
<br>
<a href="${name66}"><h4>${name66}</h4></a>
<br>
<a href="${name67}"><h4>${name67}</h4></a>
<br>
<a href="${name68}"><h4>${name68}</h4></a>
<br>
<a href="${name69}"><h4>${name69}</h4></a>
<br>
</div>

<div class="Panel with panel-success class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post7&postCount=7"><h3>Post 7: &nbsp</h3><h4>You can make a deep copy serialization without creating some files. Copy Restore</h4></a></h3></div>
 <br>
<a href="${name70}"><h4>${name70}</h4></a>
<br>
<a href="${name71}"><h4>${name71}</h4></a>
<br>
<a href="${name72}"><h4>${name72}</h4></a>
<br>
<a href="${name73}"><h4>${name73}</h4></a>
<br>
<a href="${name74}"><h4>${name74}</h4></a>
<br>
<a href="${name75}"><h4>${name75}</h4></a>
<br>
<a href="${name76}"><h4>${name76}</h4></a>
<br>
<a href="${name77}"><h4>${name77}</h4></a>
<br>
<a href="${name78}"><h4>${name78}</h4></a>
<br>
<a href="${name79}"><h4>${name79}</h4></a>
<br>
</div>
<div class="Panel with panel-warning class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post8&postCount=8"><h3>Post 8: &nbsp</h3><h4>One way to implement deep copy is to add copy constructors to each associated class. A copy constructor takes an instance of this as its single argument and copies all the values from it. Quite some work but pretty straightforward and safe.  note that you don not need to use accessor methods to read fields. You can access all fields directly because the source instance is always of the same type as the instance with the copy constructor. Obvious but might be overlooked. Example Note that when using copy constructors you need to know the runtime type of the object you are copying. With the above approach you cannot easily copy a mixed list.</h4></a></h3></div>
 <br>
 <a href="${name80}"><h4>${name80}</h4></a>
<br>
<a href="${name81}"><h4>${name81}</h4></a>
<br>
<a href="${name82}"><h4>${name82}</h4></a>
<br>
<a href="${name83}"><h4>${name83}</h4></a>
<br>
<a href="${name84}"><h4>${name84}</h4></a>
<br>
<a href="${name85}"><h4>${name85}</h4></a>
<br>
<a href="${name86}"><h4>${name86}</h4></a>
<br>
<a href="${name87}"><h4>${name87}</h4></a>
<br>
<a href="${name88}"><h4>${name88}</h4></a>
<br>
<a href="${name89}"><h4>${name89}</h4></a>
<br>
</div>
<div class="Panel with panel-success class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post9&postCount=9"><h3>Post 9: &nbsp</h3><h4>Inheritance is when a class derives from an existing class.So if you have a Person class  then you have a Student class that extends Person  Student inherits all the things that Person has.There are some details around the access modifiers you put on the fields methods in Person  but that's the basic idea.For example if you have a private field on Person  Student won't see it because its private and private fields are not visible to subclasses. Polymorphism deals with how the program decides which methods it should use depending on what type of thing it has. If you have a Person  which has a read method and you have a Student which extends Person  which has its own implementation of read  which method gets called is determined for you by the runtime  depending if you have a Person or a Student. Thats the polymorphism in action.You can do that assignment because a Student is a Person  but the runtime is smart enough to know that the actual type of p is Student.Note that details differ among languages.You can do inheritance in javascript for example  but its completely different than the way it works in Java.</h4></a></h3></div>
<br>
 <a href="${name90}"><h4>${name90}</h4></a>
<br>
<a href="${name91}"><h4>${name91}</h4></a>
<br>
<a href="${name92}"><h4>${name92}</h4></a>
<br>
<a href="${name93}"><h4>${name93}</h4></a>
<br>
<a href="${name94}"><h4>${name94}</h4></a>
<br>
<a href="${name95}"><h4>${name95}</h4></a>
<br>
<a href="${name96}"><h4>${name96}</h4></a>
<br>
<a href="${name97}"><h4>${name97}</h4></a>
<br>
<a href="${name98}"><h4>${name98}</h4></a>
<br>
<a href="${name99}"><h4>${name99}</h4></a>
<br>
</div>
<div class="Panel with panel-warning class">
<div class="panel-heading"><h3 class="panel-title"><a href="add?method=doGet&post=post10&postCount=10"><h3>Post 10: &nbsp</h3><h4>Polymorphism The ability to treat objects of different types in a similar manner.Example Giraffe and Crocodile are both Animals  and animals can Move.If you have an instance of an Animal then you can call Move without knowing or caring what type of animal it is. Inheritance This is one way of achieving both Polymorphism and code reuse at the same time.Other forms of polymorphism There are other way of achieving polymorphism, such as interfaces, which provide only polymorphism but no code reuse sometimes the code is quite different, such as Move for a Snake would be quite different from Move for a Dog, in which case an Interface would be the better polymorphic choice in this case.In other dynamic languages polymorphism can be achieved with Duck Typing, which is the classes don't even need to share the same base class or interface, they just need a method with the same name.Or even more dynamic like Javascript, you don't even need classes at all, just an object with the same method name can be used polymorphically.</h4></a></h3></div>
<br>
 <a href="${name100}"><h4>${name100}</h4></a>
<br>
<a href="${name101}"><h4>${name101}</h4></a>
<br>
<a href="${name102}"><h4>${name102}</h4></a>
<br>
<a href="${name103}"><h4>${name103}</h4></a>
<br>
<a href="${name104}"><h4>${name104}</h4></a>
<br>
<a href="${name105}"><h4>${name105}</h4></a>
<br>
<a href="${name106}"><h4>${name106}</h4></a>
<br>
<a href="${name107}"><h4>${name107}</h4></a>
<br>
<a href="${name108}"><h4>${name108}</h4></a>
<br>
<a href="${name109}"><h4>${name109}</h4></a>
<br>
 <br>
 
 </div>
 </div>
</body>
</html> 


