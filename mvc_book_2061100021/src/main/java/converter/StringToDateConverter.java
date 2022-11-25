package converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class StringToDateConverter implements Converter<String, Date> {
	private String datePattern;

	public void setDatePattern(String datePattern) {
		this.datePattern = datePattern;
	}
	@Override
	public Date convert(String strdate) {
		// TODO Auto-generated method stub
		SimpleDateFormat dateFormat = new SimpleDateFormat(datePattern);
		try {
			System.out.println("@@@@@@@@@@");
			return dateFormat.parse(strdate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("**************");
			return null;
		}
		
	}

}
