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
