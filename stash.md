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

> I guess most of you know who Dave Abrahams is and what he has done in the C++ community. He
> switched gears a little and is now working at Apple focusing mostly on the development of the
> Swift language and its library. However, yesterday he gave an excellent talk at their Developer
> Conference entitled Embracing Algorithms, which IMHO is general enough to be of interest for C++
> developers as well. The link has a video of that 40 minutes long talk as well as the slides.

## Matt Godbolt (2017-06-27) - Memory and Caches

* [Video](https://www.youtube.com/watch?v=vDns3Um39l0)

## Named Parameters in C++20

[Peter Dimov](https://pdimov.github.io/blog/2020/09/07/named-parameters-in-c20/)

* [Reddit](https://www.reddit.com/r/cpp/comments/iny133/named_parameters_in_c20_peter_dimov/)

## C++ in Visual Studio Code reaches version 1.0

[Julia Reid](https://devblogs.microsoft.com/cppblog/c-in-visual-studio-code-reaches-version-1-0/)

* [Reddit](https://www.reddit.com/r/cpp/comments/ista1w/c_in_visual_studio_code_reaches_version_10_c_team/)

## C++ Talk Index

[Website](https://cpptalksindex.xyz)

* [Reddit](https://www.reddit.com/r/cpp/comments/j5s6lw/an_index_for_c_conferences/)

## The terrible **size_t**

[Reddit](https://www.reddit.com/r/cpp/comments/iu5spw/is_size_t_really_this_terrible/)

## juCi++: a lightweight, cross-platform IDE

* [GitLab](https://gitlab.com/cppit/jucipp)
* [Installation guide](https://gitlab.com/cppit/jucipp/-/blob/master/docs/install.md)

![Screenshot](https://gitlab.com/cppit/jucipp/-/raw/master/docs/images/screenshot1c.png){width=70%}

## Library: cpp-lazy

[GitHub](https://github.com/MarcDirven/cpp-lazy)

Cpp-lazy is a fast and easy lazy evaluation library for C++14/17/20.

Lazy evaluation is an evaluation strategy which holds the evaluation of an expression until its value is needed. In this library, all the iterators are lazy evaluated.

This library is not a replacement for `ranges::v3` but rather a (smaller) alternative.

## Library: Crypto3

* [Home page](https://crypto3.nil.foundation/projects/crypto3/)
* [Boost mailing list announcement](https://lists.boost.org/Archives/boost//2020/09/249672.php)
* [GitHub](https://github.com/nilfoundation/crypto3)
* [Reddit](https://www.reddit.com/r/cpp/comments/ikxgs5/nil_crypto3_conceptbased_pure_c_cryptography/)

## Library: AAA - Auxiliary Arithmetic Algorithms

* [GitHub](https://github.com/mabur/aaa) (MIT)
* [Docs](http://mabur.github.io/aaa/documentation/html/index.html)

## C#-like events in C++

[Reddit](https://www.reddit.com/r/cpp/comments/j2dfmi/clike_events_in_c/)

(Unrelated: [Variable name prefixes](https://www.reddit.com/r/cpp/comments/j2dfmi/clike_events_in_c/g75e65w/))

* [Code on Pastebin](https://pastebin.com/RjK6nLgM)
* [Signal-Slot library benchmarks](https://github.com/NoAvailableAlias/signal-slot-benchmarks/blob/master/results/benchmarks_msvc/README.md)
* [Boost.Signals2](https://www.boost.org/doc/libs/1_61_0/doc/html/signals2.html)

## Uses of immediately invoked function expressions (IIFE) in C++

* [Erik Rigtorp](https://rigtorp.se/iife/)
* [Jonathan Müller](https://foonathan.net/2020/10/iife-metaprogramming/)

## Overloading by Return Type in C++

[Philip Trettner](https://artificial-mind.net/blog/2020/10/10/return-type-overloading)

* [Reddit](https://www.reddit.com/r/cpp/comments/j94jd8/overloading_by_return_type_in_c/)

```cpp
struct to_string_t
{
    std::string_view s;

    // int  from_string(std::string_view s);
    operator int() const;
    // bool from_string(std::string_view s);
    operator bool() const;
};

int i = to_string_t{"7"};
bool b = to_string_t{"true"};
```

## The Defold game engine code style

[Article](https://defold.com/2020/05/31/The-Defold-engine-code-style/)

### Code style

* C-like C++
* No classes (_huh?_ -- _GD_)
* No exceptions
* No STL
  * Custom containers
* Data ownership tracking
* C++98

(_It's the end of 2020, by the way. -- GD_)

## A Buffers Library for C++20

[Colby Pike](https://vector-of-bool.github.io/2020/08/29/buffers-1.html)

## vcpkg: Accelerate your team development environment with binary caching and manifests

[Microsoft](https://devblogs.microsoft.com/cppblog/vcpkg-accelerate-your-team-development-environment-with-binary-caching-and-manifests/)

* [Reddit](https://www.reddit.com/r/cpp/comments/ix090v/vcpkg_accelerate_your_team_development/)

### Related

[Why is it such an abysmal pain to use libraries in C++ compared to pretty much anything else?](https://www.reddit.com/r/cpp/comments/ix9n1u/why_is_it_such_an_abysmal_pain_to_use_libraries/)
