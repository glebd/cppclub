=====
Stash
=====

Remote Development with CLion, by Phil Nash
-------------------------------------------

* https://youtu.be/g1zPcja3zAU
* https://www.reddit.com/r/cpp/comments/axw18q/remote_development_with_clion/

What is the Strict Aliasing Rule and Why do we care?
----------------------------------------------------

(OR Type Punning, Undefined Behavior and Alignment, Oh My!), by Shafik Yaghmour

https://gist.github.com/shafik/848ae25ee209f698763cffee272a58f8

In C and C++ aliasing has to do with what expression types we are allowed to access stored values through. In both C and C++ the standard specifies which expression types are allowed to alias which types. The compiler and optimizer are allowed to assume we follow the aliasing rules strictly, hence the term strict aliasing rule. If we attempt to access a value using a type not allowed it is classified as `undefined behavior (UB) <https://en.cppreference.com/w/cpp/language/ub>`_. Once we have undefined behavior all bets are off, the results of our program are no longer reliable.

Same function parameters with different return type in C++17/C++20
------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/aoidsi/what_is_the_solution_for_same_function_parameters/

Before:

.. code:: c++

    template<typename R>
    R foo(int i)
    { ... }

    foo<string>(1);

Same function parameters with different return type in C++17/C++20
------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/aoidsi/what_is_the_solution_for_same_function_parameters/

After:

.. code:: c++

    template<class F> struct Auto : F {
        // conversion operator
        template<class T> operator T() {
            return F::template operator()<T>();
        }
    };

    template<class F> Auto(F) -> Auto<F>; // deduction guide

Same function parameters with different return type in C++17/C++20
------------------------------------------------------------------

https://www.reddit.com/r/cpp/comments/aoidsi/what_is_the_solution_for_same_function_parameters/

After:

.. code:: c++

    template<class... A>
    auto fooWrapper(A&&... a) {
        return Auto{[&]<class T>() { return foo<T>(std::forward<A>(a)...); }};
    };

    template<class... A>
    auto fooWrapper(int i) {
        return Auto{[=]<class T>() { return foo<T>(i); }};
    };

    double d = fooWrapper(42);

**clamp_cast** -- A saturating arithmetic cast
----------------------------------------------

https://github.com/p-groarke/clamp_cast

A narrowing cast that does the right thing. clamp_cast will saturate output values at min or max if the input value would overflow / underflow.

.. code:: c++

    double ld = -42.0;
    unsigned char uc = clamp_cast<unsigned char>(ld);
    // uc == 0

    float f = 500000.f;
    char c = clamp_cast<char>(f);
    // c == 127
