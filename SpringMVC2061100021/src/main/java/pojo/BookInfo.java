package pojo;

/**
 * @author 韩德康~
 * @version 1.0
 * @time 2022/09/21/10:52
 */
public class BookInfo {
    private String name;
    private String ISBN;
    private String author;
    private String id;
    private String type;
    private String price;
    private String newQuantity;
    private String inventory;
    private String press;
    private String bookshelf;

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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getNewQuantity() {
        return newQuantity;
    }

    public void setNewQuantity(String newQuantity) {
        this.newQuantity = newQuantity;
    }

    public String getInventory() {
        return inventory;
    }

    public void setInventory(String inventory) {
        this.inventory = inventory;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public String getBookshelf() {
        return bookshelf;
    }

    public void setBookshelf(String bookshelf) {
        this.bookshelf = bookshelf;
    }

    @Override
    public String toString() {
        return "BookInfo{" +
                "name='" + name + '\'' +
                ", ISBN='" + ISBN + '\'' +
                ", author='" + author + '\'' +
                ", id='" + id + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", newQuantity=" + newQuantity +
                ", inventory=" + inventory +
                ", press='" + press + '\'' +
                ", bookshelf='" + bookshelf + '\'' +
                '}';
    }
}
