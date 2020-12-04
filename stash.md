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
  .filter([](c onst auto &tree) { return tree.kind == Tree::Oak && tree.diameter > 25; })
  .map([](const auto &tree) { return tree.volume(); })
  .sum();
```

## Compiling C/C++ on Apple M1

* [Boris Kolpackov](https://build2.org/blog/apple-m1-compilation.xhtml)
  * [Reddit](https://www.reddit.com/r/cpp/comments/k4l03y/compiling_cc_on_apple_m1/)

## A Small Open Source Game In C++

* [Preshing](https://preshing.com/20201126/a-small-open-source-game-in-cpp/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/k1fcus/a_small_open_source_game_in_c/)
  * [GitHub](https://github.com/arc80)

That tongue animation :-)

## Linux developer going Windows

* [Reddit](https://www.reddit.com/r/cpp/comments/k1wvdf/linux_developer_going_windows/)

## BinOpt — A Library for Self-guided Runtime Binary Optimization

* [GitHub](https://github.com/aengelke/binopt) (LGPLv2.1+)

## Easily currying functions in C++

* [Reddit](https://www.reddit.com/r/cpp/comments/k32fx4/easily_currying_functions_in_c/)

```cpp
// Existing, non-curried function
auto f(int a, int b, int c) noexcept -> int {
    return a * b * c;
}

auto g = fn::curry(f); // g is th e curried form of f

int main() {
    return g(2)(5)(10); // returns 100
}
```

## Cheerp 2.6 rc1: C++ compiled for the Web

* [Carlo Piovesan](https://medium.com/leaningtech/cheerp-2-6-rc1-the-cpp-compiler-for-the-web-8873be6601b1)

## Interactive C++ with Cling

* [LLVM Blog](https://blog.llvm.org/posts/2020-11-17-interactive-cpp-with-cling/)

## C++ executors

* [Reddit](https://www.reddit.com/r/cpp/comments/jw1kyr/c_executors/)
  * [CppCon 2019: Eric Niebler, David Hollman “A Unifying Abstraction for Async in C++”](https://www.youtube.com/watch?v=tF-Nz4aRWAM&feature=youtu.be)
  * [A Unified Executors Proposal for C++ | P0443R14](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2020/p0443r14.html)
  * [libunifex (Facebook)](https://github.com/facebookexperimental/libunifex)

## Conditionally Trivial Special Member Functions

* [Sy Brand](https://devblogs.microsoft.com/cppblog/conditionally-trivial-special-member-functions/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/jxt3i3/conditionally_trivial_special_member_functions/)

## repr: return printable value

* [GitHub](https://github.com/p-ranav/repr)
  * [Reddit](https://www.reddit.com/r/cpp/comments/jzgzoz/repr_for_c_return_printable_string_representation/)
