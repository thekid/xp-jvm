package unittest;

public class TestCase {
	String name;

	public TestCase(String name) {
		this.name = name;
	}

	public void run() {
		try {
			this.getClass().getMethod(this.name).invoke(this, new Object[] { });
		} catch (NoSuchMethodException | IllegalAccessException unexpected) {
			throw new IllegalStateException("Unexpected", unexpected);
		} catch (java.lang.reflect.InvocationTargetException e) {
			throw new AssertionFailedError("Exception invoking " + this.name, e.getCause());
		}
	}

	public void assertEquals(int expected, int actual) {
		if (expected != actual) {
			throw new AssertionFailedError("Expected " + expected + " but was " + actual);
		}
	}

	public void assertEquals(Object expected, Object actual) {
		if (!expected.equals(actual)) {
			throw new AssertionFailedError("Expected " + expected + " but was " + actual);
		}
	}
}
