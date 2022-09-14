package example;
import java.util.Date;

public class ShopTime {
    public String timenow() {
        Date day = new java.util.Date();
        String am_pm;
        int hour = day.getHours();
        int minute = day.getMinutes();
        int second = day.getSeconds();
        if(hour / 12 == 0) {
            am_pm = "AM";
        } else {
            am_pm = "PM";
            hour = hour - 12;
        }
        String CT = hour + ":" + minute + ":" + second + " " + am_pm;
        return CT;        
    }
}