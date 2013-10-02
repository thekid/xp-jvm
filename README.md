XP to Jasmin compiler / XP JVM microkernel
==========================================
This experiment tries to see whether the XP Framework could be based on
the Java Virtual machone in the future. Paired with the XP compiler, its PHP
language parser and the generator to emit Jasmin assembly, and maybe together 
with porting some of PHP's string and array functions, we would be able 
to exchange the PHP platform we currently depend on for something else.

See also:

* http://jasmin.sourceforge.net/

1) Emit assembly code
---------------------
```sh
$ xcc -p rad -E jasmin -sp src/main/xp -o src/main/j src/main/xp/net/xp_lang/jvm/demo/Hello.xp
[.]

Done: 1/1 compiled, 0 failed
Memory used: 6144.00 kB (6144.00 kB peak)
Time taken: 0.38 seconds (0.378 avg)
```

2) Compile to .class
--------------------
```sh
$ java -jar ../jasmin-2.4/jasmin.jar src/main/j/net/xp_lang/jvm/demo/Hello.j
Generated: net\xp_lang\jvm\demo\Test.class
```

3) Run
------
```sh
$ java -cp 'src/main/java;.' net.xp_lang.jvm.demo.Hello
Hello World
```