




.class net/xp_lang/jvm/demo/Hello
.super lang/Object



.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 1

aload_0
arraylength
iconst_0
if_icmpgt l524bc4f357ae41.81632677
iconst_1
anewarray Ljava/lang/Object;
dup
iconst_0
ldc "Hello World"
aastore
invokestatic util/cmd/Console/writeLine([Ljava/lang/Object;)V

goto l524bc4f359a244.46027686
l524bc4f357ae41.81632677:
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

l524bc4f359a244.46027686:

return
.end method

