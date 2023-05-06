
import java.text.DateFormat;  
import java.text.SimpleDateFormat;  
import java.util.Date;  
import java.util.Calendar;  
 public class DateFormateTest {  
       public static void main(String args[]){  
                Date date = Calendar.getInstance().getTime();  
                DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");  
                String strDate = dateFormat.format(date);  
                System.out.println("Converted String: " + strDate);  
                 
        }  
} 