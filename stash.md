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

# True parallelism, with no concept of threads - Alfred Bratterud - Meeting C++ 2017

* [Video](https://www.youtube.com/watch?v=9IXivbSA_5A)
* [IncludeOS](http://www.includeos.org/)
* [GitHub](https://github.com/hioa-cs/IncludeOS)

Fibers, green threads, channels, lightweight processes, coroutines, pthreads - there are lots of options for parallelism abstractions. But what do you do if you just want your application to run a specific task on a specific core on your machine? In IncludeOS we have proper multicore support allowing you to do just that in C++: assign a task - for instance a lambda - directly to an available CPU. <...> In this talk we’ll <...> explore how direct per-core processing can be combined with threading concepts like C++14 fibers or coroutines, without taking away from the simplicity of getting work done uninterrupted.

# True parallelism, with no concept of threads - Alfred Bratterud - Meeting C++ 2017 (cont.)

Conclusions:

* You don't need classical threads to utilize CPU cores
    * Fibers and coroutines can run directly on them
* A pthreads backend requires true blocking
    * Might require fibers, yielding directly to scheduler
* Coroutines TS beats the simplest stack switch
* Stackful coroutines would replace our fibers
* Expect more multicore magic from IncludeOS

# Ground Up Functional API Design in C++, by Sumant Tambe

* [Article](https://cpptruths.blogspot.co.uk/2017/12/ground-up-functional-api-design-in-c.html)
* [Video: Systematic Generation of Data and Types in C++](https://vimeo.com/247642986) -- this talk presents two classic techniques from the functional domain -- composable data generators and property-based testing -- implemented in C++14 for testing a generic serialization and deserialization library ([RefleX](http://rticommunity.github.io/rticonnextdds-reflex/)). The talk describes the laws of monoids, functors, applicative, and monads and how they are implemented in a simple to understand abstraction of data generators.
* [Slides](https://www.slideshare.net/SumantTambe/systematic-generation-data-and-types-in-c)
* [GitHub: cpp-generators](https://github.com/sutambe/cpp-generators)
* See also: [DDS](https://en.wikipedia.org/wiki/Data_Distribution_Service)

# Video: Deep Learning with C++ - Peter Goldsborough - Meeting C++ 2017

* [YouTube](https://www.youtube.com/watch?v=8GoYXWOq55A)
* [Google's TensorFlow C++ API](https://www.tensorflow.org/api_guides/cc/guide)
* [How to train a Deep Neural Network using only TensorFlow C++](https://matrices.io/training-a-deep-neural-network-using-only-tensorflow-c/) -- [GitHub](https://github.com/theflofly/dnn_tensorflow_cpp)

# HPX v1.1 released

* [Download](http://stellar-group.org/libraries/hpx/downloads/)
* [Changelog](http://stellar.cct.lsu.edu/files/hpx-1.1.0/html/hpx/whats_new/hpx_1_1_0.html)
* Requires GCC 5.9+, VS2015.5+, Boost 1.55+, CMake 3.3.2+

> HPX is a general purpose parallel C++ runtime system for applications of any scale. It implements all of the related facilities as defined by the C++ Standard. <...> HPX provides the only widely available open-source implementation of the new C++17 parallel algorithms. Additionally, HPX implements <...> large parts of the C++ Concurrency TS, task blocks, data-parallel algorithms, executors, index-based parallel for loops, and many more.

# A C++ implementation of a memory efficient hash map and hash set

* [GitHub](https://github.com/Tessil/sparse-map) (MIT)
* [How Google Sparsehash achieves two bits of overhead per entry using sparsetable](https://smerity.com/articles/2015/google_sparsehash.html)

# Brigand -- Instant compile time C++ 11 metaprogramming library

* [GitHub](https://github.com/edouarda/brigand) (header-only, Boost Software License 1.0)
* [Docs](https://github.com/edouarda/brigand/wiki)
* [Meeting C++ 2015 video](https://www.youtube.com/watch?v=B8XSDhWx7hY)
* [CppCon 2016 video](https://www.youtube.com/watch?v=ky0JdPh_LgE)
* [Ebook](http://www.oreilly.com/programming/free/practical-c-plus-plus-metaprogramming.csp)

> Everything you were doing with Boost.MPL can be done with Brigand.

**Example tasks**: Create a tuple from a list of types and then transform it into a variant; Look for the presence of a type in a tuple and get its index; Sort a list of types; Advanced static assertion with arithmetics and complex functions; Go through a list of types and perform a runtime action for each type.

# Floating point visually explained

* [Article](http://fabiensanglard.net/floating_point_visually_explained/)

# Favourite C++ coding standards

* [Reddit](https://www.reddit.com/r/cpp/comments/80m4vx/favorite_c_coding_standards/)

# As a C++ developer I think that Rust is...

[Reddit](https://www.reddit.com/r/cpp/comments/84z9a3/as_a_c_developer_i_think_that_rust/)

* is a good language but the community is toxic towards people not using Rust
* lacks function overloading, value generics, variadic generics and exceptions
* is much nicer, though I doubt I'll get to use it in my current job any time soon
* solves a non-problem if you use modern C++
* is a topic way too often spawning on this C++ subreddit
* would have been a compelling alternative if it came out 10 years ago
* lacks library support
* less powerful but more user-friendly than C++
