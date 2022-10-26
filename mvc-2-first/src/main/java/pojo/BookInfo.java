package pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/21/10:52
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookInfo {
    private String name;
    private String ISBN;
    private String writer;

    private String id;

    private Double price;
    private String newQuantity;
    private String total;

    private String bookshelf;
    private String nature;

    //出版社
    private String pub;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date pubDate;

    private List<String> group;

    private String hsp;
    private int type;

}
