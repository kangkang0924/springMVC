package pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/21/10:52
 */

public class BookInfo {

    @NotBlank(message = "请输入书名")
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

    public BookInfo() {
    }

    public BookInfo(String name, String ISBN, String writer, String id, Double price, String newQuantity, String total, String bookshelf, String nature, String pub, Date pubDate, List<String> group, String hsp, int type) {
        this.name = name;
        this.ISBN = ISBN;
        this.writer = writer;
        this.id = id;
        this.price = price;
        this.newQuantity = newQuantity;
        this.total = total;
        this.bookshelf = bookshelf;
        this.nature = nature;
        this.pub = pub;
        this.pubDate = pubDate;
        this.group = group;
        this.hsp = hsp;
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getISBN() {
        return ISBN;
    }

    public void setISBN(String ISBN) {
        this.ISBN = ISBN;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getNewQuantity() {
        return newQuantity;
    }

    public void setNewQuantity(String newQuantity) {
        this.newQuantity = newQuantity;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total;
    }

    public String getBookshelf() {
        return bookshelf;
    }

    public void setBookshelf(String bookshelf) {
        this.bookshelf = bookshelf;
    }

    public String getNature() {
        return nature;
    }

    public void setNature(String nature) {
        this.nature = nature;
    }

    public String getPub() {
        return pub;
    }

    public void setPub(String pub) {
        this.pub = pub;
    }

    public Date getPubDate() {
        return pubDate;
    }

    public void setPubDate(Date pubDate) {
        this.pubDate = pubDate;
    }

    public List<String> getGroup() {
        return group;
    }

    public void setGroup(List<String> group) {
        this.group = group;
    }

    public String getHsp() {
        return hsp;
    }

    public void setHsp(String hsp) {
        this.hsp = hsp;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
