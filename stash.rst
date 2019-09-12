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

AnyDuck : A Value Type Erased Type
----------------------------------

Steve Downey: https://www.sdowney.org/2019/07/anyduck-a-value-type-erased-type/

Dropbox abandons C++, uses Swift, Kotlin, JavaScript and Electron instead
=========================================================================

* `Eyal Guthmann (Dropbox): The (not so) hidden cost of sharing code between iOS and Android
  <https://blogs.dropbox.com/tech/2019/08/the-not-so-hidden-cost-of-sharing-code-between-ios-and-android/>`_

    It’s possible we could have done a better job at leveraging open source C++ libraries, but the
    open source culture in the C++ development community was (is still?) not as strong as it is in
    the mobile development community <...>

* `Reddit <https://www.reddit.com/r/cpp/comments/cqft4t/dropbox_replaces_c_with_platformspecific_languages/>`_
* `HackerNews <https://news.ycombinator.com/item?id=20695806>`_

    It seems like the real issue was that Dropbox lost all of their senior C++ engineers.

* `The Register: Dropbox would rather write code twice than try to make C++ work on both iOS and
  Android <https://www.theregister.co.uk/2019/08/16/dropbox_gives_up_on_sharing_c_code_between_ios_and_android/>`_
  * `Reddit <https://www.reddit.com/r/programming/comments/crunfh/dropbox_would_rather_write_code_twice_than_try_to/>`_

Dropbox abandons C++, uses Swift, Kotlin, JavaScript and Electron instead
=========================================================================

Previously
----------

* `Djinni <https://github.com/dropbox/djinni>`_
* `CppCon 2014: Alex Allain & Andrew Twyman "Practical Cross-Platform Mobile C++ Development
  <https://www.youtube.com/watch?v=ZcBtF-JWJhM>`_
* `CppCon 2017: Stephen Spann “Cross-Platform Apps with Dropbox’s Djinni...”
  <https://www.youtube.com/watch?v=ssqhz_1pPI4>`_

Unified function call
=====================

Barry Revzin
------------

* `What is unified function call syntax anyway? <https://brevzin.github.io/c++/2019/04/13/ufcs-history/>`_
  * `Reddit <https://www.reddit.com/r/cpp/comments/bdflpx/what_is_unified_function_call_syntax_anyway/>`_
* `UFCS Customization and Extension <https://brevzin.github.io/c++/2019/08/22/ufcs-custom-extension/>`_
  * `Reddit <https://www.reddit.com/r/cpp/comments/ctykwd/ufcs_customization_and_extension/>`_
  * `P1282R0 Ceci N’est Pas Une Pipe: Adding a workflow operator to C++ <http://wg21.link/p1282>`_

Unified function call
=====================

Bjarne Stroustrup
-----------------

`A bit of background for the unified call proposal
<https://isocpp.org/blog/2016/02/a-bit-of-background-for-the-unified-call-proposal>`_

  Based on real input from code and users, I reluctantly agreed that for compatibility reasons,
  x.f(y) and f(x,y) could not mean exactly the same. The only feasible way forward was to do a
  traditional lookup based on the syntax used, and then try the other syntax if the first one
  failed. Stability – backwards compatibility – is an important feature, overruling my desire for
  perfection.

`P0131 Unified call syntax concerns
<http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2015/p0131r0.pdf>`_

Approval tests (1/2)
====================

Also known as **Golden Master Tests** or **Snapshot Testing** (locking down current behaviour)

* CppOnSea 2019 - Clare Macrae - Quickly testing legacy code https://youtu.be/dtm8V3TIB6k
  * Slides https://slideshare.net/ClareMacrae
  * CppCast with Clare Macrae https://cppcast.com/clare-macrae/
    * r/cpp https://www.reddit.com/r/cpp/comments/ckzc11/cppcast_approval_tests_with_clare_macrae/
