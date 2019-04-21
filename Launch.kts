import kotlinx.coroutines.*

GlobalScope.launch {
    print("hello, ")
}
Thread.sleep(1000)
println("world!")
