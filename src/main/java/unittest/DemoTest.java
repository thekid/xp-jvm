package unittest;

public class DemoTest extends TestCase {

	public DemoTest(String name) {
		super(name);
	}

	@Test
	public void succeeds() {
    	this.assertEquals(1, 1);
  	}

	@Test
	public void fails() {
    	this.assertEquals(1, 0);
  	}
}
