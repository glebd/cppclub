# "Making new friends" idiom by Dan Saks

[Wikibooks](https://en.wikibooks.org/wiki/More_C%2B%2B_Idioms/Making_New_Friends)

> The goal is to simplify creation of friend functions for a class template.

```cpp
template<typename T>
class Foo {
   T value;
public:
   Foo(const T& t) { value = t; }
   friend ostream& operator <<(ostream& os, const Foo<T>& b)
   {
      return os << b.value;
   }
};
```

# Video: Secure Programming Practices in C++ - NDC Security 2018

[YouTube](https://www.youtube.com/watch?v=Jh0G_A7iRac)

# Video: C++ Performance and Optimisation - NDC Techtown 2017

[YouTube](https://www.youtube.com/watch?v=eICYHA-eyXM)

# Video: Concurrent Programming in C++ - NDC Techtown 2017

[YouTube](https://www.youtube.com/watch?v=O7gUNNYjmsM)

# Video: CppCon 2016: "C++14 Reflections Without Macros, Markup nor External Tooling"

[YouTube](https://www.youtube.com/watch?v=abdeAew3gmQ)

# Variadic CRTP, by Steve Dewhurst

[PDF](http://stevedewhurst.com/once_weakly/once-weakly20170328/once-weakly20170328.pdf)

# How to Adopt Modern C++17 into Your C++ Code, by Herb Sutter

* [YouTube](https://www.youtube.com/watch?v=UsrHQAzSXkA)

# From Algorithms to Coroutines

* [Post by Kenny Kerr](https://msdn.microsoft.com/en-us/magazine/mt826346)

# Type Erasure by Andrzej

* [Part 1](https://akrzemi1.wordpress.com/2013/11/18/type-erasure-part-i/)
* [Part 2](https://akrzemi1.wordpress.com/2013/12/06/type-erasure-part-ii/)
* [Part 3](https://akrzemi1.wordpress.com/2013/12/11/type-erasure-part-iii/)
* [Part 4](https://akrzemi1.wordpress.com/2014/01/13/type-erasure-part-iv/)

# Type Erasure with Merged Concepts

* [Post by Andreas Herrmann](https://aherrmann.github.io/programming/2014/10/19/type-erasure-with-merged-concepts/)

# On the Tension Between Object-Oriented and Generic Programming in C++, and What Type Erasure Can Do About It

* [Article by Thomas Becker](https://www.artima.com/cppsource/type_erasure.html)

# Coroutine Theory

* [Intro](https://lewissbaker.github.io/2017/09/25/coroutine-theory)
* [Operator `co_await`](https://lewissbaker.github.io/2017/11/17/understanding-operator-co-await)

# Using metaprogramming for PIMPL idiom

* [Reddit](https://www.reddit.com/r/cpp/comments/7971ws/using_metaprogramming_for_pimpl_idiom/)

# A hidden gem: `inner_product`

* [Article](https://marcoarena.wordpress.com/2017/11/14/a-hidden-gem-inner_product/)

# Your own type predicate

* [Part 1](https://akrzemi1.wordpress.com/2017/12/02/your-own-type-predicate/)
* [Part 2](https://akrzemi1.wordpress.com/2017/12/20/a-friendly-type-predicate/)

# Tick: Trait introspection and concept creator for C++11

* [GitHub](https://github.com/pfultz2/Tick)

# Using C++17 `std::optional`

* [Post](https://www.bfilipek.com/2018/05/using-optional.html)
* [Reddit](https://www.reddit.com/r/programming/comments/8hnpk2/using_c17_stdoptional/)

# Modern C++ Features – `std::variant` and `std::visit`

* [Post](https://arne-mertz.de/2018/05/modern-c-features-stdvariant-and-stdvisit/)

# Converting enum classes to strings and back in C++

* [Article](https://sheep.horse/2018/5/converting_enum_classes_to_strings_and_back_in_c++.html)
* [Reddit](https://www.reddit.com/r/cpp/comments/8hwk91/converting_enum_classes_to_strings_and_back_in_c/)

# CppEurope

* [YouTube](https://www.youtube.com/channel/UCZS60J7KcQOLf87H3P_PTlg/videos)

# Unreal Engine Gameplay Framework Primer for C++

* [Article](http://www.tomlooman.com/ue4-gameplay-framework/)

# {fmt} support for ranges, containers and types with tuple interface

* [GitHub](https://github.com/Remotion/fmt_extension)

# Getting started with Meson in C++

* [Part 1](https://medium.com/@germandiagogomez/getting-started-with-meson-build-system-and-c-83270f444bee)
* [Part 2](https://medium.com/@germandiagogomez/getting-started-with-meson-in-c-part-2-58150354ff17)

# Rvalues redefined

* [Post](https://akrzemi1.wordpress.com/2018/05/16/rvalues-redefined/)

# Overload: Build a Variant Visitor on the Fly

* [Post](https://arne-mertz.de/2018/05/overload-build-a-variant-visitor-on-the-fly/)

# eventpp -- C++ library for event dispatcher and callback list

* [GitHub](https://github.com/wqking/eventpp)

# C++17 in libsigc++ : `invoke`, `apply`, and `constexpr if`

* [Post](https://www.murrayc.com/permalink/2018/04/15/c17-in-libsigc-invoke-apply-and-constexpr-if/)

# Multifunction: Generalization of `std::function` for any number of signatures

* [Code](https://github.com/fgoujeon/multifunction)

# How to Use Tag Dispatching In Your Code Effectively

* [Post](http://www.fluentcpp.com/2018/04/27/tag-dispatching/)
