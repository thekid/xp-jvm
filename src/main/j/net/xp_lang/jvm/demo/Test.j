



.bytecode 51.0
.class public net/xp_lang/jvm/demo/Test
.super unittest/TestCase

.method public <init>(Ljava/lang/String;)V
	.limit stack 2
	.limit locals 2

   aload_0
   aload_1
   invokespecial unittest/TestCase/<init>(Ljava/lang/String;)V
   return
.end method


.method public succeeds()V
	.annotation visible Lunittest/Test;
	.end annotation

	.limit stack 3
	.limit locals 1

	aload_0
	iconst_1
	iconst_1
	invokevirtual net/xp_lang/jvm/demo/Test/assertEquals(II)V

	return
.end method

