package samples.webflow;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

@Service("productService")
public class ProductService {
	private Map<Integer, Product> products = new HashMap<Integer, Product>();

	public ProductService() {
		products.put(1, new Product(0, "上衣", 1000));
		products.put(2, new Product(1, "鞋", 1200));
		products.put(3, new Product(2, "帽子", 1300));
	}

	public List<Product> getProducts() {
		return new ArrayList<Product>(products.values());
	}

	public Product getProduct(int productId) {
		return getProducts().get(productId);
	}
}
