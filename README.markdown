# fuego-framework

[Fuego](http://fuego.sourceforge.net) is a collection of C++ libraries
for developing software for the game of Go.

fuego-framework is a collection of scripts and patches to build Boost
and Fuego into .framework files that can be easily included into iOS
applications. I use it in [Dragon Go Client](http://dgs.uberweiss.net).

This project mostly exists to solve a few minor annoyances: Fuego
takes forever to compile on my laptop, I always forget how to build
Boost for iOS, and every time I updated Boost, it created a 100+ MB
change in my git repo.

Tons of thanks to [Jordan Bondo](https://gist.github.com/faithfracture/c629ae4c7168216a9856) for the `boost.sh` script. 
