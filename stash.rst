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

Exception safe assignment
-------------------------

https://vorbrodt.blog/2019/04/08/exception-safe-assignment/

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

Are Headers Really the Problem?
-------------------------------

https://buckaroo.pm/posts/are-headers-really-the-problem/
https://www.reddit.com/r/cpp/comments/auyl07/are_headers_really_the_problem/

Error Handling in C++ or: Why You Should Use Eithers in Favor of Exceptions and Error-codes
-------------------------------------------------------------------------------------------

https://buckaroo.pm/posts/error-handling-in-cpp/
https://www.reddit.com/r/cpp/comments/aqir7n/error_handling_in_c_eithers_vs_exceptions_vs/

What is Type Erasure?
---------------------

https://quuxplusone.github.io/blog/2019/03/18/what-is-type-erasure/

Networking TS + Beast
---------------------

https://www.reddit.com/r/cpp/comments/b12iob/networking_ts_beast_new_tutorials_read_this_to/

C++ Special Member Function Guidelines
--------------------------------------

https://foonathan.net/special-member
https://www.reddit.com/r/cpp/comments/avbscv/c_special_member_function_guidelines/

Template meta-programming: Some testing and debugging tricks
------------------------------------------------------------

https://cukic.co/2019/02/19/tmp-testing-and-debugging-templates/

span: the best span
-------------------

https://brevzin.github.io/c++/2018/12/03/span-best-span/
https://www.reddit.com/r/cpp/comments/a3c1yd/span_the_best_span/

How to optimize C and C++ code in 2018
--------------------------------------

https://medium.com/@aka.rider/how-to-optimize-c-and-c-code-in-2018-bd4f90a72c2b

Makefiles, Best Practices
-------------------------

https://danyspin97.org/blog/makefiles-best-practices/

Behavior Trees
--------------

https://github.com/BehaviorTree/BehaviorTree.CPP/

Cross-platform (C99/C++11) process library
------------------------------------------

https://github.com/DaanDeMeyer/reproc

Do CPP users want/need a cross platform framework for plugin management?
------------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/9c9kqz/do_cpp_users_wantneed_a_cross_platform_framework/
https://doc.qt.io/qt-5/plugins-howto.html
https://www.boost.org/doc/libs/1_70_0/doc/html/boost_dll.html

A new take on polymorphism in C++
---------------------------------

https://github.com/iboB/dynamix

C++ Coroutines: Understanding the promise type
----------------------------------------------

https://lewissbaker.github.io/2018/09/05/understanding-the-promise-type

C++ Coroutines: Understanding operator co_await
-----------------------------------------------

https://lewissbaker.github.io/2017/11/17/understanding-operator-co-await

Coroutine Theory
----------------

https://lewissbaker.github.io/2017/09/25/coroutine-theory

Shared Static Variable for All Template Class Instances
-------------------------------------------------------

https://hackernoon.com/shared-static-variable-for-all-template-class-instances-eaed385f332b

C++ Telltales Series
--------------------

https://hackernoon.com/c-telltales-series-3a8c74a31629

Reflection in C++, the way of EnTT
----------------------------------

https://www.reddit.com/r/cpp/comments/9gljxi/reflection_in_c_the_way_of_entt/
https://github.com/skypjack/entt

Modern Qt Development: The Top 10 Tools You Should Be Using
-----------------------------------------------------------

https://blog.qt.io/blog/2018/10/12/modern-qt-development-top-10-tools-using/
https://www.reddit.com/r/cpp/comments/9njw5n/is_there_an_easytouse_gui_library/

Real-life production functional style code in C++
-------------------------------------------------

https://www.reddit.com/r/cpp/comments/9ohsc0/reallife_production_functional_style_code_in_c/

A Great Old-Timey Game-Programming Hack
---------------------------------------

http://blog.moertel.com/posts/2013-12-14-great-old-timey-game-programming-hack.html
https://www.reddit.com/r/programming/comments/1t05uy/a_great_oldtimey_gameprogramming_hack/
https://news.ycombinator.com/item?id=6913467

Unaligned accesses in C/C++: what, why and solutions to do it properly
----------------------------------------------------------------------

https://blog.quarkslab.com/unaligned-accesses-in-cc-what-why-and-solutions-to-do-it-properly.html

Declarations using Concepts
---------------------------

https://brevzin.github.io/c++/2018/10/20/concepts-declarations/

