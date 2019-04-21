Compiled from "launch.kts"
public class Launch extends kotlin.script.templates.standard.ScriptTemplateWithArgs {
  public Launch(java.lang.String[]);
    Code:
       0: aload_0
       1: aload_1
       2: invokespecial #8                  // Method kotlin/script/templates/standard/ScriptTemplateWithArgs."<init>":([Ljava/lang/String;)V
       5: aload_0
       6: getstatic     #14                 // Field kotlinx/coroutines/GlobalScope.INSTANCE:Lkotlinx/coroutines/GlobalScope;
       9: checkcast     #16                 // class kotlinx/coroutines/CoroutineScope
      12: aconst_null
      13: aconst_null
      14: new           #18                 // class Launch$1
      17: dup
      18: aconst_null
      19: invokespecial #21                 // Method Launch$1."<init>":(Lkotlin/coroutines/Continuation;)V
      22: checkcast     #23                 // class kotlin/jvm/functions/Function2
      25: iconst_3
      26: aconst_null
      27: invokestatic  #29                 // Method kotlinx/coroutines/BuildersKt.launch$default:(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
      30: pop
      31: ldc2_w        #30                 // long 1000l
      34: invokestatic  #37                 // Method java/lang/Thread.sleep:(J)V
      37: ldc           #39                 // String world!
      39: astore_2
      40: astore_3
      41: getstatic     #45                 // Field java/lang/System.out:Ljava/io/PrintStream;
      44: aload_2
      45: invokevirtual #51                 // Method java/io/PrintStream.println:(Ljava/lang/Object;)V
      48: aload_3
      49: return
}
