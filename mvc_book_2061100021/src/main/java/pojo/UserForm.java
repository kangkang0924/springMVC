package pojo;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/19/9:30
 */
@Data
public class UserForm implements Serializable {
    private String username;
    private String name;
    private String password;
    private String phone;
    private String gender;
    private Integer age;
    private String education;
    private List<String> hobby;
}
