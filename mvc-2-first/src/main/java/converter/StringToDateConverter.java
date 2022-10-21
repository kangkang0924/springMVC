package converter;

import org.springframework.core.convert.converter.Converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/10/21/11:18
 */
public class StringToDateConverter implements Converter<String, Date> {

    private String datePattern;

    public void setDatePattern(String datePattern) {
        this.datePattern = datePattern;
    }

    @Override
    public Date convert(String date) {
        SimpleDateFormat dateFormat = new SimpleDateFormat(datePattern);
        Date parse = null;
        try {
            parse = dateFormat.parse(date);
        } catch (ParseException e) {
            e.printStackTrace();
            //throw new RuntimeException(e);
        }
        return parse;
    }


}
