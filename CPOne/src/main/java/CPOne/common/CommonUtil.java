package CPOne.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * 
 * @author jsp
 * @since 2018. 08. 12.
 * @see 공통부분들을 넣음
 *
 */

public class CommonUtil {
	
	public static String currentTime(){
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String dateTime = dateFormat.format(cal.getTime());
		return dateTime;
	}
	
	
}
