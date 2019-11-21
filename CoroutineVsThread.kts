import kotlinx.coroutines.*
import java.lang.Thread.sleep
import kotlin.concurrent.thread

/* ------------------------- */

// thread {
//     print("B")
//     sleep(500)
//     print("C")
// }

// print("A")
// Thread.sleep(1000)
// print("D")

/* ------------------------- */

GlobalScope.launch {
    print("B")
    delay(500)
    print("C")
}

print("A")
Thread.sleep(1000)
print("D")
