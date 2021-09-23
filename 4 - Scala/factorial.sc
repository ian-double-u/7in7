def factorial(x: Int):Int =  x match {
	case 0 => 1
	case x if x > 0 => factorial(x-1)*x
}

println(factorial(0))
println(factorial(3))
println(factorial(5))
// println(factorial(-3))

def factorial2(x: Int):Int = x match {
	case 0 => 1
	case x if x > 0 => factorial2(x-1)*x
	case _ if x < 0 => 0
}

println(factorial2(0))
println(factorial2(3))
println(factorial2(5))
println(factorial2(-3))