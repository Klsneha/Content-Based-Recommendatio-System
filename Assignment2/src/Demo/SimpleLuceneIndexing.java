package Demo;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.apache.lucene.analysis.standard.StandardAnalyzer;

import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.StringField;
import org.apache.lucene.document.TextField;
import org.apache.lucene.index.DirectoryReader;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.queryparser.classic.ParseException;
import org.apache.lucene.queryparser.classic.QueryParser;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopScoreDocCollector;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.RAMDirectory;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Scanner;
/**
 * Lucene Demo: basic similarity based content indexing 
 * @author Sharonpova
 * Current sample files fragments of wikibooks and stackoverflow. 
 */


public class SimpleLuceneIndexing {
	
	public static void indexDirectory(IndexWriter writer, File dir) throws IOException {
		File[] files = dir.listFiles();
		for (int i = 0; i < files.length; i++) {
			File f = files[i];
			if (f.isDirectory()) {
				indexDirectory(writer, f); // recurse
			} else if (f.getName().endsWith(".txt")) {
				// call indexFile to add the title of the txt file to your index (you can also index html)
				indexFile(writer, f);
			}
		}
	}
	public static void indexFile(IndexWriter writer, File f) throws IOException {
		System.out.println("Indexing " + f.getName());
		Document doc = new Document();
		doc.add(new TextField("filename", f.getName(), TextField.Store.YES));
		
		
		//open each file to index the content
		try{
			
				FileInputStream is = new FileInputStream(f);
		        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
		        StringBuffer stringBuffer = new StringBuffer();
		        String line = null;
		        while((line = reader.readLine())!=null){
		          stringBuffer.append(line).append("\n");
		        }
		        reader.close();
				doc.add(new TextField("contents", stringBuffer.toString(), TextField.Store.YES));
	

		}catch (Exception e) {
            
			System.out.println("something wrong with indexing content of the files");
        }    
		
          
        
		writer.addDocument(doc);
		
	}	
	
	
	public static String[] dupmain(String post) throws Exception
	{
		
		//File dataDir = new File("C:\\Users\\kandu\\Documents\\MyJava\\JAVASERVLETPROJECT\\Assignment2\\src\\Demo"); //my sample file folder path
		File dataDir = new File("../Docs"); //my sample file folder path
		 File file1=new File(".");
		 System.out.println(file1.getCanonicalPath());
		// Check whether the directory to be indexed exists
		if (!dataDir.exists() || !dataDir.isDirectory()) {
			throw new IOException(
					dataDir + " does not exist or is not a directory");
		}
		Directory indexDir = new RAMDirectory();
		
		// Specify the analyzer for tokenizing text.
		StandardAnalyzer analyzer = new StandardAnalyzer();
		IndexWriterConfig config = new IndexWriterConfig(analyzer);
		IndexWriter writer = new IndexWriter(indexDir, config);
		
		// call indexDirectory to add to your index
		// the names of the txt files in dataDir
		indexDirectory(writer, dataDir);
		writer.close();
		 
		//Query string!  
		//String querystr = " I was presented with this question in an end of module open book exam today and found myself lost. i was reading Head first Javaand both definitions seemed to be exactly the same. i was just wondering what the MAIN difference was for my own piece of mind. i know there are a number of similar questions to this but, none i have seen which provide a definitive answer.Thanks, Darren";
		String querystr =post;
		/*//This is going to be your selected posts.
		Scanner console = new Scanner(System.in);
		String querystr = "contents:"+console.nextLine();
		System.out.println(querystr);
		*/
		
		Query q = new QueryParser( "contents", analyzer).parse(querystr);
		int hitsPerPage = 10;
		IndexReader reader = null;
		 
		
		 
		 TopScoreDocCollector collector = null;
		 IndexSearcher searcher = null;
		 reader = DirectoryReader.open(indexDir);
		 searcher = new IndexSearcher(reader);
		 collector = TopScoreDocCollector.create(hitsPerPage);
		 searcher.search(q, collector);
		 
		 
		 
		 ScoreDoc[] hits = collector.topDocs().scoreDocs;
		 System.out.println("Found " + hits.length + " hits.");
		 System.out.println();
		 String link[]=new String[hits.length];
		 for (int i = 0; i < hits.length; ++i) {
			 int docId = hits[i].doc;
			 Document d;
			 d = searcher.doc(docId);
			
			 System.out.println((i + 1) + ". " + d.get("filename"));
			 
			 String name=d.get("filename");
			 
			 File file = new File("../Docs//"+name); 
			  
			  BufferedReader br = new BufferedReader(new FileReader(file)); 
			  System.out.println("----------------------------------"); 
			  String st;
			  String linkName="";
			  while ((st = br.readLine()) != null) 
			  {
			    System.out.println(st); 
			    linkName=linkName+st;
			    break;
			  }
			  link[i]=linkName;
			  
			  System.out.println("----------------------------------");
			  
			 
			 
			 
			 
		 }
		 reader.close();
		 return link;
		
		
	}
	
	 public static void main(String[] args) throws IOException, ParseException {
		 
		 
		/* SimpleLuceneIndexing s=new SimpleLuceneIndexing();
		 
		 s.dupmain();*/
		
	 }

}