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

## Replacing CRTP Static Polymorphism With Concepts

* [Matthew Guidry](https://www.fluentcpp.com/2020/09/11/replacing-crtp-static-polymorphism-with-concepts/)

## David Friberg - Three interesting minor features of C++20

* [YouTube](https://youtube.com/watch?v=4AQulaRJGMc)
* [Slides](https://dfrib.github.io/presentations/2020cw50_Gbgcpp_MinorCpp20Features.html)

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

## Using `std::list::splice` to implement a LRU cache

* [Article on nextptr](https://www.nextptr.com/tutorial/ta1576645374/stdlist-splice-for-implementing-lru-cache)
* [`std::list::splice`](https://en.cppreference.com/w/cpp/container/list/splice)

## What should the state of a moved-from object be?

* [Raymond Chen](https://devblogs.microsoft.com/oldnewthing/20201218-00/?p=104558)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kfsjr3/what_should_the_state_of_a_movedfrom_object_be/)

## Reducing Memory Consumption in Visual Assist

* [Blog post](https://blog.wholetomato.com/2020/12/17/technical-deep-dive-reducing-memory-consumption-in-visual-assist-build-2393/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kgpw63/technical_deep_dive_reducing_memory_consumption/)

## `dont_deduce<T>`

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

## Writing a custom iterator in modern C++ (C++17)

* [Article](https://www.internalpointers.com/post/writing-custom-iterators-modern-cpp)
  * [Reddit](https://www.reddit.com/r/programming/comments/kfl04g/writing_a_custom_iterator_in_modern_c/)

## C++ for Swift developers

* [Sidharth Juyal](https://whackylabs.com/swift/cpp/languages/2021/01/03/cpp-for-swift-devs/)
  * [Reddit](https://www.reddit.com/r/swift/comments/kpnp1m/c_for_swift_developers/)

### Wrapping C++ for use in Swift

* [Reddit](https://www.reddit.com/r/iOSProgramming/comments/jxqv74/looking_for_good_examples_of_wrapping_c/)

## Is Zero a Butterfly?

* [Shafik Yaghmour](https://shafik.github.io/c++/2021/01/03/is_zero_a_butterfly.html)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kqhcdb/is_zero_a_butterfly/)

## `std::optional` and other useful types

* [Reddit](https://www.reddit.com/r/cpp/comments/kozrhy/what_tools_similar_to_stdoptional_should_you_be/)

## If you were allowed to make breaking changes to the C++ specification, what features would you modify/replace/remove to make the language better?

* [Reddit](https://www.reddit.com/r/cpp/comments/ksb99w/if_you_were_allowed_to_make_breaking_changes_to/)

## EnTT 3.6.0

Gaming meets modern C++ - a fast and reliable entity component system (ECS) and much more.

* [Announcement on Reddit](https://www.reddit.com/r/gamedev/comments/kttqxm/entt_v360_is_out_gaming_meets_modern_c/)
  * [GitHub](https://github.com/skypjack/entt) (C++17, MIT)

## With `std::variant`, you choose either performance or sanity

* [Reddit](https://www.reddit.com/r/cpp/comments/kst2pu/with_stdvariant_you_choose_either_performance_or/)

## MSVC build performance

* [Improving code generation time with C++ Build Insights](https://devblogs.microsoft.com/cppblog/improving-code-generation-time-with-cpp-build-insights/)
* [Faster C++ builds, simplified: a new metric for time](https://devblogs.microsoft.com/cppblog/faster-cpp-builds-simplified-a-new-metric-for-time/)
* [The Coalition Sees 27.9X Iteration Build Improvement with Visual Studio 2019](https://devblogs.microsoft.com/cppblog/the-coalition-sees-27-9x-iteration-build-improvement-with-visual-studio-2019/)
* [Faster C++ Iteration Builds](https://devblogs.microsoft.com/cppblog/faster-c-iteration-builds/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/ksuvbo/msvc_faster_c_iteration_builds/)
* [C++ Build Analyzer](https://github.com/MetanoKid/cpp-build-analyzer)
  * [C++ Build Insights SDK](https://docs.microsoft.com/en-gb/cpp/build-insights/reference/sdk/overview?view=msvc-160)

## Infix Function Calls with Boost HOF

* [Jo Boccara](https://www.fluentcpp.com/2021/01/08/infix-function-calls-with-boost-hof/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kt06b5/fluentc_infix_function_calls_with_boost_hof/)

### Before

```cpp
const bool b = isPrefixOf(prefix, text);
```

### After

```cpp
const bool b = prefix <isPrefixOf> text;
```

## Polymorphism Decision Table

* [Kilian Henneberger](https://ukilele.github.io//2020/05/11/polymorphism-decision-table.html)

## Tracy Profiler

A real time, nanosecond resolution, remote telemetry, hybrid frame and sampling profiler for games and other applications.

Tracy supports profiling CPU (C, C++11, Lua), GPU (OpenGL, Vulkan, OpenCL, Direct3D 12), memory, locks, context switches, per-frame screenshots and more.

* [GitHub](https://github.com/wolfpld/tracy)

## Latest C++: theory vs. reality

* [Reddit](https://www.reddit.com/r/cpp/comments/kva2w8/latest_c_theory_vs_reality/)
  * [Godot game engine C++ standard thread on GitHub](https://github.com/godotengine/godot/issues/9694)

## Perhaps it's time for a more opinionated dialect of C++

* [Reddit](https://www.reddit.com/r/cpp/comments/kvdprx/perhaps_it_is_time_for_an_opinionated_dialekt_of_c/)
* [Should I litter my code with (the correct) attributes for every function, or just leave it pretty?](https://www.reddit.com/r/cpp/comments/kvpab0/should_i_litter_my_code_with_the_correct/)
