package unittest;

import java.util.List;
import java.util.ArrayList;
import java.lang.reflect.Method;
import java.lang.reflect.InvocationTargetException;

public class Runner {

    protected static void addTests(List<TestCase> tests, Class<TestCase> test) {
        try {
            for (Method m : test.getMethods()) {
                if (m.isAnnotationPresent(Test.class)) {
                    tests.add(test
                        .getConstructor(new Class[] { String.class })
                        .newInstance(new Object[] { m.getName() })
                    );
                }
            }
        } catch (Throwable e) {
            throw new RuntimeException("Unexpected", e);
        }
    }


    public static void main(String... args) {
        List<TestCase> tests = new ArrayList<TestCase>();
        for (String arg : args) {
            try {
                Class clazz = Class.forName(arg);
                addTests(tests, (Class<TestCase>)clazz);
            } catch (ClassNotFoundException e) {
                System.err.println("*** " + e.getMessage());
                System.exit(1);
            }
        }

        System.out.print("[");
        for (TestCase t : tests) {
            try {
                t.run();
                System.out.print(".");
            } catch (Throwable e) {
                System.out.print("E");
            }
        }
        System.out.println("]");
    }
}