package pojo;

import lombok.Data;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.util.Date;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/21/10:52
 */
@Data
public class BookInfo {

    @NotBlank(message = "请输入书名")
    private String name;
    @NotBlank(message = "请输入ISBN")
    private String ISBN;
    @Length(max = 5,message = "作者最大长度为5")
    private String writer;

    private String id;
    @Min(value = 1,message = "价格最少是1元")
    private Double price;
    private String newQuantity;
    private String total;
    @Email(message = "邮箱不正确")
    private String email;
    @Pattern(regexp = "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$",message = "电话号不正确")
    private String phone;
    //出版社
    private String pub;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private String bookshelf;
    private String nature;


    private Date pubDate;

    private List<String> group;

    private String hsp;
    private int type;


}
