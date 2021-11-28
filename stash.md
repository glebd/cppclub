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

## PLF C++ Library

[This library](https://plflib.org) by Matt Bentley provides alternatives to Standard Library's containers and offers some additional utilities and data types, like `plf::colony` (which apparently is not coming to C++23 as `std::hive` -- maybe C++26 will get it). The library is header-only and comes under a permissive [ZLib licence](https://en.wikipedia.org/wiki/Zlib_License). It supports C++ standards from C++03 to C++20 and builds with MSVC, Clang and GCC. There are links to talks that the author gave at various C++ conferences, on the colony data type and how to design a faster list data structure.

## When to use PIMPL

[This post on Reddit](https://www.reddit.com/r/cpp/comments/r4atq2/when_to_use_the_pimpl_idiom/) is asking when to use the Pointer-to-Implementation ([PIMPL](https://en.cppreference.com/w/cpp/language/pimpl)) idiom. It used to be recommended to break dependencies between components in big systems, to decrease the number of files to recompile when a header changes, and to guard against ABI breaks to a degree. Reddit also says that a separate use case for PIMPL is to prevent inclusuon of the `Windows.h` header, or to act as a wrapper for a large library used in implementation that client code doesn't need to know about. It is also used widely in [Qt](https://code.woboq.org/qt5/).

However, if you are compiling everything together or use static linking, PIMPL doesn't add anything except an unnecessary level of indirection and heap allocation overhead. The added indirection can harm optimization. In large codebases it can have a detrimental effect of complicating class hierarchies and relationships.

There is one other thing that will make PIMPL obsolete: modules.

## Bad C++ habits

[A redditor asks](https://www.reddit.com/r/cpp/comments/r4kkcd/what_are_some_bad_c_habits_you_know_or_have_seen/) what bad habits developers have seen in C++ code. The replies include:

- Abuse of `std::shared_ptr` where every non-scalar function parameter is a `shared_ptr`. I'm working on several codebases like this. As they say, you can write Java in any language.
- [STL says](https://www.reddit.com/r/cpp/comments/r4kkcd/what_are_some_bad_c_habits_you_know_or_have_seen/hmhdvdd/):
    + Working around a bug without reporting it
    + Not commenting the workaround
    + Not citing the bug database and number in the comment
    + Not using a uniform pattern for such commented workarounds, so that they can be found and re-evaluated/removed later.
    + Good habits: In MSVC's STL, we use `// TRANSITION, BugDatabase-NNNN` for this purpose.

Of course, another redditor grepped the Microsoft STL code for this and found 667 instances!

Other bad habits included:

- overcomplicated logical expressions: `if (a == b) return true; else return false;`
- throwing exceptions on logic errors instead of terminating the program (this one occurs often in our code, and I'm not sure what to do in case a library must absolutely not crash even when the programmer screwed up).
- unnecessarily complex template frameworks without documentation
- unnecessarily complicated class hierarchies (I can physically feel this one)
- union-based type punning (legal in C, not so in C++)
- two-step class initialization (hello Symbian OS!)

[This redditor](https://www.reddit.com/r/cpp/comments/r4kkcd/what_are_some_bad_c_habits_you_know_or_have_seen/hmifyrk/) gives us some more:

- Using `unique_ptr` when a simple composition would suffice.
- Using `shared_ptr` when a `unique_ptr` would suffice.
- Mocking everything and creating a maintenance nightmare.
- Taking test coverage to an extreme, letting it damage the design and clarity just to make it unit-testable to an extreme degree (>%98 coverage).

[A sad reply](https://www.reddit.com/r/cpp/comments/r4kkcd/what_are_some_bad_c_habits_you_know_or_have_seen/hmipdzq/):

> You just described the code base I work on everyday!

[Another good list](https://www.reddit.com/r/cpp/comments/r4kkcd/what_are_some_bad_c_habits_you_know_or_have_seen/hmi7s8r/):

- C strings and arrays, with enough pointer arithmetic
- Macros everywhere instead of templates
- Disabling exceptions, but then not being consistent checking error returns codes from every call
- Using pointers instead of references for out parameters
- The new fashion of header only libraries
- Being too clever with SFINAE and template metaprogramming

Even more:

- Defining functions in headers (ouch, can feel that too!)
- Writing everything as a template, just because someone might one day want to customize something
- Using `std::endl` -- this adds unnecessary overhead to the already slow stream IO
- Not using the correct include format (`""` vs `<>`)
- Fixing problem code while failing to find and inform author (and reviewer), which deprives them of the opportunity to improve
- Minimal or no use of `const`
- Speculatively or unnecessarily defensive code (instead of assertive code)
- Including pointers in a typedef or macro (`using T = *myclass`) -- the 'handle' pattern. Looking at you, CUDA and OpenCascade
- Using `std::map` for anything but huge runtime maps
- Uninitialized variables

I'm sure everyone can add to this list. A large part of my work is dealing with technical debt, which is all the above and more.

## Apple Metal C++ bindings

Apple published [C++ bindings for Metal](https://developer.apple.com/metal/cpp/). [Metal](https://developer.apple.com/metal/) is Apple's high-level graphics and general acceleration API (Vulcan anyone?). I guess if you control both your hardware and software stacks, you'd want to have something of your own in the high-performance graphics department, so that you can tune your silicon accordingly. [And oh boy did they tune it](https://www.tomsguide.com/uk/news/macbook-pro-m1x-benchmarks-just-leaked-and-intel-should-be-scared) -- are you feeling OK Intel?

It's nice though that Apple now allows using C++ to write Metal code, given that their main language is Swift (Objective-C is legacy tech now).

## JUCE coding standards

For a sane set of coding standards you can refer to [JUCE](https://juce.com/discover/stories/coding-standards). I only skimmed the article, but nothing jumps out as obviously wrong, or weird, or outdated. A good point of reference if you must come up with your own (none of that Google or a random game company weirdness).

## How is `constexpr` implemented in the compiler

This is what a redditor [asked](https://www.reddit.com/r/cpp/comments/n8pq3z/how_is_constexpr_implemented_in_the_compiler/):

> I know that `constexpr` means that something can be evaluated at compile time. But this obviously means that `constexpr` code must somehow be interpreted, since it must be executed before compilation. Do modern C++ compilers come equipped with full blown C++ interpreters? Or is the `constexpr` code compiled to LLVM and then the resulting bytecode is run on a virtual machine?

The replies shed light on this:

> Not full-blown; it's a significantly-simplified subset of the runtime, and the AST can be reused.

> There's an experiment going on with Clang to replace the AST walking interpreter with a proper byte-code VM.

[Erich Keane](https://www.linkedin.com/in/erichkeane/) of Intel [says](https://www.reddit.com/r/cpp/comments/n8pq3z/how_is_constexpr_implemented_in_the_compiler/gxk8kcc/):

> It's not so much an interpreter as an AST evaluator. The constant evaluator happens after the code has been parsed/lexed/semantically analyzed, and formed into the Abstract Syntax Tree.

> When the compiler evaluates a constant expression, it goes through the AST and evaluates each node to get the answer.

> There IS an effort that is ongoing (though slowly) to replace this with an AST->byte-code type compilation, which can then just be evaluated immediately. My understanding is it is quite a bit faster, particularly when the same code is evaluated multiple times.

[Cling](https://root.cern/cling/) gets a [mention](https://www.reddit.com/r/cpp/comments/n8pq3z/how_is_constexpr_implemented_in_the_compiler/gxln7h2/):

> CERN has developed a C++ interpreter with a REPL called Cling. It is amazing. It is built on top of Clang and LLVM and JITs the code. There is even a Jupyter extension for it so you can use it in a notebook.

> It’s kind of a solution in search of a problem outside of CERN, but man, what a cool solution it is!

MSVC [didn't have an AST](https://devblogs.microsoft.com/cppblog/thoughts-on-the-visual-c-abstract-syntax-tree-ast/) until at least [2015](https://devblogs.microsoft.com/cppblog/rejuvenating-the-microsoft-cc-compiler/) and used a 'token stream' instead (this allowed compilation on some really memory-restricted machines). I'm wondering how that affected the processing of `constexpr` --- or did Microsoft switch to the new compiler front-end by the time `constexpr` support was added?
