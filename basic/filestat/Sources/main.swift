
#if os(OSX) || os(iOS) || os(watchOS) || os(tvOS)
	import Darwin
#else
	import Glibc
#endif

var statStruct = stat()
let filename = "/bin/bash"

stat(filename, &statStruct)
print("\(filename) is \(statStruct.st_size) bytes")
