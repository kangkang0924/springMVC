package pojo;

import lombok.Data;

import javax.validation.constraints.*;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/19/9:30
 */
@Data
public class UserForm {
    @NotBlank(message = "请输入用户名")
    @Size(max = 16,min = 6,message = "用户名不能小于6位大于16位")
    private String username;
    @Size(max = 16,min = 6,message = "密码不能小于6位大于16位")
    private String password;
    @Max(value = 160, message = "年龄不能小于0岁,大于160岁")
    private Integer age;
    @Email(message = "邮箱不正确")
    private String email;
    @Pattern(regexp = "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$",message = "电话号不正确")
    private String phone;


    private String name;
    private String gender;
    private String education;
    private List<String> hobby;

}
