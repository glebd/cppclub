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

# C++ Templates Revised - Nicolai Josuttis [ACCU 2018]

* [YouTube](https://www.youtube.com/watch?v=9PFMllbyaLM)

# CRTP refresher by Jonathan Boccara

* [Part 1](https://www.fluentcpp.com/2017/05/12/curiously-recurring-template-pattern/)
* [Part 2](https://www.fluentcpp.com/2017/05/16/what-the-crtp-brings-to-code/)
* [Part 3](https://www.fluentcpp.com/2017/04/28/extract-interface-cpp/)
* [Part 4](https://www.fluentcpp.com/2017/12/12/mixin-classes-yang-crtp/)

# Favourite C++ coding standards

* [Reddit](https://www.reddit.com/r/cpp/comments/80m4vx/favorite_c_coding_standards/)
* [C++ Core Guidelines](http://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines)
* [High Integrity C++ Coding Standard](http://www.codingstandard.com/section/index/)
* [Geosoft C++ Programming Practice Guidelines](http://geosoft.no/development/cpppractice.html)
* [Webkit Code Style Guidelines](https://webkit.org/code-style-guidelines/)
