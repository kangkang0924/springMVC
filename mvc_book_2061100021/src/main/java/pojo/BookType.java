package pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/10/12/11:15
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookType implements Serializable {
    private int typeId;
    private String typeName;

}
