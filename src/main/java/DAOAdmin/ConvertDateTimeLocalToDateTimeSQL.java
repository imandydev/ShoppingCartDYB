package DAOAdmin;

public class ConvertDateTimeLocalToDateTimeSQL {
    public static String convertTime(String time) {
        String[] arr = time.split("T");
        return  arr[0] +" " + arr[1]+":00";
    }
}
