package Demo;
import java.io.*;



import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class JSoupDemo {

	
		public static void Demo() throws IOException {
			/*String html="<html><head><title>jsoup:input with string</title></head><body>Welcome to webcrawling</body></html>";
			Document doc=(Document) Jsoup.parse(html);
			
				
			try {
				File file=new File("index.html");
				Document doc1=(Document) Jsoup.parse(file,"utf-8");
			}catch(IOException e)
			{
				e.printStackTrace();
			}*/
			
			Document doc3=(Document) Jsoup.connect("https://en.wikibooks.org/wiki/Java_Programming").get();
			String title=doc3.title();
			String data=doc3.data();
			String html=doc3.html();
			System.out.println("title"+title);
			//System.out.println(data);
			//System.out.println(html);
			System.out.println(doc3.body().text());
			
			
			Elements links=doc3.select("a[href]");
			//Document doc[]=new Document[links.size()];
			int i=0;
			int count=1;
			for(Element link:links)
			{
				System.out.println("\nlink: "+link.attr("href"));
				System.out.println("text: "+link.text());
				String temp=link.attr("href");
				
				String sub=temp.substring(0,5);
				
				if(sub.equals("/wiki"))
				{
					temp="https://en.wikibooks.org"+temp;
					System.out.println("###");
					System.out.println(temp);
					
					Document doc=(Document) Jsoup.connect(temp).get();
					String d=doc.title();
					System.out.println(d);
					//System.out.println();
					
					File file=new File("..//Docs//"+"document"+count+".txt");
					count++;
					
					file.createNewFile();
					
					FileWriter writer=new FileWriter(file);
					
					writer.write(temp);
					String msg = String.format("%n");
					 writer.write(msg);
					
					writer.write(doc.body().text());
					
					writer.flush();
					writer.close();
					
				}
			
			}
			
			
			
		}
		public static void main(String args[]) throws IOException
		{
			JSoupDemo j=new JSoupDemo();
			j.Demo();
		}
	

}
