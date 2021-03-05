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

## Video: Pavel Novikov - "Understanding Coroutines by Example" - C++ London

* [YouTube](https://www.youtube.com/watch?v=7sKUAyWXNHA)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lek2j1/understanding_c_coroutines_by_example_c_london/?ref=share&ref_source=link)
  * [Slides](https://toughengineer.github.io/talks/C++%20Russia%202020%20Moscow/Understanding%20C++%20coroutines%20by%20example.pdf)

## Video: Timur Doumler - How C++20 changes the way we write code - Meeting C++ 2020

* [YouTube](https://youtu.be/VK-16tpFQVI)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lo4z89/timur_doumler_how_c20_changes_the_way_we_write/?ref=share&ref_source=link)

## A tutorial and take on C++20 coroutines

* [David Mazières](https://www.scs.stanford.edu/~dm/blog/c++-coroutines.html)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lpo9qa/my_tutorial_and_take_on_c20_coroutines_david/)

## The perils of the accidental C++ conversion constructor

* [Raymond Chen](https://devblogs.microsoft.com/oldnewthing/20210115-00/?p=104719)
  * [Reddit](https://www.reddit.com/r/cpp/comments/ky691b/the_perils_of_the_accidental_c_conversion/)

> No one hates C++ more than the people who love C++. [#](https://www.reddit.com/r/cpp/comments/ky691b/the_perils_of_the_accidental_c_conversion/gjfbed4/)

## Making Win32 APIs More Accessible to More Languages

* [Microsoft](https://blogs.windows.com/windowsdeveloper/2021/01/21/making-win32-apis-more-accessible-to-more-languages/)
  * [C++/WinRT](https://github.com/microsoft/cppwinrt)

## C++ and game engines

* [Reddit](https://www.reddit.com/r/cpp/comments/l1vfz5/c_and_game_engines/)

> Hey, I started out with C++ 3 months ago and really love it. I already have some experience in Unity, but I'd like to use C++. Is there any engine you would recommend me to try out? I know about Unreal Engine but I can't find any good tutorials for how to use C++ with Unreal Engine. Is there any other option or a tutorial series or anything you could recommend me?

## Game developers, what compiler optimization setting do you use?

* [Reddit](https://www.reddit.com/r/cpp/comments/kyeid1/game_developers_what_compiler_optimization/?ref=share&ref_source=link)

## EnTT 3.6.0

Gaming meets modern C++ - a fast and reliable entity component system (ECS) and much more.

* [Announcement on Reddit](https://www.reddit.com/r/gamedev/comments/kttqxm/entt_v360_is_out_gaming_meets_modern_c/)
  * [GitHub](https://github.com/skypjack/entt) (C++17, MIT)

## Better CMake

* [Videos by Jefferson Amstutz](https://www.youtube.com/playlist?list=PL8i3OhJb4FNV10aIZ8oF0AA46HgA2ed8g)

## Solving differential equations with LLVM

Heyoka is a C++ library for the integration of ordinary differential equations (ODEs) via Taylor’s method. Notable features include:

* support for both double-precision and extended-precision floating-point types (80-bit and 28-bit),
* the ability to maintain machine precision accuracy over tens of billions of timesteps, batch mode integration to harness the power of modern SIMD instruction sets,
* a high-performance implementation of Taylor’s method based on automatic differentiation techniques and aggressive just-in-time compilation via LLVM.

### Links

* [GitHub](https://github.com/bluescarni/heyoka) (C++17, MPL-2.0)
  * [Docs](https://bluescarni.github.io/heyoka/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/lkcjki/solving_differential_equations_with_llvm/?ref=share&ref_source=link)

## TTauri: modern retained-mode GUI library in C++20

* [GitHub](https://github.com/ttauri-project/ttauri)
  * [Reddit](https://www.reddit.com/r/cpp/comments/llq4z7/ttauri_modern_retainedmode_gui_library_in_c20/)

## C++20 Coroutines: sketching a minimal async framework

* [Jeremy Ong](https://www.jeremyong.com/cpp/2021/01/04/cpp20-coroutines-a-minimal-async-framework/)
  * [Reddit](https://www.reddit.com/r/cpp/comments/ll3mdw/c20_coroutines_sketching_a_minimal_async_framework/)

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

## Library: Cli

A cross-platform header only C++14 library for interactive command line interfaces (Cisco style).

* [GitHub](https://github.com/daniele77/cli)

## Introduction to Lua in C++ with Sol2

* [Hristo Stamenov](https://thatonegamedev.com/cpp/introduction-to-lua-in-c-with-sol2/)

## Book erratum: Professional C++ by Marc Gregoire

* [Reddit](https://www.reddit.com/r/cpp/comments/ltwbsj/professional_c_5th_ed_and_statement_about_rvo_and/)

> Statements of the form return object; trigger return value optimization (RVO) if object is a local variable, a parameter to the function, or a temporary value. Furthermore, if object is a local variable, named return value optimization (NRVO) can kick in.

* [cppreference: Copy elision](https://en.cppreference.com/w/cpp/language/copy_elision)

## Free Windows 10 development virtual machines for HyperV, Parallels, VirtualBox, and VMWare

* [Scott Hanselman](https://www.hanselman.com/blog/free-windows-10-development-virtual-machines-for-hyperv-parallels-virtualbox-and-vmware)
* [Virtual machine downloads at Microsoft](https://developer.microsoft.com/en-us/windows/downloads/virtual-machines/?WT.mc_id=-blog-scottha)
* [Free developer tools for Windows 10](https://developer.microsoft.com/en-us/windows/downloads?WT.mc_id=-blog-scottha)

## New project flowchart

![](img/new-project-flowchart.jpeg)
