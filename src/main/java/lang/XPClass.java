package lang;

public class XPClass {
	protected Class<?> reflect;

	@java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
	static @interface Meta {
		String comment();
	}


	public XPClass(Class<?> reflect) {
		this.reflect = reflect;
	}

	public String getName() {
		return this.reflect.getName();
	}

	public String getComment() {
		if (this.reflect.isAnnotationPresent(Meta.class)) {
			return ((Meta)this.reflect.getAnnotation(Meta.class)).comment();
		}
		return null;
	}
}