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

## Variants suck. But you can get good performance with esoteric tricks. And even if you don't use them well, they'll still be faster than virtual inheritance

* [Reddit](https://www.reddit.com/r/cpp/comments/ktyxqa/variants_suck_but_you_can_get_good_performance/?ref=share&ref_source=link)

## Is Zero a Butterfly?

* [Shafik Yaghmour](https://shafik.github.io/c++/2021/01/03/is_zero_a_butterfly.html)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kqhcdb/is_zero_a_butterfly/)

## std::optional and other useful types

* [Reddit](https://www.reddit.com/r/cpp/comments/kozrhy/what_tools_similar_to_stdoptional_should_you_be/)

## EnTT 3.6.0

Gaming meets modern C++ - a fast and reliable entity component system (ECS) and much more.

* [Announcement on Reddit](https://www.reddit.com/r/gamedev/comments/kttqxm/entt_v360_is_out_gaming_meets_modern_c/)
  * [GitHub](https://github.com/skypjack/entt) (C++17, MIT)

## With std::variant, you choose either performance or sanity

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

## The most thoroughly commented linker script (probably)

* [Stargirl](https://blog.thea.codes/the-most-thoroughly-commented-linker-script/)
  * [GitHub](https://github.com/theacodes/Winterbloom_Castor_and_Pollux/blob/master/firmware/scripts/samd21g18a.ld)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kx1dbg/the_most_thoroughly_commented_linker_script/)

## How can I write a C++ class that iterates over its base classes?

* [Raymond Chen](https://devblogs.microsoft.com/oldnewthing/20210114-00/?p=104714)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kx9uli/how_can_i_write_a_c_class_that_iterates_over_its/)

## Template specialization and instantiation

* [Xiang Fan, Microsoft](https://devblogs.microsoft.com/cppblog/build-throughput-series-template-metaprogramming-fundamentals/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kx7r0h/build_throughput_series_template_metaprogramming/)

## C++ Performance Trap #1: Constant-size std::vector

* [Scott Wolchok](https://wolchok.org/posts/cxx-trap-1-constant-size-vector/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kyc6f9/c_performance_trap_1_constantsize_stdvector/)
  * [Software optimization resources, by Agner](https://www.agner.org/optimize/#manuals)

## C++ Performance Trap #2: Unnecessary std::function

* [Scott Wolchok](https://wolchok.org/posts/cxx-trap-2-std-function/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kzvjgn/c_performance_trap_2_unnecessary_stdfunction/?ref=share&ref_source=link)

## Inlining and Compiler Optimizations

* [Scott Wolchok](https://wolchok.org/posts/inlining-and-compiler-optimizations/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l3r8o4/inlining_and_compiler_optimizations/?ref=share&ref_source=link)

## The perils of the accidental C++ conversion constructor

* [Raymond Chen](https://devblogs.microsoft.com/oldnewthing/20210115-00/?p=104719)
  * [Reddit](https://www.reddit.com/r/cpp/comments/ky691b/the_perils_of_the_accidental_c_conversion/)

> No one hates C++ more than the people who love C++. [=>](https://www.reddit.com/r/cpp/comments/ky691b/the_perils_of_the_accidental_c_conversion/gjfbed4/)

## Making Win32 APIs More Accessible to More Languages

* [Microsoft](https://blogs.windows.com/windowsdeveloper/2021/01/21/making-win32-apis-more-accessible-to-more-languages/)
  * [C++/WinRT](https://github.com/microsoft/cppwinrt)

## C++ and game engines

* [Reddit](https://www.reddit.com/r/cpp/comments/l1vfz5/c_and_game_engines/)

> Hey, i started out with c++ 3 months ago and really love it. I already have some experience in unity, but i d like to use c++. Is there any engine you would recommend me to try out? I know about Unreal Engine but i cant find any good tutorials for how to use c++ with unreal engine. Is there any other option or a tutorial series or anything you could recommend me?

## Game developers, what compiler optimization setting do you use?

* [Reddit](https://www.reddit.com/r/cpp/comments/kyeid1/game_developers_what_compiler_optimization/?ref=share&ref_source=link)

## Adding elements to arrays and changing variables during compilation – imperative meta-metaprogramming in C++

* [Dugi](https://lordsoftech.com/programming/adding-elements-to-arrays-and-changing-variables-during-compilation-imperative-meta-metaprogramming-in-c/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l0pwes/adding_elements_to_arrays_and_changing_variables/?ref=share&ref_source=link)

## Anonymous types in C++

* [Jan Bielak](https://janbielak.com/index.php/2021/01/15/anonymous-types-in-c/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/ky56k7/anonymous_types_in_c/)

```cpp
constexpr auto simplify(struct_(int numerator, denominator;) ratio) -> decltype(ratio)
{
    int gcd = std::gcd(ratio.numerator, ratio.denominator);
    return { ratio.numerator / gcd, ratio.denominator / gcd };
}
```

## Documenting C++ code

* [Reddit](https://www.reddit.com/r/cpp/comments/kzvnyx/how_do_you_document_your_c_code/?ref=share&ref_source=link)
  * [Doxygen](https://www.doxygen.nl/index.html), [Sphinx](https://www.sphinx-doc.org/en/master/) + [Breathe](https://github.com/michaeljones/breathe) => [{fmt}](https://fmt.dev/latest/index.html)
  * [Standardese](https://github.com/standardese/standardese)
  * [clang-doc](https://clang.llvm.org/extra/clang-doc.html)
  * [hdoc](https://hdoc.io/)
  * [Adobe Hyde](https://github.com/adobe/hyde)

## YAVE: Functional reactive visual programming language written in C++20

* [Reddit](https://www.reddit.com/r/cpp/comments/kub1gu/yave_functional_reactive_visual_programming/)
  * [GitHub](https://github.com/mocabe/yave) (C++20, LGPL)

## Possibility of adding operators to handle nullptr easier ("??", "?->")

* [Reddit](https://www.reddit.com/r/cpp/comments/kxflj9/possibility_of_adding_operators_to_handle_nullptr/)

## CMake and the Future of C++ Package Management

* [Borislav Stanimirov](https://ibob.github.io/blog/2020/01/13/cmake-package-management/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/kwpkcw/cmake_and_the_future_of_c_package_management/?ref=share&ref_source=link)

## Fixed math header only library with MIT licence

* [Reddit](https://www.reddit.com/r/cpp/comments/l0uz1y/fixed_math_header_only_library_with_mit_licence/?ref=share&ref_source=link)
  * [GitHub](https://github.com/arturbac/fixed_math) (C++17, MIT)

## Coderrect Scanner

A fast static analysis tool for detecting race conditions in C++ code. Supports pthreads, `std::thread`, OpenMP, and more.

* [Home Page](https://coderrect.com/download/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l7z6s9/a_fast_static_analysis_tool_for_detecting_race/?ref=share&ref_source=link)

## Purely academic purposes Compile-time Turing Machine in C++20

* [GitHub](https://github.com/Eren121/CppTuringMachine)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l9gl25/purely_academic_purposes_compiletime_turing/?ref=share&ref_source=link)

## X-Macros

* [Arthur O'Dwyer](https://quuxplusone.github.io/blog/2021/02/01/x-macros/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/laqwkw/what_are_xmacros/?ref=share&ref_source=link)

> Interesting technique, I hate it. [=>](https://www.reddit.com/r/cpp/comments/laqwkw/what_are_xmacros/glpkbmz/)

## A C++20 container concepts library

This library aims to provide general purpose concepts that are not available in the C++20 concepts library, most notably container concepts.

* [GitHub](https://github.com/MiSo1289/more_concepts)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l9pt7n/a_c20_container_concepts_library/?ref=share&ref_source=link)

## Motivating examples of coroutines

* [Reddit](https://www.reddit.com/r/cpp/comments/l4lcar/do_people_have_some_motivating_examples_for/?ref=share&ref_source=link)
* [Previously: Reddit](https://www.reddit.com/r/cpp/comments/j6pi07/other_than_generators_what_do_coroutines_solve/?ref=share&ref_source=link)

## std::jthread and cooperative cancellation with stop token

* [Article on Nextptr](https://www.nextptr.com/tutorial/ta1588653702/stdjthread-and-cooperative-cancellation-with-stop-token)
  * [Reddit](https://www.reddit.com/r/cpp/comments/la35ec/stdjthread_and_cooperative_cancellation_with_stop/?ref=share&ref_source=link)

## Time Travel Debugging for C/C++

* [Article](https://pspdfkit.com/blog/2021/time-travel-debugging-for-c/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/laxdxy/time_travel_debugging_for_cc/)

## Number Parsing at a Gigabyte per Second

* [Daniel Lemire](https://lemire.me/blog/2021/01/29/number-parsing-at-a-gigabyte-per-second/)
  * [Paper](https://arxiv.org/pdf/2101.11408.pdf)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l80uat/number_parsing_at_a_gigabyte_per_second/)
  * [fast_float (GitHub)](https://github.com/fastfloat/fast_float)
  * [The Eisel-Lemire ParseNumberF64 Algorithm](https://nigeltao.github.io/blog/2020/parse-number-f64-simple.html)
  * [Go Systems talk (YouTube)](https://www.youtube.com/watch?v=AVXgvlMeIm4)

## Abbreviated Function Templates and Constrained Auto

* [Sy Brand, Microsoft](https://devblogs.microsoft.com/cppblog/abbreviated-function-templates-and-constrained-auto/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lcwfzx/abbreviated_function_templates_and_constrained/)

## Why no standard library support for command line parsing?

* [Reddit](https://www.reddit.com/r/cpp/comments/l6759u/why_no_standard_library_support_for_command_line/?ref=share&ref_source=link)
  * [P0781R0 A Modern C++ Signature for `main`](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2017/p0781r0.html)
  * TCLAP - Templatized Command Line Argument Parser: [SourceForge](http://tclap.sourceforge.net), [GitHub](https://github.com/mirror/tclap/)
  * [Gflags](https://gflags.github.io/gflags/), [GitHub](https://github.com/gflags/gflags)
  * [Cxxopts](https://github.com/jarro2783/cxxopts)
  * [CLI11](https://github.com/CLIUtils/CLI11)
  * [Boost.Program_options](https://www.boost.org/doc/libs/1_75_0/doc/html/program_options.html)
  * Quick Arg Parser: [GitHub](https://github.com/Dugy/quick_arg_parser), [Reddit](https://www.reddit.com/r/cpp/comments/l7a6uc/tired_of_unwieldy_tools_like_getopt_or_argp_try/)
  * [Lyra](https://github.com/bfgroup/Lyra)
  * [Clara](https://github.com/catchorg/Clara), [blog post by Marius Bancila](https://mariusbancila.ro/blog/2018/04/03/parsing-command-line-arguments-in-cpp-with-clara/)

```cpp
std::vector<std::string_view> args(argv, argv+argc);
```

## Moving Faster: Everyday Efficiency in Modern C++

* [C++Now 2018, YouTube](https://youtu.be/LFv7XwgsdLY)
  * [Reddit](https://www.reddit.com/r/cpp/comments/l5hxba/moving_faster_everyday_efficiency_in_modern_c/?ref=share&ref_source=link)

## C++ HTML

* [J.F. Bastien](https://github.com/jfbastien/cpp-html)

## Reference Views

**rviews** (reference views) is a header-only C++17 library that allows viewing an STL container via another STL container with lvalue semantics. E.g. you could view a list as it would be a vector, or even as it would be a map, or even both.

```cpp
std::list<char> data{'a', 'b', 'c'};
vector_view view{data};
std::cout << view[0] << std::endl; // a
std::cout << view[1] << std::endl; // b
std::cout << view[2] << std::endl; // c
```

* [GitHub](https://github.com/vzelen/rviews)
  * [Reddit](https://www.reddit.com/r/cpp/comments/la0mq3/reference_views_headeronly_library_view_vector_as/?ref=share&ref_source=link)
  * [See also: Vista](https://github.com/breese/vista)
  * [See also: Boost flat_map](https://www.boost.org/doc/libs/1_75_0/doc/html/container/non_standard_containers.html#container.non_standard_containers.flat_xxx)

## Conceptual

A C++20 library adapting preexisting type_traits into concepts, as well as improving upon the preexisting standard ones with better subsumption.

* [GitHub](https://github.com/Hamondorf/conceptual)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lbw45p/my_extended_concepts_library/?ref=share&ref_source=link)

## C++ Memory Safety

* [Reddit](https://www.reddit.com/r/cpp/comments/lc1axl/c_memory_safety/?ref=share&ref_source=link)

## Hot reloading C++ for rapid development with the help of **fungos/cr**

* [Alex Dixon](https://www.polymonster.co.uk/blog/live-reloading)
  * [fungos/cr](https://github.com/fungos/cr)
  * [cr.h: A Simple C Hot Reload Header-only Library](https://fungos.github.io/cr-simple-c-hot-reload/)

## Video: Pavel Novikov - "Understanding Coroutines by Example" - C++ London

* [YouTube](https://www.youtube.com/watch?v=7sKUAyWXNHA)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lek2j1/understanding_c_coroutines_by_example_c_london/?ref=share&ref_source=link)
  * [Slides](https://toughengineer.github.io/talks/C++%20Russia%202020%20Moscow/Understanding%20C++%20coroutines%20by%20example.pdf)

## VirtualMultiArray

Multi graphics card based C++ virtual array implementation that uses OpenCL just for the data transfers on PCIe bridge.

* [GitHub](https://github.com/tugrul512bit/VirtualMultiArray)
* [Wiki](https://github.com/tugrul512bit/VirtualMultiArray/wiki/How-it-works)
* [Reddit](https://www.reddit.com/r/cpp/comments/leq0tm/a_c_virtualarray_that_uses_graphics_cards_as/?ref=share&ref_source=link)
