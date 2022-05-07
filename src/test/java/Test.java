import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class Test {
    public static void main(String[] args) {
        List<String> products = new ArrayList<String>();
        products.add("girls_clothes0001");
        products.add("girls_clothes0002");
        products.add("girls_clothes0003");
        products.add("girls_clothes0004");
        products.add("girls_clothes0005");
        Random rand = new Random(42);
        Collections.shuffle(products,rand);
        List<String> products3 = products.subList(0, 3);
        for (String product : products3) {
            System.out.println(product);
        }
    }
}
