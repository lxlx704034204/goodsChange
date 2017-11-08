package po;

public class Item {

	private Integer id;
	private String time;
	private String name;
	private String detail;
	private String img;
	private String expect;
	private String classification;
	private Integer price;
	private Integer uid;

	public Item(Integer id, String time, String name, String detail, String img,
			String expect, String classification, Integer price, Integer uid) {
		super();
		this.id = id;
		this.time = time;
		this.name = name;
		this.detail = detail;
		this.img = img;
		this.expect = expect;
		this.classification = classification;
		this.price = price;
		this.uid = uid;
	}

	public Item() {
		
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getexpect() {
		return expect;
	}

	public void setexpect(String expect) {
		this.expect = expect;
	}

	public String getclassification() {
		return classification;
	}

	public void setclassification(String classification) {
		this.classification = classification;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

}
