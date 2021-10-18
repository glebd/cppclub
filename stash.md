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

## Bitpacker

[GitHub](https://github.com/CrustyAuklet/bitpacker) (Header only, Boost license, C++14/C++17/C++20)

A library to do type-safe and low-boilerplate bit level serialization, binary-compatible with Python [bitstruct](https://pypi.org/project/bitstruct/) module. This is useful for embedded projects where bit-level encoding is needed so it's not possible to use other serialization libraries like [FlatBuffers](https://google.github.io/flatbuffers/), [ProtoBuffers](https://developers.google.com/protocol-buffers), or [Cereal](https://uscilab.github.io/cereal/).

Note that the library doesn't currently support floating point values. To define serialization format, the library uses a DSL, something akin to `printf`.

```cpp
std::array<uint8_t, 7> make_message_py(const MessageData& data) {
    return bitpacker::pack(BP_STRING("u12b1b1u14s24"),
                data.voltage,
                data.error,
                data.other,
                data.pressure,
                data.time);
```

[Reddit](https://www.reddit.com/r/cpp/comments/n2v0vu/bitpacker_type_safe_and_lowboilerplate_bit_level/) points to another similar library: [CAN-Helpers](https://github.com/Wetmelon/CAN-Helpers), which makes it easier to get and set [CAN](https://en.wikipedia.org/wiki/CAN_bus) signals from CAN messages.

## Use of built-in exception types vs. own types

[Redditor asks](https://www.reddit.com/r/cpp/comments/pft9f2/use_of_builtin_exception_types_vs_own_types/) if they should use standard exception types or add their own exception types. The options presented are:

- Only use `std::exception` and derived classes.
- Use `std::runtime_error` and `std::logic_error` and derived classes.
- Use more specific classes like `std::invalid_argument`, `std::domain_error`, `std::overflow_error` and derived classes.
- Don't derive own exception classes and only use the standard ones.
- Don't use standard exception classes and create own exception hierarchy.

The replies divided between:

- [Don't use exception hierarchy](https://www.reddit.com/r/cpp/comments/pft9f2/comment/hb6k7zk/?utm_source=share&utm_medium=web2x&context=3) and just derive a single exception class from the standard one.
- Whatever you do, [don't use `std::logic_error`](https://www.reddit.com/r/cpp/comments/pft9f2/comment/hb6p3bu/?utm_source=share&utm_medium=web2x&context=3), as it indicates an unrecoverable bug in the program that can only lead to calling `std::terminate`. (Related: contracts can't come soon enough.)
- We should [prefer wide to deep exception hierarchies](https://www.reddit.com/r/cpp/comments/pft9f2/comment/hb733gs/?utm_source=share&utm_medium=web2x&context=3), and if you need to have additional data in an exception, you can use [Boost.Exception](https://www.boost.org/doc/libs/1_77_0/libs/exception/doc/boost-exception.html) (Interestingly, the latest advice from Boost is to use [Boost.LEAF](https://www.boost.org/doc/libs/1_77_0/libs/leaf/doc/html/index.html) for error handling, exceptions or not.)

Do you use `std::logic_error` in your code?
