.class HelloWorld
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 1

aload_0
arraylength
iconst_0
if_icmpgt l5249bb4a53d243.35445104
iconst_1
anewarray Ljava/lang/Object;
dup
iconst_0
ldc "Hello World"
aastore
invokestatic util/cmd/Console/writeLine([Ljava/lang/Object;)V

goto l5249bb4a548dc1.73941947
l5249bb4a53d243.35445104:
iconst_2
anewarray Ljava/lang/Object;
dup
iconst_0
ldc "Hello "
aastore
dup
iconst_1
aload_0
iconst_0
aaload
aastore
invokestatic util/cmd/Console/writeLine([Ljava/lang/Object;)V

l5249bb4a548dc1.73941947:

return
.end method

