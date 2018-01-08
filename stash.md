# Intel C++ Compiler 18 released

[ICC 18 Release Notes](https://software.intel.com/en-us/articles/intel-c-compiler-180-for-linux-release-notes-for-intel-parallel-studio-xe-2018)

* Includes an implementation of Parallel STL algorithms

# An Introduction to Reflection in C++

[Blog post by Jackie Kay](http://jackieokay.com/2017/04/13/reflection1.html)

* Terminology:
    * "_Introspection_ is the ability to inspect a type and retrieve its various qualities. You might want to introspect an object’s data members, member functions, inheritance hierarchy, etc. And you might want to introspect different things at compile time and runtime."
    * "_Metaobjects_ are the result of introspection on a type: a handle containing the metadata you requested from introspection. If the reflection implementation is good, this metaobject handle should be lightweight or zero-cost at runtime."
    * "_Reification_ is a fancy word for “making something a first-class citizen”, or “making something concrete”. We will use it to mean mapping from the reflected representation of objects (metaobjects) to concrete types or identifiers."
* "Run-time type information/identification is a controversial C++ feature, commonly reviled by performance maniacs and zero-overhead zealots. If you’ve ever used `dynamic_cast`, `typeid`, or `type_info`, you were using RTTI."
* Macros: "Hana and MPL can adapt a user-defined POD-type into an introspectible structure which tuple-like access. The code is quite formidable and verbose. That’s because there’s a separate macro case for adapting a struct of specific sizes. For example, all structs with 1 member map to a particular macro, all structs with 2 members map to the next macro, etc." Max 62 members per struct.
* "The current pinnacle of POD introspection in C++14 is a library called **magic_get** (Precise and Flat Reflection, pre-Boost `boost::pfr`) by Antony Polukhin — [https://github.com/apolukhin/magic_get](https://github.com/apolukhin/magic_get) — C++17 implementation doesn’t use macros, just templates and structured bindings." Still, max 101 members per struct.
* Other languages: Python, Java, C#, Go
* C++20: `reflexpr`: "The `reflexpr` proposal, by Matúš Chochlík, Axel Naumann, and David Sankel, introduces several “metaobjects” which are accessed by passing a type to the new `reflexpr` operator."
* C++20: `operator$`: "Andrew Sutton and Herb Sutter wrote _A design for static reflection_, which introduces the reflection operator, `$`, as a way of getting object metadata out of a class, namespace, etc. (Using $ has been argued out of favor because it is common in legacy code, particularly in code generation and template systems which are not necessarily valid C++ but produce C++ sources.)"
* "The fundamental design difference between these two papers is whether the result of the reflection operator is a value or a type."
* "Concepts are design prerequisite for both of the reflection papers."

# Static Duck Typing in C++

[Blog post by Philippe Groarke
](https://philippegroarke.com/blog/2017/05/09/static-duck-typing-in-c/)

* "_Duck Typing_ is a pattern by which you accept any kind of object for a certain task, but only call certain methods, or do certain operations, if the object has the required member functions/member variables."
* Stuffs unrelated objects in a tuple, then calls apply on it to call a given member function.
* Uses SFINAE + `enable_if` to detect member function availability.
* Uses macros (ugh) to generalize the code.
* One comment mentions `overload_linearly` as an alternative for a simpler implementation: "A function that takes an arbitrarily list of function objects and returns a function object that combines them all through overloading. The difference between overload and `overload_linearly` is that the latter builds an overload set that only tries the next function object if the previous one did not match." — See [p0051r2 (PDF)](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2016/p0051r2.pdf): _C++ generic overload function_, by Vicente J. Botet Escribá.
* This should be solved by Concepts.
    * Aside: There are many tricks and problems in various articles lately that fall under “this will be solved by Concepts” category.

# Quote

"If you think it’s simple, then you have misunderstood the problem." — Bjarne Stroustrup

# Variadic CRTP by Steve Dewhurst

[PDF](http://stevedewhurst.com/once_weakly/once-weakly20170328/once-weakly20170328.pdf)

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

# Ground Up Functional API Design in C++, by Sumant Tambe

* [Article](https://cpptruths.blogspot.co.uk/2017/12/ground-up-functional-api-design-in-c.html)
* [Video: Systematic Generation of Data and Types in C++](https://vimeo.com/247642986) -- this talk presents two classic techniques from the functional domain -- composable data generators and property-based testing -- implemented in C++14 for testing a generic serialization and deserialization library ([RefleX](http://rticommunity.github.io/rticonnextdds-reflex/)). The talk describes the laws of monoids, functors, applicative, and monads and how they are implemented in a simple to understand abstraction of data generators.
* [Slides](https://www.slideshare.net/SumantTambe/systematic-generation-data-and-types-in-c)
* [GitHub: cpp-generators](https://github.com/sutambe/cpp-generators)
* See also: [DDS](https://en.wikipedia.org/wiki/Data_Distribution_Service)
