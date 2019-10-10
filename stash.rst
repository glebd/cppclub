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

Here’s my number; call me, maybe. Callbacks in a multithreaded world - Anthony Williams [ACCU 2019]
---------------------------------------------------------------------------------------------------

https://www.youtube.com/watch?v=7hkqG8i0QaU

uvw (header-only libuv wrapper in modern C++)
---------------------------------------------

Code: https://github.com/skypjack/uvw (C++14, MIT)

Reddit: https://www.reddit.com/r/cpp/comments/b3wkbf/exhaustive_and_composable_error_handling_in_c/

Getting in trouble with mixed comparisons
-----------------------------------------

https://brevzin.github.io/c++/2018/12/09/mixed-comparisons/

Modules are Coming - Bryce Adelstein Lelbach
--------------------------------------------

https://www.youtube.com/watch?v=bDTm6y6fNSU

https://www.reddit.com/r/cpp/comments/cd11ep/modules_are_coming_core_c_2019_bryce_adelstein/

C++20: The small things
-----------------------

https://www.youtube.com/watch?v=AgatxxXNwBM

https://www.reddit.com/r/cpp/comments/cdj5zx/c20_the_small_things_timur_doumler/

Write tests directly in your production code
--------------------------------------------

https://www.youtube.com/watch?v=eH1CxEC29l8

https://www.reddit.com/r/cpp/comments/cd2prb/write_tests_directly_in_your_production_code/

https://github.com/onqtam/doctest/issues/252

Conor Hoekstra - C++ Algorithms in Haskell
------------------------------------------

https://youtu.be/dTO3-1C1-t0

wg21.link cheatsheet
====================

.. image:: img/wg_link_cheatsheet.png
   :width: 90%

Address Sanitizer is coming to MSVC
===================================

https://www.reddit.com/r/cpp/comments/d6k7mt/address_sanitizer_is_coming_to_msvc/

Span Lite
=========

https://github.com/martinmoene/span-lite

A C++20-like span for C++98, C++11 and later in a single-file header-only library.

mdspan
======

* Implementation https://github.com/kokkos/mdspan (BSD 3-Clause)
  * Intro https://github.com/kokkos/mdspan/wiki/A-Gentle-Introduction-to-mdspan
  * r/cpp https://www.reddit.com/r/cpp/comments/cl127i/mdspan_productionquality_reference_implementation/
* Kokkos https://github.com/kokkos/kokkos
* Multi-dimensional strided array views in Magnum
  https://blog.magnum.graphics/backstage/multidimensional-strided-array-views/
* P0009R9 **mdspan**: A Non-Owning Multidimensional Array Reference http://wg21.link/p0009r9
* CppCast with Bryce Adelstein Lelbach https://cppcast.com/bryce-lelbach-mdspan/

Enums, warnings, and default
============================

https://brevzin.github.io/c++/2019/08/01/enums-default/

https://www.reddit.com/r/cpp/comments/cubah9/enum_switch_warnings/

GCC & Clang:

.. code:: bash

    -Wswitch-enum

Machine Learning with C++
=========================

`Reddit <https://www.reddit.com/r/cpp/comments/cjrrwm/machine_learning_with_cpp/>`_

* PyTorch https://pytorch.org/features -- has a pure C++ front end https://pytorch.org/cppdocs/
* TensorFlow for C++ https://www.tensorflow.org/api_docs/cc
* Shogun https://www.shogun.ml/

The sad history of Unicode printf-style format specifiers in Visual C++
=======================================================================

https://devblogs.microsoft.com/oldnewthing/20190830-00/?p=102823

* `Reddit <https://www.reddit.com/r/cpp/comments/cxi2xy/the_sad_history_of_unicode_printfstyle_format/>`_

Introducing Magnum Python Bindings
==================================

https://blog.magnum.graphics/announcements/introducing-python-bindings/

https://github.com/pybind/pybind11

Are there any memory safety libraries for C++?
==============================================

https://www.reddit.com/r/cpp/comments/d0hguz/are_there_any_memory_safety_libraries_for_c/

https://github.com/duneroadrunner/SaferCPlusPlus/

https://github.com/deplinenoise/ig-memtrace

    MemTrace is a memory debugging tool developed internally at Insomniac Games.

https://github.com/ivmai/bdwgc

    The Boehm-Demers-Weiser conservative C/C++ Garbage Collector (libgc, bdwgc, boehm-gc) https://www.hboehm.info/gc/

AnyDuck : A Value Type Erased Type
==================================

Steve Downey: https://www.sdowney.org/2019/07/anyduck-a-value-type-erased-type/

Template meta-programming: Some testing and debugging tricks
============================================================

https://cukic.co/2019/02/19/tmp-testing-and-debugging-templates/

**using** vs. **typedef**
=========================

https://www.nextptr.com/tutorial/ta1193988140/how-cplusplus-using-or-aliasdeclaration-is-better-than-typedef

Berkeley Container Library (BCL)
================================

https://github.com/berkeley-container-library/bcl
