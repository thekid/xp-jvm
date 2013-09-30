public class HelloWorld {
  	public static void main(String... args) {
  		if (args.length > 0) {
  			util.cmd.Console.writeLine("Hello ", args[0]);
  		} else {
  			util.cmd.Console.writeLine("Hello World");
  		}
  	}
}