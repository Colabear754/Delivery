package order;

public class CartDTO {
	private String Orderer;
	private int menu_id;
	private int option_id;
	private int quantity;

	public CartDTO() {
		super();
	}

	public CartDTO(String orderer, int menu_id, int option_id, int quantity) {
		Orderer = orderer;
		this.menu_id = menu_id;
		this.option_id = option_id;
		this.quantity = quantity;
	}

	public String getOrderer() {
		return Orderer;
	}

	public void setOrderer(String orderer) {
		Orderer = orderer;
	}

	public int getMenu_id() {
		return menu_id;
	}

	public void setMenu_id(int menu_id) {
		this.menu_id = menu_id;
	}

	public int getOption_id() {
		return option_id;
	}

	public void setOption_id(int option_id) {
		this.option_id = option_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
}