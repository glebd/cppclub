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
struct to_string_t {
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

## Raymond Chen on structured bindings

* [Structured binding may be the new hotness, but we’ll always have `std::tie`](https://devblogs.microsoft.com/oldnewthing/20200925-00/?p=104297)
  * [Reddit](https://www.reddit.com/r/cpp/comments/izr5pf/structured_binding_may_be_the_new_hotness_but/)
* [How to add C++ structured binding support to your own types](https://devblogs.microsoft.com/oldnewthing/20201015-00/?p=104369)
  * [Reddit](https://www.reddit.com/r/cpp/comments/jbwkiy/how_to_add_c_structured_binding_support_to_your/)

## dont_deduce<T>

* [artificial::mind](https://artificial-mind.net/blog/2020/09/26/dont-deduce)
  * [Reddit](https://www.reddit.com/r/cpp/comments/j0pgxh/controlling_template_argument_deduction_via_dont/)

### C++11

```cpp
template <class T> struct foo_t { using type = T; };
template <class T> using foo = typename foo_t<T>::type;
```

### C++20

```cpp
template <typename T>
auto operator+(
    vec3<T> const& a,
    std::convertible_to<T> auto const& b
) -> vec3<T>;
```

## Calendar and Time-Zones in C++20: Time of Day

[Rainer Grimm](https://www.modernescpp.com/index.php/calendar-and-time-zone-in-c-20)

## FTL - A functional template library for containers processing in C++

* [GitHub](https://github.com/ftlorg/ftl)
* [Reddit](https://www.reddit.com/r/cpp/comments/jor2hd/ftl_a_functional_template_library_for_containers/)

FTL is a C++17-based library that provides a more convenient API for collections processing. The API is heavily inspired by the Rust programming language.

```cpp
const auto totalVolume = cityTrees.iter()
               .filter([](const auto &tree) { return tree.kind == Tree::Oak && tree.diameter > 25; })
               .map([](const auto &tree) { return tree.volume(); })
               .sum();
```
