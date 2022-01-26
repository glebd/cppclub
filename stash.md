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

## Swift and C++ interoperability workgroup announcement

We discussed [Swift C++ Interoperability Manifesto](https://github.com/apple/swift/blob/main/docs/CppInteroperabilityManifesto.md) previously. There is a new development in this area: the creation of a [workgroup](https://forums.swift.org/t/swift-and-c-interoperability-workgroup-announcement/54998) dedicated to C++ and Swift bi-directional API level interoperability.

> Over the past few years there has been a huge amount of interest in bidirectional interoperability between Swift and C++. <...> the Swift compiler is now able to import and use some C++ APIs, including C++ standard library types like `std::string` and `std::vector`. <...> To advance the interoperability support between Swift and C++, we are announcing the formation of the Swift and C++ interoperability workgroup as part of the Swift project.

This is very welcome news. There are many tasks for which C++ is better suited (like working with memory or system APIs), and to be able to use C++ in a Swift program, especially with two-way access, will be really helpful. It also shows that no matter how focussed Apple is on Swift, they must have realised that C++ isn't going anywhere and there needs to be a way for Swift to use it.

## Which standard C++ library elements should I avoid?

A redditor [asks](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/):

> I'm aware that due to ABI backward compatibility and historical reasons there are parts of standard library that shouldn't be used. I've seen people complaining and warning about regular expresions/unordered containers since they are (apparently) horrendously slow. What about the other stuff? What else is advised to be ignored?

The most sensible advice seems to be to avoid nothing and measure performance. However, many redditors concur that `std::regex` is very slow and shouldn't be used. Apparently `boost::regex` is about 10 times faster, and there is also much anticipated [compile-time regular expressions](https://github.com/hanickadot/compile-time-regular-expressions) (CTRE) by Hana Dusíková that you can with C++17 and C++20.

According to a Microsoft STL [developer](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htswq66/):

> `std::regex` is bad and you should forget it exists.

Regarding `std::map` versus `std::unordered_map`, opinions [differ](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htr0rrv/). Some say that `map` is slow and you should use `unordered_map` unless you need ordering. Others point out that `unordered_map` has more requirements for the element type (hashing). I liked this [quote](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htsbqkw/) by **mark_99**:

> `unordered_map` is never very slow under any of the possible use cases.

A link was posted to a [set of benchmarks](https://tessil.github.io/2016/08/29/benchmark-hopscotch-map.html) for the most common hash map implementations, which show that `std::unordered_map` is indeed slow compared to other hash maps.

Anotehr redditor [says](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htrbeti/) not to use iostreams, as they are slow and add too much bloat to the binary, which is especially important in the embedded space. The **{fmt}** library is much faster, has very small code size, and is easy to work with.

To speed up maths this redditor [says](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htqyit7/):

> If you don't rely on it disable math-`errno` on your compiler. The C standard mandates that otherwise single instruction operations like `sqrt` return their errors as `errno` value, which can result in half a page of cleanup instructions for every instruction of actual work.

A redditor [says](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htqn6ib/):

> I don't use thread anymore, just jthread.

Remember the proposal to make `<random>` usable, which didn't make it into C++23? A redditor [writes](https://www.reddit.com/r/cpp/comments/sa080z/which_standard_c_library_elements_should_i_avoid/htshwlg/):

> `<random>` is suboptimal and worth avoiding, because all of the generators provided are slow or have poor statistical qualities, and its generally difficult to use correctly.

There are also discussions of `std::list` vs. `std::vector` which you can read yourself.

## I don’t know which container to use

A related article by Chloé Lourseyre on the _Belay C++_ blog goes into details of container selection given a task and requirements.

> As far as containers go in C++, since `std::vector` is well suited for most cases (with the occasional `std::map` when you need key-value association), it’s become easy to forget that there are other types of containers. Each container has its strength and weaknesses <...>.

The author presents two matrices illustrating container properties, one for sequence containers and another for associative containers. She also shows Joe Gibson's data structure selection flowchart.

> Vectors are the most understandable structure because it is quite close to the plain-old arrays. Most C++ users aren’t experts, and `std::vector` is the container they know how to use best. We shouldn’t make mundane code any more difficult to read and understand. Of course, as soon as you have special needs, you should use the most appropriate container, but that doesn’t happen very often.

Chloé reminds us that optimization should not be the first consideration. Only after you measure the performance you should start thinking of choosing a faster data structure. She provides her own flowchart that works like a preliminary step before referring to Joe Gibson's flowchart for more granular selection. Her flowchart advises to use `std::vector` and `std::map` by default. There is a footnote clarifying use of unordered containers:

> Unfortunately, the presented flowchart lacks any `unordered_` associative containers. But you can think of it like this: "Values need to be ordered? Yes -> `map/set` ; No -> `unordered_map/unordered_set`".

There is a short Reddit [thread](https://www.reddit.com/r/cpp/comments/simufv/i_dont_know_which_container_to_use_and_at_this/) discussing the article. The [first reply](https://www.reddit.com/r/cpp/comments/simufv/i_dont_know_which_container_to_use_and_at_this/hv9m1c6/) is:

> Almost always vector.

Regarding maps, a redditor [says](https://www.reddit.com/r/cpp/comments/simufv/i_dont_know_which_container_to_use_and_at_this/hv9ox91/):

> (Almost) Never. Use. `std::map`. If you think you need `std::map`, you really want `std::unordered_map`.

I'm looking forward to `std::hive` in C++26.
