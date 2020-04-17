# Stash

## Video: Secure Programming Practices in C++ - NDC Security 2018

[YouTube](https://www.youtube.com/watch?v=Jh0G_A7iRac)

## Video: C++ Performance and Optimisation - NDC Techtown 2017

[YouTube](https://www.youtube.com/watch?v=eICYHA-eyXM)

## Video: Concurrent Programming in C++ - NDC Techtown 2017

[YouTube](https://www.youtube.com/watch?v=O7gUNNYjmsM)

## Video: CppCon 2016: "C++14 Reflections Without Macros, Markup nor External Tooling"

[YouTube](https://www.youtube.com/watch?v=abdeAew3gmQ)

## How to Adopt Modern C++17 into Your C++ Code, by Herb Sutter

* [YouTube](https://www.youtube.com/watch?v=UsrHQAzSXkA)

## Type Erasure by Andrzej

* [Part 1](https://akrzemi1.wordpress.com/2013/11/18/type-erasure-part-i/)
* [Part 2](https://akrzemi1.wordpress.com/2013/12/06/type-erasure-part-ii/)
* [Part 3](https://akrzemi1.wordpress.com/2013/12/11/type-erasure-part-iii/)
* [Part 4](https://akrzemi1.wordpress.com/2014/01/13/type-erasure-part-iv/)

## Type Erasure with Merged Concepts

* [Post by Andreas Herrmann](https://aherrmann.github.io/programming/2014/10/19/type-erasure-with-merged-concepts/)

## On the Tension Between Object-Oriented and Generic Programming in C++, and What Type Erasure Can Do About It

* [Article by Thomas Becker](https://www.artima.com/cppsource/type_erasure.html)

## Using metaprogramming for PIMPL idiom

* [Reddit](https://www.reddit.com/r/cpp/comments/7971ws/using_metaprogramming_for_pimpl_idiom/)

## Your own type predicate

* [Part 1](https://akrzemi1.wordpress.com/2017/12/02/your-own-type-predicate/)
* [Part 2](https://akrzemi1.wordpress.com/2017/12/20/a-friendly-type-predicate/)

## Tick: Trait introspection and concept creator for C++11

* [GitHub](https://github.com/pfultz2/Tick)

## Converting enum classes to strings and back in C++

* [Article](https://sheep.horse/2018/5/converting_enum_classes_to_strings_and_back_in_c++.html)
* [Reddit](https://www.reddit.com/r/cpp/comments/8hwk91/converting_enum_classes_to_strings_and_back_in_c/)

## Rvalues redefined

* [Post](https://akrzemi1.wordpress.com/2018/05/16/rvalues-redefined/)

## eventpp -- C++ library for event dispatcher and callback list

* [GitHub](https://github.com/wqking/eventpp)

## Multifunction: Generalization of `std::function` for any number of signatures

* [Code](https://github.com/fgoujeon/multifunction)

## How to Use Tag Dispatching In Your Code Effectively

* [Post](http://www.fluentcpp.com/2018/04/27/tag-dispatching/)

## Embracing Algorithms, by Dave Abrahams (WWDC2018)

* [Video](https://developer.apple.com/videos/play/wwdc2018/223/)
* [Reddit](https://www.reddit.com/r/cpp/comments/8pqtr1/dave_abrahams_on_embracing_algorithms_at_wwdc_2018/)

> I guess most of you know who Dave Abrahams is and what he has done in the C++ community. He switched gears a little and is now working at Apple focusing mostly on the development of the Swift language and its library. However, yesterday he gave an excellent talk at their Developer Conference entitled Embracing Algorithms, which IMHO is general enough to be of interest for C++ developers as well. The link has a video of that 40 minutes long talk as well as the slides.

## Matt Godbolt (2017-06-27) - Memory and Caches

* [Video](https://www.youtube.com/watch?v=vDns3Um39l0)

## Florent Castelli: Introduction to CMake

[Video](https://www.youtube.com/watch?v=jt3meXdP-QI)

## A Universal Async Abstraction for C++, by Corentin Jabot

* [Part 1](https://cor3ntin.github.io/posts/executors/)
* [Part 2](https://cor3ntin.github.io/posts/iouring/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/ewr18m/a_universal_io_abstraction_for_c/)

## A hidden gem: `inner_product` (1/2)

* [Article](https://marcoarena.wordpress.com/2017/11/14/a-hidden-gem-inner_product/)

## A hidden gem: `inner_product` (2/2)

![Tweet](img/hoekstra-inner_product.png){width=50%}

## Structured Exceptions (Win32) and C++

* [Raymond Chen: How can I handle both structured exceptions and C++ exceptions potentially coming from the same source?](https://devblogs.microsoft.com/oldnewthing/20200116-00/?p=103333)
  * [Reddit](https://www.reddit.com/r/cpp/comments/epwpx3/how_can_i_handle_both_structured_exceptions_and_c/)
* [Raymond Chen: Can I throw a C++ exception from a structured exception?](https://devblogs.microsoft.com/oldnewthing/?p=96706)

## How to Pass Class Member Functions to STL Algorithms

* [Article by Jonathan Boccara](https://www.fluentcpp.com/2020/03/06/how-to-pass-class-member-functions-to-stl-algorithms/)
* [Reddit](https://www.reddit.com/r/cpp/comments/febn53/fluent_c_how_to_pass_class_member_functions_to/)

[STL writes](https://www.reddit.com/r/cpp/comments/febn53/fluent_c_how_to_pass_class_member_functions_to/fjn009x?utm_source=share&utm_medium=web2x):

> `mem_fn` is less typing, but lambdas are higher performance (MSVC’s optimizer can’t see through `mem_fn`’s data member) and can handle overloaded/templated member functions much more easily.

## Parameter passing, by Raymond Chen, Microsoft

* [If you plan on keeping the parameter anyway, then there’s no need to have separate `T const&` and `T&&` overloads](https://devblogs.microsoft.com/oldnewthing/20200219-00/?p=103452)
* [If you’re not keeping the parameter, then you still want to have separate `T const&` and `T&&` overloads](https://devblogs.microsoft.com/oldnewthing/20200220-00/?p=103463)
* [Reddit](https://www.reddit.com/r/cpp/comments/f73g4a/if_youre_not_keeping_the_parameter_then_you_still/)

## Modern std::byte stream IO for C++

* [Reddit](https://www.reddit.com/r/cpp/comments/fe72kp/modern_stdbyte_stream_io_for_c/)
* [Paper PDF](https://github.com/Lyberta/cpp-io/raw/master/generated/Paper.pdf)
* [Paper GitHub](https://github.com/Lyberta/cpp-io)
* [Reference implementation](https://github.com/Lyberta/cpp-io-impl)

## High performance SQLite, PostgreSQL, MySQL sync & async drivers

* [Lithium](https://github.com/matt-42/lithium/tree/master/libraries/sql)
* [Reddit](https://www.reddit.com/r/cpp/comments/fn31cp/high_performance_sqlite_postgresql_mysql_sync/)

## Format specifiers for C++ in the Visual Studio debugger

* [Microsoft](https://docs.microsoft.com/en-us/visualstudio/debugger/format-specifiers-in-cpp?view=vs-2019)