Zero Overhead Deterministic Exceptions: throwing objects
--------------------------------------------------------

https://www.reddit.com/r/cpp/comments/9r1pnb/zero_overhead_deterministic_exceptions_throwing/

**fgl::signal**, a fast, multi-signature C++17 signal library (v0.1.0, proof of concept stage)
----------------------------------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/9sifhw/fglsignal_a_fast_multisignature_c17_signal/

Polymorphism: function lists versus abstract interfaces
-------------------------------------------------------

https://www.reddit.com/r/cpp/comments/9sfwml/polymorphism_function_lists_versus_abstract/

Introducing Conduit for C++: Lazy Sequences Using the Coroutine TS
------------------------------------------------------------------

https://medium.com/@buckaroo.pm/introducing-conduit-lazy-sequences-using-the-coroutine-ts-b7e87dd85fcf

Single file utilities for C++
-----------------------------

https://github.com/acdemiralp/acd

Introduction to High-Performance Scientific Computing
-----------------------------------------------------

http://pages.tacc.utexas.edu/~eijkhout/istc/istc.html

reproc 2.0.0 released!
----------------------

https://www.reddit.com/r/cpp/comments/9yxlge/reproc_200_released/

OutOfLine – A Memory-Locality Pattern for High Performance C++
--------------------------------------------------------------

https://blog.headlandstech.com/2018/08/15/outofline-a-memory-locality-pattern-for-high-performance-c/
https://www.reddit.com/r/cpp/comments/984b3c/outofline_a_memorylocality_pattern_for_high/

Async Result Type for Coroutine TS
----------------------------------

https://github.com/jamboree/art

CMake it modern using C++ and Qt
--------------------------------

https://www.cleanqt.io/blog/cmake-it-modern-using-c%2B%2B-and-qt,-part-1

Mathematics behind Comparison #1: Equality and Equivalence Relations
--------------------------------------------------------------------

https://foonathan.net/blog/2018/06/20/equivalence-relations.html

**std::string_view**: The Duct Tape of String Types
---------------------------------------------------

https://devblogs.microsoft.com/cppblog/stdstring_view-the-duct-tape-of-string-types/
https://www.reddit.com/r/cpp/comments/99b5mb/stdstring_view_the_duct_tape_of_string_types/

The Knightmare of Initialization in C++
---------------------------------------

https://quuxplusone.github.io/blog/2019/02/18/knightmare-of-initialization/

What is unified function call syntax anyway?
--------------------------------------------

* https://brevzin.github.io/c++/2019/04/13/ufcs-history/
* https://www.reddit.com/r/cpp/comments/bdflpx/what_is_unified_function_call_syntax_anyway/

Here’s my number; call me, maybe. Callbacks in a multithreaded world - Anthony Williams [ACCU 2019]
---------------------------------------------------------------------------------------------------

https://www.youtube.com/watch?v=7hkqG8i0QaU

Ranges for distributed and asynchronous systems - Ivan Čukić [ACCU 2019]
------------------------------------------------------------------------

https://www.youtube.com/watch?v=eelpmWo2fuU

uvw (header-only libuv wrapper in modern C++)
---------------------------------------------

Code: https://github.com/skypjack/uvw (C++14, MIT)

Reddit: https://www.reddit.com/r/cpp/comments/b3wkbf/exhaustive_and_composable_error_handling_in_c/

Getting in trouble with mixed comparisons
-----------------------------------------

https://brevzin.github.io/c++/2018/12/09/mixed-comparisons/

**strong_typedef** - Create distinct types for distinct purposes
----------------------------------------------------------------

Article by Anthony Williams

https://www.justsoftwaresolutions.co.uk/cplusplus/strong_typedef.html

https://github.com/anthonywilliams/strong_typedef ()

.. code:: c++

  using transaction_id =
    jss::strong_typedef<struct transaction_tag, std::string>;

  bool is_a_foo(transaction_id id)
  {
    auto &s = id.underlying_value();
    return s.find("foo") != s.end();
  }

Introducing the Rule of DesDeMovA
---------------------------------

Blog post by Peter Sommerlad

https://blog.safecpp.com

https://accu.org/content/conf2014/Howard_Hinnant_Accu_2014.pdf

Rule of Zero:

    Code that you do not write cannot be wrong.

A closer look at **bake**: a tool that makes building C/C++ code effortless
---------------------------------------------------------------------------

