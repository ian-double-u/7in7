def whileLoop {
	var i = 1
	while(i <= 3) {
		println(i)
		i += 1
	}
}

def forLoop {
	println("for loop using Java-style iteration")
	for(i <- 0 until args.length) {
		println(args(i))
	}
}

def rubyStyleForLoop {
	println("for loop using Ruby-style iteration")
	args.foreach { arg =>
		println(arg)
	}
}

whileLoop
forLoop
rubyStyleForLoop