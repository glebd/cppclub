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

## The problem with C

* [Corentin Jabot](https://cor3ntin.github.io/posts/c/)
  * [Reddit](https://np.reddit.com/r/cpp/comments/ik3o10/the_problem_with_c/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/k8pxo1/a_very_nice_summary_of_the_philosophical_and/)

## Turbo Vision

A modern port of Turbo Vision 2.0, the classical framework for text-based user interfaces. Now cross-platform and with Unicode support.

* [GitHub](https://github.com/magiblot/tvision)
  * [Reddit](https://www.reddit.com/r/commandline/comments/kcn4xw/a_modern_cross_platform_port_of_borland_turbo/)

![Screenshot](https://user-images.githubusercontent.com/20713561/81506401-4fffdd80-92f6-11ea-8826-ee42612eb82a.png)

## Best framework to create HTTP server

* [Reddit](https://www.reddit.com/r/cpp/comments/kgdcz5/best_framework_to_create_http_server/)

## Boost 1.75

* [Release notes](https://www.boost.org/users/history/version_1_75_0.html)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kbd8pe/boost_175_is_out/)

## C++ Russia 2020 Moscow

* [Playlist on YouTube](https://www.youtube.com/playlist?list=PLZN9ZGiWZoZruMY-MlkAd-nHzdP9TfLRC)

## mocxx: a versatile C++ function mocking framework based on Frida, by Guardsquare

No macros! Doesn't support mocking virtual functions yet.

* [Reddit](https://www.reddit.com/r/cpp/comments/k0atyi/mocxx_a_versatile_c_function_mocking_framework/)
  * [GitHub](A versatile C++ function mocking framework. It replaces a target function with the provided implementation, and integrates well with existing testing and mocking frameworks.) (C++17, GPL-3.0)
    * [Frida - Dynamic instrumentation toolkit for developers, reverse-engineers, and security researchers](https://github.com/frida)
  * [Explanatory blog post at Guardsquare](https://tech.guardsquare.com/posts/mocxx-the-mocking-tool/)

## Compile 1 Million Lines Of C++ In ~2 Minutes With A 16 Core Ryzen 9 5950x

* [Embarcadero](https://blogs.embarcadero.com/compile-1-million-lines-of-c-in-2-minutes-with-a-16-core-ryzen-9-5950x/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kigy7l/compile_1_million_lines_of_c_in_2_minutes_with_a/)

> I love how a shitty, bug-ridden development environment that costs US$1359 for the most basic edition still requires you to buy a separate US$139 extension to enable parallel builds, a standard feature available on practically every other closed and open source compiler and build system out of the box for $0 extra.

### Dev-C++

A fast, portable, simple, and free C/C++ IDE for Windows, built in Delphi

* [GitHub](https://github.com/Embarcadero/Dev-Cpp)

## Using std::list::splice to implement a LRU cache

* [Article on nextptr](https://www.nextptr.com/tutorial/ta1576645374/stdlist-splice-for-implementing-lru-cache)
* [std::list::splice](https://en.cppreference.com/w/cpp/container/list/splice)

## Reverse Engineering the source code of the BioNTech/Pfizer SARS-CoV-2 Vaccine

* [Article](https://berthub.eu/articles/posts/reverse-engineering-source-code-of-the-biontech-pfizer-vaccine/)
  * [Reddit](https://www.reddit.com/r/programming/comments/kk8pxz/this_programmer_reverse_engineered_the_pfizer/)

## Concepts appreciation thread

* [Reddit](https://www.reddit.com/r/cpp/comments/kka4o7/concepts_appreciation_thread_i_dont_have_any/)

## C++20 ISO standard published

* [ISO](https://www.iso.org/standard/79358.html)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kdrwya/c20_published_isoiec_148822020/)

## What should the state of a moved-from object be?

* [Raymond Chen](https://devblogs.microsoft.com/oldnewthing/20201218-00/?p=104558)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kfsjr3/what_should_the_state_of_a_movedfrom_object_be/)

## Reducing Memory Consumption in Visual Assist

* [Blog post](https://blog.wholetomato.com/2020/12/17/technical-deep-dive-reducing-memory-consumption-in-visual-assist-build-2393/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kgpw63/technical_deep_dive_reducing_memory_consumption/)

## Why Another C++ (And More™) Conference?

* [JeanHeyd Meneide](https://thephd.github.io/why-another-c++-c-rust-zig-systems-programming-conference)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kgy75o/why_another_c_and_more_conference/)

### CoSy - Computing Systems Technology Conference

* [Website](https://soasis.org/cosy/)

CoSy (pronounced like "cozy") is a Systems Programming Conference open to developers from all walks of life, both professional and non-professional, who want to engage other like-minded individuals for an intimate and wonderful blend of content.

* Broad scope (C++, C, Rust, Zig, FORTH, Nim, OCaml etc.)
* Double-blinded submission reviews

> Of course, it’s not always possible to double-blind everything! If someone writes a submission about how they wrote a Great Book On Large Scale Software Architecture That’s Really Good And Helps You Modularize And Structure Large Software And The Sequel Is Out You Should Buy It Now, they have vastly reduced the pool of people they could be talking about.

* Escaping the Crushing Despair (case in point: CppLang Slack)
  * [The... Community? on YouTube](https://youtu.be/vaLKm9FE8oo)

## is::Engine - C++ SFML game engine

* [Reddit announcement](https://www.reddit.com/r/cpp/comments/kgem27/isengine_32_c_sfml_game_engine_available_with/?ref=share&ref_source=link)

## Writing a custom iterator in modern C++ (C++17)

* [Article](https://www.internalpointers.com/post/writing-custom-iterators-modern-cpp)
  * [Reddit](https://www.reddit.com/r/programming/comments/kfl04g/writing_a_custom_iterator_in_modern_c/)

## Fold expressions work inside constraints

* [Reddit](https://www.reddit.com/r/cpp/comments/kd77ee/fold_expressions_work_inside_constraints/)

```cpp
template <template <typename> class FooT, typename... T>
requires (... && Bar<FooT<T>>) struct Baz {};
```

Without fold expressions:

```cpp
template <template <typename> class FooT, typename... T>
requires([]() {
  std::array arr = std::array{Bar<FooT<T>>...};
  return std::reduce(arr.begin(), arr.end(), true, std::logical_and<bool>{});
}()) struct Baz {};
```

## Game dev C++ vs Regular C++

* [Reddit](https://www.reddit.com/r/cpp/comments/k7uwwe/game_dev_c_vs_regular_c/)

> Some companies are stuck on the 98 standard, may God have pity on their souls, and others have weird requirements to avoid things because a manager had an issue with them 10 years ago. [=>](https://www.reddit.com/r/cpp/comments/k7uwwe/game_dev_c_vs_regular_c/geuao3j/)

## Stroustrup on The Continuing Evolution of C++

* [Video on IDA](https://ida.dk/viden-og-netvaerk/videoer-fra-ida/stroustrup-on-the-continuing-evolution-of-cplusplus)
  * [Reddit](https://www.reddit.com/r/cpp/comments/jxmuzk/stroustrup_on_the_continuing_evolution_of_c/)

## Flap Hero Code Review

* [Preshing](https://preshing.com/20201210/flap-hero-code-review/)
  * [FlapHero on GitHub](https://github.com/arc80/FlapHero)

## Graphics Library for simple 2D games

* [Reddit](https://www.reddit.com/r/cpp/comments/klo7x4/graphics_library_for_simple_2d_games/)
  * [SFML](https://www.sfml-dev.org)
  * [Allegro](https://liballeg.org)
  * [SDL](https://www.libsdl.org) -- C
  * [olcPixelGameEngine](https://github.com/OneLoneCoder/olcPixelGameEngine)

## Bona - A C++20 based modern file information viewer

* [Reddit](https://www.reddit.com/r/cpp/comments/klib5n/bona_a_c20_based_modern_file_information_viewer/)

## Project from scratch in C++ (for beginners)

* [Reddit](https://www.reddit.com/r/cpp/comments/kl9w8f/project_from_scratch_in_c_for_beginners/)
  * [YouTube](https://www.youtube.com/playlist?list=PLSGsTSSx2DyM8q6gM_cUVwX_da1tTYLrq)
  * [Blog](http://www.thecppdev.wordpress.com/)

## Do you use C++ in your day job? If so, what did it take to get there?

* [Reddit](https://www.reddit.com/r/cpp/comments/kmpdlm/do_you_use_c_in_your_day_job_if_so_what_did_it/)

## Wrapping C++ for use in Swift

* [Reddit](https://www.reddit.com/r/iOSProgramming/comments/jxqv74/looking_for_good_examples_of_wrapping_c/)

## consteval-huffman

A C++20 utility for compressing string literals at compile-time to save program space. The compressed data can be decompressed at run-time through the use of a decoder that follows `std::forward_iterator`.

* [GitHub](https://github.com/tcsullivan/consteval-huffman) (C++20, Public domain)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kn1wpe/compiletime_string_compression_using_huffman/)

```cpp
auto data = "This is my string of data"_huffman;
```

## NoDiagnostic Required podcast from JetBrains

* [Twitter: @ndr_cpp](https://twitter.com/ndr_cpp)
* [YouTube: nodiagnosticrequired](https://www.youtube.com/channel/UCJZdS1wIqASD1MVrJyX8M2Q?mkt_tok=eyJpIjoiTTJNM09HUmhOR1JsWXpNdyIsInQiOiJ5eU9wWUphbzRvcWhTYStPc2huWmxlMzREaDNKRllEU2h3TEY1QlJmTDRHa1RSc0ZMNEtaMlkxU1BlN2w3Mm9GTmdcL3lvVVhiMGNlOGtcL3hCaEJIUkJxYkJISW9ZSVJkQTNsNytsRVpRbGZHZE1sRW9KUVEyZmtkbHBSdjlWaVh1In0%3D)

## Firsts in 2020 (or, A little dose of good news)

* [Herb Sutter](https://herbsutter.com/2020/12/30/firsts-in-2020-or-a-little-dose-of-good-news/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/knt1n3/firsts_in_2020_or_a_little_dose_of_good_news_herb/)

## David Friberg - Three interesting minor features of C++20

* [YouTube](https://youtube.com/watch?v=4AQulaRJGMc)
* [Slides](https://dfrib.github.io/presentations/2020cw50_Gbgcpp_MinorCpp20Features.html)

## Taskflow 3.0.0

A General-purpose Parallel and Heterogeneous Task Programming System

* [Home page](https://www.amazon.co.uk/gp/product/B08291CB6J/ref=ewc_pr_img_1?smid=A1DO4Y0KEIINI5&psc=1)
  * [GitHub](https://github.com/taskflow/taskflow) (C++17, MIT)
    * [v3.0.0](https://github.com/taskflow/taskflow/releases/tag/v3.0.0)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kos9mo/taskflow_v3_released_a_generalpurpose_parallel/)

## C++ and passing by value

* [Matt Godbolt](https://xania.org/202101/cpp-by-value-args)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kphzqt/c_and_passing_by_value/)

