=====
Stash
=====

Remote Development with CLion, by Phil Nash
-------------------------------------------

* https://youtu.be/g1zPcja3zAU
* https://www.reddit.com/r/cpp/comments/axw18q/remote_development_with_clion/

What is the Strict Aliasing Rule and Why do we care?
----------------------------------------------------

(OR Type Punning, Undefined Behavior and Alignment, Oh My!), by Shafik Yaghmour

https://gist.github.com/shafik/848ae25ee209f698763cffee272a58f8

In C and C++ aliasing has to do with what expression types we are allowed to access stored values through. In both C and C++ the standard specifies which expression types are allowed to alias which types. The compiler and optimizer are allowed to assume we follow the aliasing rules strictly, hence the term strict aliasing rule. If we attempt to access a value using a type not allowed it is classified as `undefined behavior (UB) <https://en.cppreference.com/w/cpp/language/ub>`_. Once we have undefined behavior all bets are off, the results of our program are no longer reliable.
