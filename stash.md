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

## Little C++ Standard Library Utility: `std::align`

[Lesley Lai](https://lesleylai.info) posted an [article](https://lesleylai.info/en/std-align/) about `std::align` in which he describes a use case, then implements a helper function manually, and finally replaces it with `std::align`.

> Arena, also called bump allocator or region-based allocator, is probably the simplest allocation strategy. It is so widely used that even the C++ standard library has an arena implementation called `std::pmr::monotonic_buffer_resource`.

> With arena, we first have a large chunk of pre-allocated memory. That chunk of memory itself can either come from the stack or one large allocation of another allocator such as malloc. Afterward, we allocate memory from that chunk by bumping a pointer offset.

> Arena allocation has outstanding performance characteristics, especially compared to complicated beasts like `malloc`. Each allocation only needs to bump a pointer, and the deallocation is almost free if the objects allocated are trivially destructible. <...> it is useful in situations where we have a lot of heterogeneous allocations that only need to be freed together, and is widely used in application domains from compilers to video games.

When allocating memory in an arena we need to deal with alignment. Incrementing the 'next' pointer by the size of allocated object is not enough --- starting the lifetime of objects on unaligned locations is undefined behavior.

Lesley then explains how to handle alignment, including a full implementation of a helper function that bumps arena pointer to the next allocation address and updates the remaining area space.

Turns out, that's what `std::align` is for:

```cpp
namespace std {
auto align(std::size_t alignment,
           std::size_t size,
           void*& ptr,
           std::size_t& space)
-> void*;
}
```

From [cppreference](https://en.cppreference.com/w/cpp/memory/align):

> Given a pointer `ptr` to a buffer of size `space`, returns a pointer aligned by the specified alignment for `size` number of bytes and decreases `space` argument by the number of bytes used for alignment. The first aligned address is returned.

We still need to change `ptr` and `space` according to the actual allocation size, as they are only bumped by the number of alignment bytes.

So here it is, `std::align`, a very useful function for a very limited use case.

## `T*` makes for a poor `optional<T&>`

Barry Revzin [writes](https://brevzin.github.io/c++/2021/12/13/optional-ref-ptr/):

> Whenever the idea of an optional reference comes up, inevitably somebody will bring up the point that we don’t need to support `optional<T&>` because we already have in the language a perfectly good optional reference: `T*`. <...> The purpose of this post is to point out that, despite these similarities, `T*` is simply not a solution for `optional<T&>`.

As an example Barry chose a function that returns the 1st element of a range or nothing if the range is empty. He develops the function over several iterations and demonstrates that in order to support any input range the return type must be `optional<T&>`. He shows that `T*` doesn't really work, and `optional<T>` is also unsuitable for some input range types, notably `vector<T>` which has reference type of `T&`.

When the return type is `optional<ranges::range_reference_t<R>>` (where `R` is the input range type) it resolves to `optional<int>` for `ranges::iota<int>` but for `vector<int>` it resolves to `optional<int&>`. The author shows that returning `int*` instead doesn't work without a lot of workarounds. If we wanted to have a nice usage where a default value is returned if the input range is empty, it doesn't work with pointers unless more workarounds are provided, and then the call syntax is not as nice:

```cpp
// ideal
int value1 = try_front(r).value_or(-1); // ideal

// workaround
template <typename P, typename U>
constexpr auto value_or(P&& ptrish, U&& dflt) {
  return ptrish ? *FWD(ptrish) : FWD(dflt);
}
int value2 = N::value_or(try_front(r), -1);
```

Barry takes a quick aside to remind us why `vector<booL>` is bad, and then writes:

> If we all agree that `vector<bool>` is bad because of several subtle differences with `vector<T>`, then surely we should all agree that `T*` is a bad `optional<T&>` because it has several very large and completely unavoidable differences with `optional<T>`.

> Namely:

> * it is spelled differently from `optional<T>` (trivially: it is spelled `T*`)
> * it is differently constructible from `optional<T>` (you need to write `&e` in one case and `e` in the other)
> * it has a different set of supported operations from `optional<T>`

Barry talks about the future too:

> We don’t have pattern matching in C++ yet, and we still won’t in C++23. But eventually we will, and when we do, we’ll want to be able to match on whether our optional reference actually contains a reference, or not. We do not need to match whether we’re… holding a derived type or not. This is yet another operation that a `T*` won’t do for us.

He concludes:

> The ability to have `optional<T&>` as a type, making optional a total metafunction, means that in algorithms where you want to return an optional value of some computed type `U`, you can just write `optional<U>` without having to worry about whether `U` happens to be a reference type or not. This makes such algorithms easy to write.

[Reddit thread](https://www.reddit.com/r/cpp/comments/rfmg3a/t_makes_for_a_poor_optionalt/) has much to say about the topic, and specifically about what should happen when assigning to `optional<T&>`.

## Printing tabular data

Some links for when you need to output tables in C++:

### [tableprinter by Ozan Cansel](https://github.com/OzanCansel/tableprinter)

A header-only C++17 library, no 3rd-party dependencies, MIT licence.

### [CppConsoleTable by Denis Samilton](https://github.com/DenisSamilton/CppConsoleTable)

A header-only C++17 library, MIT licence. This one prints table borders using the extended line drawing characters.

### [variadic_table by Derek Gaston](https://github.com/friedmud/variadic_table)

A header-only C++17 library that uses variadic templates for convenience. This one prints table borders using standard characters (dash and pipe). The licence is [LGPL-2.1](https://github.com/friedmud/variadic_table/blob/master/LICENSE), so be careful.
