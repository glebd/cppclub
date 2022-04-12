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

> I guess most of you know who Dave Abrahams is and what he has done in the C++ community. He switched gears a little and is now working at Apple focusing mostly on the development of the Swift language and its library. However, yesterday he gave an excellent talk at their Developer Conference entitled Embracing Algorithms, which IMHO is general enough to be of interest for C++ developers as well. The link has a video of that 40 minutes long talk as well as the slides.

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

## Library: WxWidgets 3.1.6

One of the best cross-platform GUI libraries for C++, [WxWidgets](https://www.wxwidgets.org), has been updated to [version 3.1.6](https://github.com/wxWidgets/wxWidgets/releases/tag/v3.1.6). When asked about C++ GUI libraries most developers think of Qt. But if you want native controls and look on all supported platforms, WxWidgets is the best option. (Qt draws custom controls and therefore looks the same but also alien on all platforms).

The [code](https://github.com/wxWidgets/wxWidgets) does have a bit of MFC vibe, but the UI definitions are XML-based and can be reloaded without recompiling the program, which can be convenient. The [Hello World example](https://docs.wxwidgets.org/trunk/overview_helloworld.html) is not exactly short or simple, but it is probably an acceptable compromise for what you are getting.

The OS support range is impressive, from Windows XP to 10 (32- and 64-bit), most Linux variants using GTK+, macOS 10.10+ using Cocoa.

The [licence](https://github.com/wxWidgets/wxWidgets/blob/master/docs/licence.txt) is a modified LGPL explicitly allowing not distributing the sources of an application using the library even in the case of static linking, which is really nice.

The popular free audio editor [Audacity](https://www.audacityteam.org) uses WxWidgets.

## Library: Vapid soa

[Vapid soa](https://github.com/markisus/vapid-soa) is a header-only library that implements a structure of arrays (SOA). It follows the [data-oriented design idiom](https://en.wikipedia.org/wiki/Data-oriented_design) and is a faster and more cache-friendly replacement for an array of structures.

The library supports various data transformations and accessors, comes under MIT licence, requires C++17 and uses Bazel Build.

Example code:

```cpp
constexpr int ORDER = 0;
constexpr int FIRST_NAME = 1;
constexpr int LAST_NAME = 2;
vapid::soa<int, std::string, std::string> presidents;

presidents.insert(0, "Abraham", "Lincoln");
presidents.insert(2, "George", "Bush");
presidents.insert(1, "Bill", "Clinton");

// sort by time (first column)
presidents.sort_by_field<ORDER>();
std::cout << "Presidents sorted by temporal order" << "\n";
std::cout << presidents << "\n";
```

## List of C++ libraries on cppreference

There is a [list](https://en.cppreference.com/w/cpp/links/libs) of open-source C++ libraries on the best C++ reference website, [cppreference](https://en.cppreference.com). It's not as long as [some](https://github.com/fffaraz/awesome-cpp) [other](https://github.com/uhub/awesome-cpp) [lists](https://cpp.libhunt.com), but still provides a good sample of what's available.

## Please repeat yourself: The `noexcept(noexcept(…))` idiom

Raymond Chen [writes](https://devblogs.microsoft.com/oldnewthing/20220408-00/?p=106438):

TODO

Reddit [thread](https://www.reddit.com/r/cpp/comments/tz8xgl/please_repeat_yourself_the_noexceptnoexcept_idiom/)

## GUI for software, not games, but lighter than Qt

A redditor [asks](https://www.reddit.com/r/cpp/comments/tyzs7p/gui_for_software_not_games_but_lighter_than_qt/):

TODO

## Divide & Conquer and Sets: The 114 C++ algorithms series

[Medium](https://itnext.io/divide-conquer-and-sets-the-114-c-algorithms-series-d0085a38046e)

TODO
