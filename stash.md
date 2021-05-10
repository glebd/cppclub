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

## David Friberg - Three interesting minor features of C++20

* [YouTube](https://youtube.com/watch?v=4AQulaRJGMc)
* [Slides](https://dfrib.github.io/presentations/2020cw50_Gbgcpp_MinorCpp20Features.html)

## Video: Timur Doumler - How C++20 changes the way we write code - Meeting C++ 2020

* [YouTube](https://youtu.be/VK-16tpFQVI)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lo4z89/timur_doumler_how_c20_changes_the_way_we_write/?ref=share&ref_source=link)

## A tutorial and take on C++20 coroutines

* [David Mazières](https://www.scs.stanford.edu/~dm/blog/c++-coroutines.html)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lpo9qa/my_tutorial_and_take_on_c20_coroutines_david/)

## Semantics of unsigned integers

A redditor [asks](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/), what should be the semantics of unsigned integers. As it often happens, to get the right answer someone has to post a wrong answer, and the redditor Full-Spectral is [happy to oblige](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfodkm/). They write:

> I'm one of those that doesn't agree with the always use signed types thing. If you don't understand the magnitude of the values involved, using signed types isn't going to magically make everything better. I believe in modelling the things you are operating on, and if that can never be negative, then I don't see how using signed values is better unless you always check the result.

Predictably, this resulted in a good [reply](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvhdfcx/):

> The issue is not the range of values you can store in a variable, but that due to type promotion that range will also apply to all intermediate values when using arithmetic operations. This means that you need to be super careful about performing subtractions with unsigned integers, which is basically just asking for trouble.

Another redditor [writes](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfkgg5/):

> These are some valid use cases of modulo behaviour of unsigned arithmetic:
>
> * hashes
> * random numbers
> * implementing multiprecision types
> * crypto
> * emulation of hardware

Tony Van Eerd [replies](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvla83m/):

> People expect numbers to act like numbers. <...> Neither signed nor unsigned really work like numbers when you are near the boundaries, but unsigned puts a boundary at 0, which may very well be the most common number in all of programming. <...> So avoid unsigned numbers for numbers. Use signed. The committee apologises profusely for making `size_t` be unsigned.

Another redditor [reminds](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfnfas/) that

> The C++ Core Guidelines also have the "unsigned for bitwise, signed for arithmetic" rule.

And of course someone [mentions](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfguit/) Rust:

> Rust does a better job of divorcing signedness from overflow behaviour and what’s undefined behaviour, along with avoiding the implicit integer casts and promotions that make these subtleties problematic.

## Vcpkg package search

Vcpkg is a C++ package manager from Microsoft. It builds packages from source, and now offers a [search function](https://vcpkg.io/en/index.html) on its official website, which allows you to find the library you need across approximateky 1500 available recipes. The nice thing is, vcpkg is cross-platform.

There is another unofficial website, [vcpkg.info](https://vcpkg.info/), which lists even more packages (around 1600).

Good to see C++ package management getting more attention.

## Twitter

Sara Drasher @[sarah_edo](https://twitter.com/sarah_edo) [describes](https://twitter.com/sarah_edo/status/1391868594762305537) the ideal development workflow:

> Make it work\
> Make it right\
> Make it fast\
> Make it work again because you broke it making it fast\
