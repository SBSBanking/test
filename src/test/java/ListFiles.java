import java.io.File;

public class ListFiles {

	static File mainFolder = new File("C:\\kyudo");

    public static void main(String[] args)
    {
        ListFiles lf = new ListFiles();
        lf.getFiles(lf.mainFolder);

        long fileSize = mainFolder.length();
            System.out.println("mainFolder size in bytes is: " + fileSize);
            System.out.println("File size in KB is : " + (double)fileSize/1024);
            System.out.println("File size in MB is :" + (double)fileSize/(1024*1024));
    }
    public void getFiles(File f){
        File files[];
        if(f.isFile())
            System.out.println(f.getAbsolutePath());
        else{
            files = f.listFiles();
            for (int i = 0; i < files.length; i++) {
                getFiles(files[i]);
            }
        }
    }
}
