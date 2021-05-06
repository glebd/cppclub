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

My impression is that this solution eliminates the main Pimpl advantage, which is removing the need to rebuild client code when implementation changes. Sure, it's more efficient than ordinary Pimpl, but I'm not convinced it's worth it (unless, perhaps, you are an embedded system programmer). If your clients have to rebuild after implementation changes anyway, just keep things simple and use the implementation directly.

## Semantics of unsigned integers

A redditor [asks](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/), what should be the semantics of unsigned integers. As it often happens, to get the right answer someone has to post a wrong answer, and the redditor Full-Spectral is [happy to oblige](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfodkm/). They write:

> I'm one of those that doesn't agree with the always use signed types thing. If you don't understand the magnitude of the values involved, using signed types isn't going to magically make everything better. I believe in modelling the things you are operating on, and if that can never be negative, then I don't see how using signed values is better unless you always check the result.

Predictably, this resulted in a good [reply](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvhdfcx/):

> The issue is not the range of values you can store in a variable, but that due to type promotion that range will also apply to all intermediate values when using arithmetic operations. This means that you need to be super careful about performing subtractions with unsigned integers, which is basically just asking for trouble.

Another redditor [writes](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfkgg5/):

> These are some valid use cases of modulo behaviour of unsigned arithmetic:
>
> * hashes
> * random numbers
> * implementing multiprecision types
> * crypto
> * emulation of hardware

Tony Van Eerd [replies](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvla83m/):

> People expect numbers to act like numbers. <...> Neither signed nor unsigned really work like numbers when you are near the boundaries, but unsigned puts a boundary at 0, which may very well be the most common number in all of programming. <...> So avoid unsigned numbers for numbers. Use signed. The committee apologies profusely for making `size_t` be unsigned.

Another redditor [reminds](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfnfas/) that

> The C++ Core Guidelines also have the "unsigned for bitwise, signed for arithmetic" rule.

And of course someone [mentions](https://www.reddit.com/r/cpp/comments/mw13za/semantics_of_unsigned_integers/gvfguit/) Rust:

> Rust does a better job of divorcing signedness from overflow behaviour and what’s undefined behaviour, along with avoiding the implicit integer casts and promotions that make these subtleties problematic.
