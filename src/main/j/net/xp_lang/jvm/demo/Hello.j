.bytecode 50.0




.class net/xp_lang/jvm/demo/Hello
.super lang/Object
.annotation visible Llang/XPClass$Meta;
comment s = "Usage: Hello [name]"
.end annotation

.method public static main([Ljava/lang/String;)V
.limit stack 6
.limit locals 1
.annotation visible Llang/XPClass$Meta;
comment s = "\nEntry point"
.end annotation

aload_0
arraylength
iconst_0
if_icmpgt l524e7f44c19702.22615614
iconst_1
anewarray java/lang/Object
dup
iconst_0
new lang/XPClass
dup
ldc_w net/xp_lang/jvm/demo/Hello
invokenonvirtual lang/XPClass/<init>(Ljava/lang/Class;)V
invokevirtual lang/XPClass/getComment()Ljava/lang/String;
aastore
invokestatic util/cmd/Console/writeLine([Ljava/lang/Object;)V

goto l524e7f44c8ab86.90748316
l524e7f44c19702.22615614:
iconst_2
anewarray java/lang/Object
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

l524e7f44c8ab86.90748316:

return
.stack use locals
stack Uninitialized l524e7f44c19702.22615614
stack Uninitialized l524e7f44c8ab86.90748316
.end stack
.end method

