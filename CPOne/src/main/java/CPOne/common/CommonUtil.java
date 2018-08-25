package CPOne.common;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.http.MediaType;

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
	
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
	
	public static MediaType typeConfImg(String type) {
		type.toUpperCase();
		switch (type) {
		case "JSP":
			return MediaType.IMAGE_JPEG;
		case "GIF":
			return MediaType.IMAGE_GIF;
		case "PNG":
			return MediaType.IMAGE_PNG;
		default:
			return null;
		}
	}
	
}
