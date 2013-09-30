package util.cmd;

public class Console {

	public static void writeLine(Object... args) {
		write(args);
		System.out.println();
	}

	public static void write(Object... args) {
		for (Object arg : args) {
			System.out.print(arg);
		}
	}
}