https://medium.com/@cortoproject/a-closer-look-at-bake-a-tool-that-makes-building-c-c-code-effortless-b2e0409fad8f

* https://www.reddit.com/r/C_Programming/comments/a85f6w/meet_bake_a_new_build_system_package_manager_for/
* https://www.reddit.com/r/cpp/comments/a8d7ny/meet_bake_a_new_build_system_package_manager_for/
* https://news.ycombinator.com/item?id=18787777

https://github.com/SanderMertens/bake (GPLv3)

    A cargo-like buildsystem and package manager for C/C++

Magic.

Use constexpr for faster, smaller, and safer code
-------------------------------------------------

https://blog.trailofbits.com/2019/06/27/use-constexpr-for-faster-smaller-and-safer-code/

https://www.reddit.com/r/cpp/comments/c646ng/use_constexpr_for_faster_smaller_and_safer_code/

https://github.com/trailofbits/constexpr-everything (Apache 2.0)

How do you get the benefits of Rust in C++?
-------------------------------------------

https://www.reddit.com/r/cpp/comments/c6gtd4/how_do_you_get_the_benefits_of_rust_in_c/

How do C++ developers manage dependencies
-----------------------------------------

https://www.reddit.com/r/cpp/comments/c6l3eg/how_do_c_developers_manage_dependencies/

  Through much pain and anguish.

Just started learning C++ coming from Python
--------------------------------------------

https://www.reddit.com/r/cpp/comments/c6vnb3/just_started_learning_c_coming_from_python_and/

  The new GCC compiler with colour highlighting is a little bit better at pointing out errors. It's generally quite
  helpful for pure C/C++ until you make an error with the standard library and you get 200 lines about std::
  whatever<random characters>

  In C++ a trick I always use when the error message is massive is to just focus on the first error.

Scott Meyers' TD trick
----------------------

https://www.reddit.com/r/cpp/comments/c6vnb3/just_started_learning_c_coming_from_python_and/eshq8vb?utm_source=share&utm_medium=web2x

.. code:: c++

  template <typename T> struct TD; // no definition

Now you write something like ``TD<decltype(thing)>`` and the error message tells you the type of thing (as deduced by
``decltype``, of course, but in this case that's probably what you want).

Why std::expected is not in the standard yet? Is it bad practice?
-----------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/c75ipk/why_stdexpected_is_not_in_the_standard_yet_is_it/

* ``std::expected`` https://github.com/TartanLlama/expected
* Boost Outcome https://www.boost.org/doc/libs/1_70_0/libs/outcome/doc/html/index.html
* Outcome without Boost https://ned14.github.io/outcome/
* Leaf https://github.com/zajo/leaf

Go-like error handling in C++
-----------------------------

https://github.com/hellozee/errors

https://www.reddit.com/r/cpp/comments/c7il5n/an_idiots_attempt_to_do_a_go_like_error_handling/

  It looks like you invented something similar to ``std::expected``.

Simplify Your Code With Rocket Science: C++20’s Spaceship Operator
------------------------------------------------------------------

https://devblogs.microsoft.com/cppblog/simplify-your-code-with-rocket-science-c20s-spaceship-operator/

https://www.reddit.com/r/cpp/comments/c68457/simplify_your_code_with_rocket_science_c20s/

Better Ways to Test with **doctest** – the Fastest C++ Unit Testing Framework
-----------------------------------------------------------------------------

https://blog.jetbrains.com/rscpp/better-ways-testing-with-doctest/

The Best Book to Read as a Developer
------------------------------------

https://dev.to/taillogs/the-best-book-to-read-as-a-developer-1h4m

https://www.reddit.com/r/programming/comments/c8aaov/the_best_book_to_read_as_a_developer/

* Inside the Machine by Jon Stokes http://joe90.yolasite.com/resources/InsidetheMachine.pdf
* The Pragmatic Programmer
* "Working Effectively with Legacy Code" by Michael Feathers
* Charles Petzold's Code https://www.goodreads.com/book/show/44882.Code
* Tao of Programming http://canonical.org/~kragen/tao-of-programming.html
* Game Engine Architecture https://www.amazon.com/Game-Engine-Architecture-Jason-Gregory/dp/1568814135

Splitting a string in C++
-------------------------

https://medium.com/@bkey76/splitting-a-string-in-c-23e2547e6451

* C++ String Toolkit Library (MIT) http://www.partow.net/programming/strtk/index.html
