thread {
    print("B")
    sleep(500)
    print("C")
}

print("A")
Thread.sleep(1000)
print("D")