#!/usr/bin/perl

# clojure
build("lein", "clojure/lein/");

# dart
build("dart:stable", "dart/dart_stable/");
build("dart:dev",    "dart/dart_dev/");

# golang
build("go:1.2", "golang/go_1.2/");
build("go:1.1", "golang/go_1.1/");
build("go:1.0", "golang/go_1.0/");


# function to create Docker images and print out
# the result. If image creation fails, we'll print
# out the stderr.
sub build {
	$name=$_[0];
	$path=$_[1];

	@result = `docker build -rm -t bradrydzewski/$name $path 2>&1`;
	if ( $? == 0 )
	{
		print "\033[32m ✓ SUCCESS\033[0m $name\n";
	}
	else
	{
		# print only the last 50 lines of a failed
		# container build.
		print @result[-50 .. -1];
		print "\033[31m ✗ FAILURE\033[0m $name\n";
	}
}