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

## How C++ Resolves a Function Call

Canadian programmer Jeff Preshing ([@preshing](https://twitter.com/preshing)) posted an [article](https://preshing.com/20210315/how-cpp-resolves-a-function-call/) about how C++ resolves a function call, which has a nice diagram based on the C++ standard. He then explains in detail what happens at each step of the diagram:

* name lookup
    * member name lookup
    * qualified name lookup
    * unqualified name lookup (with its own [set of rules](https://en.cppreference.com/w/cpp/language/unqualified_lookup))
        * argument-dependent lookup
* handling of function templates
* overload resolution
* [tie-breakers](https://en.cppreference.com/w/cpp/language/overload_resolution#Best_viable_function)

This is a really good explanation that should be bookmarked and re-read several times.

The [Reddit thread](https://www.reddit.com/r/cpp/comments/m5jpwz/how_c_resolves_a_function_call/) has more useful links, including ADL articles.

### ADL

* [cppreference](https://en.cppreference.com/w/cpp/language/adl)
* [Arthur O'Dwyer](https://quuxplusone.github.io/blog/2019/04/26/what-is-adl/)
* [Abseil Tip #49](https://abseil.io/tips/49)

## Don’t blindly prefer `emplace_back` to `push_back`

[Arthur O'Dwyer](https://quuxplusone.github.io/blog/2021/03/03/push-back-emplace-back/) writes:

> Even a decade after C++11 was released, I still sometimes see programmers assume that `emplace_back` is somehow related to move semantics. <...> `emplace_back` was added to the language at the same time as `std::move` — just like lambdas were added at the same time as `std::function` — but that doesn’t make them the same thing.

`emplace_back` constructs a container element in place, given constructor arguments. You can also move an element into its place in the container, but in this case `push_back` can also be used.

Arthur O'Dwyer concludes:
 
> I recommend sticking with `push_back` for day-to-day use. You should definitely use `emplace_back` when you need its particular set of skills — for example, `emplace_back` is your only option when dealing with a `deque<mutex>` or other non-movable type — but `push_back` is the appropriate default.

In the [Reddit thread](https://www.reddit.com/r/cpp/comments/lx7hej/dont_blindly_prefer_emplace_back_to_push_back/), a redditor nicely [summarised](https://www.reddit.com/r/cpp/comments/lx7hej/dont_blindly_prefer_emplace_back_to_push_back/gplomqr/) the article:

> tl;dr: understand what `emplace_back` does before you use it

Scott Meyers [gets a mention](https://www.reddit.com/r/cpp/comments/lx7hej/dont_blindly_prefer_emplace_back_to_push_back/gplg4ko/), which evolves into a sub-thread discussing his retirement from C++.

Another redditor [mentions](https://www.reddit.com/r/cpp/comments/lx7hej/dont_blindly_prefer_emplace_back_to_push_back/gpln1by/) [the emplace-new antipattern](http://kayari.org/cxx/antipatterns.html#emplace-new).

## C++ Antipatterns

Speaking of antipatterns, let's take a look at the [Kayari website](http://kayari.org/cxx/antipatterns.html) I just mentioned, which lists a few C++ antipatterns. The author writes:

> This page documents some common mistakes that I see again and again in bug reports and requests for help on sites like StackOverflow.

The list includes:

* [Reading from an `istream` without checking the result](http://kayari.org/cxx/antipatterns.html#istream-check)
* [Testing for `istream.eof()` in a loop](http://kayari.org/cxx/antipatterns.html#istream-eof)
* [Locking and unlocking a `std::mutex`](http://kayari.org/cxx/antipatterns.html#locking-mutex)
* [Inserting into a container of smart pointers with `emplace_back(new X)`](http://kayari.org/cxx/antipatterns.html#emplace-new), just mentioned above
* [Defining "less than" and other orderings correctly](http://kayari.org/cxx/antipatterns.html#strict-weak-order)
* [Dynamically allocating `std::thread` objects](http://kayari.org/cxx/antipatterns.html#std-thread-alloc)
* [Using `std::bind` when constructing `std::thread` objects](http://kayari.org/cxx/antipatterns.html#std-thread-bind)
* [Using `std::string("")` to create empty `std::string` objects](http://kayari.org/cxx/antipatterns.html#empty-string)

## Ticket Maps

[Anthony Williams](https://www.justsoftwaresolutions.co.uk/cplusplus/ticket-maps.html) writes:

> It has been an increasingly common scenario that I've encountered where you have some ID that's monotonically increasing, such as a subscription or connection index, or user ID, and you need your C++ program to hold some data that's associated with that ID value. The program can then pass round the ID, and use that ID to access the associated data at a later point. Over time, IDs can become invalidated, so the data associated with that value is removed, and you end up with a sparse set of currently-active IDs.

For the described use case he implemented an algorithm [Sean Parent calls](https://sean-parent.stlab.cc/papers-and-presentations/#better-code-relationships) "Russian Coat-Check Algorithm".

> In this algorithm, the map is implemented as a vector of pairs of key/optional data. Because the keys come from a monotonically increasing index, the vector is *always sorted*, and inserts are always at the end. Entries can be removed by clearing the data, and if there are too many empty entries then the vector can be compacted. Lookups are always fast, because the vector is always sorted, so a simple binary search will find the right element.

I'll have to revisit Sean Parent's presentation if only to see what is so Russian about this algorithm.

The implementation is [available on GitHub](https://github.com/anthonywilliams/ticketmap) under the Boost Software Licence.

## Accessing private members of a friend class from friend function: Which compiler is correct?

A redditor noticed discrepancy between compilers in [how they treat friend classes](https://www.reddit.com/r/cpp/comments/mjtq0r/accessing_private_members_of_a_friend_class_from/). It seems that Clang allows reciprocal access to field's private members, whereas GCC or MSVC don't. Their question was which compiler is right.

```cpp
class Foo {
    friend class Bar;
    int x_;
};

class Bar {
    friend void foobar(Bar b, Foo f) {
        std::cout << f.x_;
        // ^^^ Clang: OK; GCC, MSVC: error
    }
};
```

Someone found a [post from 2014 by Richard Smith](http://clang-developers.42468.n3.nabble.com/Three-code-snippets-accepted-by-clang-and-rejected-by-g-tp4041069p4041095.html) on the Clang developer mailing list:

> Clang's behavior reflects the current intent of the C++ core working group. This is core issue 1699, and the current resolution to that is to treat everything that is lexically within a befriended entity as being befriended. GCC does not yet implement the resolution to core issue 1699 (which is reasonable, since it's not yet even resolved).

Looks like this issue [hasn't been resolved yet](http://www.open-std.org/jtc1/sc22/wg21/docs/cwg_active.html#1699). However, the C++ Standard [says](http://eel.is/c++draft/class.friend#10):

> Friendship is neither inherited nor transitive.

As another redditor [explains](https://www.reddit.com/r/cpp/comments/mjtq0r/accessing_private_members_of_a_friend_class_from/gtcaige/):

> In the example OP provided, the class `Bar` is a friend of class `Foo`. The function `foobar()` is a friend of class `Bar`.

> About transitive: just because `Bar` is friend of `Foo`, it does not mean `foobar()` is automatically also friend of `Foo`. IRL (*in real life*): the friend of your friend is not automatically your friend as well.

> Regarding inheritance: the friend of your son or daughter is not automatically your friend.

> You could also view `friend` as an explicit statement. Only the thing you explicitly declare as `friend` is actually a friend. No non-declared friends "sneak" into the relationship.

So it looks like MSVC and GCC are correct here and Clang isn't.

## Modern C++ class members and initializations the right way

[Pranay Kumar](https://medium.com/pranayaggarwal25/using-modern-class-members-and-initializations-c11e931c3ba) reminds us in his article on Medium how to initialize a class properly and in a modern way:

* Use member initializers in the same order as their declaration
* Prefer in-class member initializer over constant initializations OR over default constructor.
* Don’t cast away `const`, ever!
* Use delegating constructors to represent common actions for all constructors of a class.

[Reddit](https://www.reddit.com/r/cpp/comments/m64h96/modern_c_class_members_and_initializations_the/) doesn't have any objections.

## The Sad Truth About C++ Copy Elision

[Scott Wolchok](https://wolchok.org/posts/sad-truth-about-cxx-copy-elision/) writes:

> In this post, I’ll walk through an example where an obvious optimization you might expect from your compiler doesn’t actually happen in practice.

He comes up with an example that shows copy elision happening in one case but not in the other, when the code is slightly modified (an extra local variable is introduced).

Reddit has not one but [two](https://www.reddit.com/r/programming/comments/mjbn6j/the_sad_truth_about_c_copy_elision/) [threads](https://www.reddit.com/r/cpp/comments/mk15w8/the_sad_truth_about_c_copy_elision/) discussing this post. Predictably, you can see:

* [Rust](https://www.reddit.com/r/programming/comments/mjbn6j/the_sad_truth_about_c_copy_elision/gta5art/) threads, some of them [going into details](https://www.reddit.com/r/cpp/comments/mk15w8/the_sad_truth_about_c_copy_elision/gte9o77/) with [code examples](https://www.reddit.com/r/cpp/comments/mk15w8/the_sad_truth_about_c_copy_elision/gth9fmq/)
* [Bjarne Stroustrup quotes](https://www.reddit.com/r/programming/comments/mjbn6j/the_sad_truth_about_c_copy_elision/gta4ypm/) (*citation needed*)
* ["Works as expected"](https://www.reddit.com/r/programming/comments/mjbn6j/the_sad_truth_about_c_copy_elision/gta6o90/)
* ["We need destructive move"](https://www.reddit.com/r/cpp/comments/mk15w8/the_sad_truth_about_c_copy_elision/gtdb74v/)

The best reply award goes to [this one](https://www.reddit.com/r/cpp/comments/mk15w8/the_sad_truth_about_c_copy_elision/gtk2eyr/) at the very bottom of the second discussion:

> You could just replace "The Sad Truth About" by "Amazing optimizations of" in the title, and showcase how neatly optimized is the first example.

## Type-safe Pimpl implementation without overhead

[Malte Skarupke](https://probablydance.com/2013/10/05/type-safe-pimpl-implementation-without-overhead/) writes:

> I like the pimpl idiom because I like to keep my headers as clean as possible, and other people’s headers are dirty. Unfortunately the pimpl idiom never feels like a good solution because it has runtime overhead that wouldn’t be needed if I didn’t care about clean headers so much. <...> You always need an extra heap allocation and every method performs an extra pointer dereference.

The author then presents a solution:

> This code fixes that, so that there can be zero runtime overhead. <...> This uses a well-known hack where you put the necessary storage into your class, and then placement-new the forward declared object into the storage.

My impression is that this solution eliminates the main PIMPL advantage, which is removing the need to rebuild client code when implementation changes. Sure, it's more efficient than ordinary PIMPL, but I'm not convinced it's worth it (unless, perhaps, you are an embedded system programmer). If your clients have to rebuild after implementation changes anyway, just keep things simple and use the implementation directly.