* Code https://github.com/approvals/ApprovalTests.cpp (Apache 2.0)
* Approval Tests Library - Capturing Human Intelligence [available for Java, C#, VB.Net, PHP, Ruby, Node.JS and Python]
  https://approvaltests.com/ by Llevelyn Falco
  * Supports Catch, Catch 2, Google Test, `Okra <https://github.com/JayBazuzi/Okra>`_
* Mutation tests: sabotage the code
  * Mutate++ https://github.com/nlohmann/mutate_cpp

Approval tests (2/2)
====================

Books
-----

* Modern C++ Programming with Test-Driven Development, by Jeff Langr
  [`Safari Books Online <https://learning.oreilly.com/library/view/modern-c-programming/9781941222423/>`_]
* Your Code as a Crime Scene, by Adam Tornhill
  [`Safari Books Online <https://learning.oreilly.com/library/view/your-code-as/9781680500813/>`_]
* Software Design X-Rays, by Adam Tornhill
  [`Safari Books Online <https://learning.oreilly.com/library/view/software-design-x-rays/9781680505795/>`_]

Tools
-----

* OpenCoverage https://github.com/OpenCppCoverage
* BullseyeCoverage https://www.bullseye.com

A new SQLite C++ wrapper
========================

https://blog.trailofbits.com/2019/08/26/wrappers-delight/

https://www.reddit.com/r/cpp/comments/cxxk4b/a_new_c_sqlite_wrapper/

The Reddit thread also includes a heated discussion on how to handle errors and if exceptions are a
good thing (eyeroll).

**strong_typedef** - Create distinct types for distinct purposes
================================================================

Article by Anthony Williams

https://www.justsoftwaresolutions.co.uk/cplusplus/strong_typedef.html

https://github.com/anthonywilliams/strong_typedef

.. code:: c++

  using transaction_id =
    jss::strong_typedef<struct transaction_tag, std::string>;

  bool is_a_foo(transaction_id id)
  {
    auto &s = id.underlying_value();
    return s.find("foo") != s.end();
  }

Elements C++ GUI library
========================

https://www.cycfi.com/2019/07/photon-micro-gui/

* `Reddit <https://www.reddit.com/r/cpp/comments/ccq9pn/elemental_c_gui_library/>`_

C++ libraries for data visualization
====================================

* VTK https://vtk.org/
* ROOT https://root.cern.ch/
* matplotlib-cpp https://github.com/lava/matplotlib-cpp
  * matplotlib (Python) https://matplotlib.org/
* QCustomPlot (QT, GPL/commercial) https://www.qcustomplot.com/

CppCast - CMake and VTK with Robert Maynard
===========================================

http://cppcast.com/2019/07/robert-maynard/

* `Reddit <https://www.reddit.com/r/cpp/comments/c9bpxb/cppcast_cmake_and_vtk_with_robert_maynard/>`_

CMake line by line - creating a header-only library
===================================================

http://dominikberner.ch/cmake-interface-lib/

* `Reddit <https://www.reddit.com/r/cpp/comments/c8ty2h/a_line_by_line_explanation_how_to_create_a/>`_

https://github.com/bernedom/SI

Professional CMake: A Practical Guide, 4th ed., CMake 3.15 https://crascit.com/professional-cmake/ $30

Agner Vector Class Library V2
=============================

This is a C++17 class library for using the Single Instruction Multiple Data (SIMD) instructions in
modern microprocessors.

https://www.agner.org/optimize/blog/read.php?i=1013

https://github.com/vectorclass/version2 (Apache 2.0)

Manual https://github.com/vectorclass/manual/blob/master/vcl_manual.pdf

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

Clang Build Analyzer
====================

https://github.com/aras-p/ClangBuildAnalyzer

Machine Learning with CPP
=========================

https://www.reddit.com/r/cpp/comments/cjrrwm/machine_learning_with_cpp/

* PyTorch https://pytorch.org/features -- has a pure C++ front end https://pytorch.org/cppdocs/
* TensorFlow for C++ https://www.tensorflow.org/api_docs/cc
* Shogun https://www.shogun.ml/

The sad history of Unicode printf-style format specifiers in Visual C++
=======================================================================

https://devblogs.microsoft.com/oldnewthing/20190830-00/?p=102823

https://www.reddit.com/r/cpp/comments/cxi2xy/the_sad_history_of_unicode_printfstyle_format/

Twitter
=======

.. image:: img/tvaneerd-try-catch-opt.png
   :width: 90%

Twitter: Generic cup
====================

.. image:: img/generic-cup.png
   :width: 70%

Twitter: Electronics
====================

.. image:: img/electronics.png
