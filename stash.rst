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

Same function parameters with different return type in C++17/C++20
------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/aoidsi/what_is_the_solution_for_same_function_parameters/

Before:

.. code:: c++

    template<typename R>
    R foo(int i)
    { ... }

    foo<string>(1);

Same function parameters with different return type in C++17/C++20
------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/aoidsi/what_is_the_solution_for_same_function_parameters/

After:

.. code:: c++

    template<class F> struct Auto : F {
        // conversion operator
        template<class T> operator T() {
            return F::template operator()<T>();
        }
    };

    template<class F> Auto(F) -> Auto<F>; // deduction guide

Same function parameters with different return type in C++17/C++20
------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/aoidsi/what_is_the_solution_for_same_function_parameters/

After:

.. code:: c++

    template<class... A>
    auto fooWrapper(A&&... a) {
        return Auto{[&]<class T>() { return foo<T>(std::forward<A>(a)...); }};
    };

    template<class... A>
    auto fooWrapper(int i) {
        return Auto{[=]<class T>() { return foo<T>(i); }};
    };

    double d = fooWrapper(42);

**clamp_cast** -- A saturating arithmetic cast
----------------------------------------------

https://github.com/p-groarke/clamp_cast

A narrowing cast that does the right thing. clamp_cast will saturate output values at min or max if the input value would overflow / underflow.

.. code:: c++

    double ld = -42.0;
    unsigned char uc = clamp_cast<unsigned char>(ld);
    // uc == 0

    float f = 500000.f;
    char c = clamp_cast<char>(f);
    // c == 127


Exception safe assignment
-------------------------

https://vorbrodt.blog/2019/04/08/exception-safe-assignment/

uvw v1.15.0 (header-only libuv wrapper in modern C++) is out
------------------------------------------------------------

Code: https://github.com/skypjack/uvw (C++14, MIT)

Reddit: https://www.reddit.com/r/cpp/comments/b3wkbf/exhaustive_and_composable_error_handling_in_c/

10 differences between static and dynamic libraries every C++ developer should know
-----------------------------------------------------------------------------------

https://www.acodersjourney.com/cplusplus-static-vs-dynamic-libraries/

Crash course in Qt for C++ developers
-------------------------------------

https://www.cleanqt.io/blog/crash-course-in-qt-for-c%2B%2B-developers,-part-1

C++ Compilation: Fixing It
--------------------------

http://virtuallyrandom.com/c-compilation-fixing-it/

https://www.reddit.com/r/cpp/comments/agxk47/c_compilation_fixing_it/

C++ Compilation: Lies, Damned Lies, and Statistics
--------------------------------------------------

http://virtuallyrandom.com/c-compilation-lies-damned-lies-and-statistics/

C++ Compilation: What’s Slowing Us Down?
----------------------------------------

http://virtuallyrandom.com/c-compilation-whats-slowing-us-down/

C++ Headers are Expensive!
--------------------------

http://virtuallyrandom.com/c-headers-are-expensive/

The worst bugs (C++)
--------------------

https://blog.usejournal.com/the-worst-bugs-c-807e0be5dbe7

Finding Unicorns: When the C++ Compiler Writes the Vuln
-------------------------------------------------------

https://www.zerodayinitiative.com/blog/2019/2/28/finding-unicorns-when-the-c-compiler-writes-the-vuln

Non-constant constant-expressions in C++
----------------------------------------

http://b.atch.se/posts/non-constant-constant-expressions/

Cli: A library for interactive command line interfaces in modern C++
--------------------------------------------------------------------

https://github.com/daniele77/cli

**std::pair<>** disappointing performance
-----------------------------------------

https://www.reddit.com/r/cpp/comments/ar4ghs/stdpair_disappointing_performance/

Understanding when not to **std::move** in C++
----------------------------------------------

https://developers.redhat.com/blog/2019/04/12/understanding-when-not-to-stdmove-in-c/

Micro-benchmarks
----------------

https://vorbrodt.blog/2019/03/18/micro-benchmarks/

PhysicsFS vs **std::filesystem**
--------------------------------

https://www.reddit.com/r/cpp/comments/b25dja/physicsfs_vs_stdfilesystem/
https://icculus.org/physfs/
https://github.com/kahowell/physfs-cpp

RESTful style APIs in C++
-------------------------

https://www.reddit.com/r/cpp/comments/auvvf5/restful_style_apis_in_c/

Serialising C++ classes while writing as little code as possible
----------------------------------------------------------------

https://kohutek.eu/open-source/serialising-cpp-classes-while-writing-as-little-code-as-possible/

Array view implementations in Magnum
------------------------------------

https://blog.magnum.graphics/backstage/array-view-implementations/

cogen
-----

cogen-en - repository showing different use cases of c++ coroutines, "try" for optionals amongst others (and talk)

https://www.reddit.com/r/cpp/comments/avv6ai/cogenen_repository_showing_different_use_cases_of/
https://github.com/arBmind/2018-cogen-en/tree/develop/code

Uniform initialization is not broken
------------------------------------

https://www.reddit.com/r/cpp/comments/as8pu1/uniform_initialization_is_not_broken/
