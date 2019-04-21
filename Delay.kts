import kotlinx.coroutines.*

GlobalScope.launch {
    print("hello, ")
    delay(100)
    print("wonderful ")
}
Thread.sleep(1000)
println("world!")
