#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
	import Darwin
#else
	import Glibc
#endif

let stream = fopen("Sources/main.swift", "r")

var input = ""

while true {
	let c = fgetc(stream)
	if c == -1 {
		break
	}
	input = String(Character(UnicodeScalar(UInt32(c))!))
	print(input, terminator: "")
}
