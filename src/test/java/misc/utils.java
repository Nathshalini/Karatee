package misc;

import java.io.File;
import java.nio.file.Files;
public class utils {
    public static String method1(){
        return "shalini";
    }

    public String method2(){
        return "karate";
    }

    public static void writeToFile(String filename, String content)
    {
        try {
            File f = new File(filename);
            Files.write(f.toPath(), content.getBytes());
            System.out.println("File ==> " + f.getAbsolutePath());
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
}
