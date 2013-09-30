




.class net/xp_lang/jvm/demo/Hello
.super java/lang/Object



.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 1

aload_0
arraylength
iconst_0
if_icmpgt l5249bec6db51c8.06993364
iconst_1
anewarray Ljava/lang/Object;
dup
iconst_0
ldc "Hello World"
aastore
invokestatic util/cmd/Console/writeLine([Ljava/lang/Object;)V

goto l5249bec6dc0d43.85580510
l5249bec6db51c8.06993364:
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

l5249bec6dc0d43.85580510:

return
.end method

