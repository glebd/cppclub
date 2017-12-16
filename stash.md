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

# Exceptions vs expected: Let's find a compromise

[Post](http://foonathan.net/blog/2017/12/04/exceptions-vs-expected.html) -- [Reddit thread](https://www.reddit.com/r/cpp/comments/7hk1gs/exceptions_vs_expected_lets_find_a_compromise/?st=jatcyvuo&sh=5b3957ef)

* Exceptions: Writing exception safe code is hard
* Exceptions are not easily composable: There is only one current exception, you can’t have multiple ones. This was a problem, for example, for the C++17 [parallel algorithms](http://www.bfilipek.com/2017/08/cpp17-details-parallel.html). What if an exception is thrown in multiple of the worker threads? How to report all of them back to the caller? The implementation gave up on solving that problem and just decided to terminate the program if any exception is thrown.
* As with most things, the disadvantages are opposites: “exceptions are too implicit!” — “ADTs are too explicit!”

# Exceptions vs expected: Let's find a compromise (cont.)

You’re writing a library and have a function that may fail — how do you report the error? If you want to write a truly flexible API, you have to do both: exceptions and error return codes. Because sometimes the error is “exceptional” and sometimes it isn’t.

Swift choose to use exceptions. *(Swift doesn’t use exceptions — GD)*

`defer` allows guaranteed cleanup without the boilerplate of RAII" *(`defer` is equivalent to `finally`, and what boilerplate is that? — GD)*

# Exceptions vs expected: Let's find a compromise (cont.)

Rust: ADT for error handling. `Result<T,E>`.

```rust
result = foo();
if (!result)
  return result.error();
// do something with result.value()

// old way
result = try!(foo());

// new built-in language feature
result = foo()?;
```

# How to handle errors in constructors without exceptions

[Post](http://foonathan.net/blog/2017/01/09/exceptions-constructor.html)

> If you do not have exceptions, reporting errors from a constructor is impossible without sacrificing guarantees. Where possible, simply use an alternative and non-recoverable way of error reporting.

> If that’s not applicable, provide a static function as the only way to create the object. It does not return an object directly, but an `optional` type. Carefully craft the implementation, so that the actual private constructor will only be called, when no operation can fail. Then every object will be valid, just like it were the case when using exceptions.

# A call for data on exceptions, by Simon Brand

[Post](https://blog.tartanllama.xyz/exception-data/)

* [C++ Core Guidelines: Error Handling](https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#e-error-handling)
* [Error handling links and resources](https://github.com/MattPD/cpplinks/blob/master/error_handling.md)

# ComputeCpp 0.5.0 and SYCL 1.2.1

* [Blog post by Codeplay](https://codeplay.com/portal/12-06-17-computecpp-ce-0-5-0-released-and-sycl-1-2-1-ratified)
* [Download](https://developer.codeplay.com/)
* SYCL is used in machine learning. ComputeCpp, Codeplay's implementation of the SYCL standard can already be used to execute TensorFlow applications on SPIR OpenCL supported hardware.
* An ARM release of ComputeCpp is also now available and allows developers to target a range of embedded processors using SYCL.

# CUTLASS by NVIDIA

Today, we are introducing a preview of CUTLASS (CUDA Templates for Linear Algebra Subroutines), a collection of CUDA C++ templates and abstractions for implementing high-performance GEMM computations at all levels and scales within CUDA kernels.

* [Announcement](https://devblogs.nvidia.com/parallelforall/cutlass-linear-algebra-cuda/)
* [GitHub](https://github.com/NVIDIA/cutlass) (BSD-3-Clause)

# HPX on a RasPI cluster

* [Slides](http://reu.cct.lsu.edu/documents/2017-presentations/Goncalves-Presentation.pdf)

# CppCon 2017: Juan Arrieta “Traveling the Solar System with C++: Programming Rocket Science”

[YouTube](https://www.youtube.com/watch?v=YXs3DFrZZL4)

# Clipp: command-line argument handler

Easy to use, powerful and expressive command line argument handling for C++11/14/17 contained in a single header file.

* [GitHub](https://github.com/muellan/clipp) (MIT)

# Compile-time String Obfuscator

[GitHub](https://github.com/urShadow/StringObfuscator) (C++14) (MIT)

```cpp
#include <iostream>
#include "str_obfuscator.hpp"

int main(void)
{
  std::cout << cryptor::create("Hello, World!").decrypt()
            << "\n";
  return 0;
}
```

# Vc: SIMD Vector Classes for C++ by Matthias Kretz

* [GitHub](https://github.com/VcDevel/Vc) (C++14) (BSD-3-Clause)
* [P0214R7: Data-Parallel Vector Types & Operations](http://www.open-std.org/jtc1/sc22/wg21/docs/papers/2017/p0214r7.pdf)

# libbson: A BSON utility library by MongoDB

* [GitHub](https://github.com/mongodb/libbson) (Apache-2.0)

# C++ poetry

[Reddit](https://www.reddit.com/r/cpp/comments/7crald/a_c_poem/)

```cpp
void spanish_inquisition() noexcept
{
    throw std::unexpected;
}
```

# Callbacks in C++

[Article](https://sudomakeinstall.io/posts/2017/11/30/callbacks-in-cpp11/)

* Function pointer
* Pointer to member function
* Functor
* Lambda

# Quote

Kevlin Henney:

> A common fallacy is to assume authors of incomprehensible code will be able to express themselves clearly in comments.
