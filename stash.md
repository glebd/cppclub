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

# A C++ implementation of a memory efficient hash map and hash set

* [GitHub](https://github.com/Tessil/sparse-map) (MIT)
* [How Google Sparsehash achieves two bits of overhead per entry using sparsetable](https://smerity.com/articles/2015/google_sparsehash.html)

# optional<T> in a possible C++20 future

* [Article](https://medium.com/@barryrevzin/optional-t-in-a-possible-c-20-future-6a1f2158fb76)
    * [Initial code](https://github.com/BRevzin/cpp_proposals/blob/0b67333c562b4cfa52a42efda1ba13ed45037900/optional/optional.h#L697-L711)
    * [p0847: Deducing `this`](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p0847r0.html) / [Code](https://github.com/BRevzin/cpp_proposals/commit/5e13ffbc81fd534651212f412ffc5d18f7e718f8)
    * [P0892: Explicit(`bool`)](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2018/p0892r0.html) / [Code](https://github.com/BRevzin/cpp_proposals/commit/dc06c7feb972e44a4f919780d704c6e2a225e0b7)
    * [P0848: Conditionally Trivial Special Member Functions](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2017/p0848r0.html) / [Code](https://github.com/BRevzin/cpp_proposals/commit/87deaa7a292e946705a16c01dfc74895f6a245a7)
    * [Code +spaceship operator](https://github.com/BRevzin/cpp_proposals/commit/5da9873727af8b9be6b23ef6bbd1a1a53c1beb8f)
    * [Code +concepts](https://github.com/BRevzin/cpp_proposals/commit/902b772a61b7e4a718d1b511b8b688b58184e82c)

# Brigand -- Instant compile time C++11 metaprogramming library

* [GitHub](https://github.com/edouarda/brigand) (header-only, Boost Software License 1.0)
* [Docs](https://github.com/edouarda/brigand/wiki)
* [Meeting C++ 2015 video](https://www.youtube.com/watch?v=B8XSDhWx7hY)
* [CppCon 2016 video](https://www.youtube.com/watch?v=ky0JdPh_LgE)
* [Ebook](http://www.oreilly.com/programming/free/practical-c-plus-plus-metaprogramming.csp)

> Everything you were doing with Boost.MPL can be done with Brigand.

# Brigand -- Instant compile time C++ 11 metaprogramming library (cont.)

* Example tasks:
    * Create a tuple from a list of types and then transform it into a variant
    * Look for the presence of a type in a tuple and get its index
    * Sort a list of types
    * Advanced static assertion with arithmetics and complex functions
    * Go through a list of types and perform a runtime action for each type

# C++ Patterns

[Website](https://cpppatterns.com/)

# Favourite C++ coding standards

* [Reddit](https://www.reddit.com/r/cpp/comments/80m4vx/favorite_c_coding_standards/)
* [C++ Core Guidelines](http://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines)
* [High Integrity C++ Coding Standard](http://www.codingstandard.com/section/index/)
* [Geosoft C++ Programming Practice Guidelines](http://geosoft.no/development/cpppractice.html)
* [Webkit Code Style Guidelines](https://webkit.org/code-style-guidelines/)
