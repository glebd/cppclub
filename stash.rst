=====
Stash
=====

CppCon 2018 - Mark Elendt - Dangling in French and English
----------------------------------------------------------

https://youtu.be/jieYLTcmTS0

.. image:: img/elendt-dangling-1.png

CppCon 2018 - Mark Elendt - Dangling in French and English
----------------------------------------------------------

https://youtu.be/jieYLTcmTS0

.. image:: img/elendt-dangling-2.png

Moving iterators in C++
-----------------------

https://cukic.co/2019/02/09/moving-iterators-in-cxx/

    ``std::move_iterator`` is an iterator adaptor which behaves exactly like the underlying iterator, except that dereferencing converts the value returned by the underlying iterator into an *rvalue*. (https://en.cppreference.com/w/cpp/iterator/move_iterator)

.. code:: c++

    std::vector<fs::directory_entry> results;
    auto dir_items = files_in_dir(...);
    results.insert(results.end(), dir_items.cbegin(), dir_items.cend());

Low-cost Deterministic C++ Exceptions for Embedded Systems
----------------------------------------------------------

https://www.research.ed.ac.uk/portal/files/78829292/low_cost_deterministic_C_exceptions_for_embedded_systems.pdf

James Renwick, Tom Spink, Björn Franke (University of Edinburgh)

    In our novel C++ exception implementation we make use of a stack-allocated object that records the necessary run-time information for throwing an exception, such as the type and size of the exception object. This state is allocated in a single place and is passed between functions via an implicit function parameter injected into functions which support exceptions. The state is initialised by ``throw`` expressions, and is re-used to enable re-throwing. ``catch`` statements use the state in order to determine whether they can handle the exception. After a call to a function which may throw exceptions, a run-time check is inserted to test whether the state containsan active exception.

Fast_ber: ASN.1 BER serialization library
-----------------------------------------

* https://github.com/Samuel-Tyler/fast_ber
* https://www.reddit.com/r/cpp/comments/anwlrs/fast_ber_asn1_ber_serialization_library_written/
* https://en.wikipedia.org/wiki/Abstract_Syntax_Notation_One

C++, it’s not you. It’s me.
---------------------------

Blog post: https://c0de517e.blogspot.com/2019/02/c-its-not-you-its-me.html

    The crux of the issue <...> is the growing disconnect between people woking on big, complex, performance-sensitive and often monolithic and legacy-ridden codebases that we find in game development, and the ideas of "modernity” of the C++ standard community.

`Reddit <https://www.reddit.com/r/cpp/comments/av8mmz/c_its_not_you_its_me/>`_

    I'm just going to throw it out there: I'm tired of reading this kind of stuff from game devs. There's just so much of this kind of stuff.

    Acting like they are the only ones with performance issues. The only ones with complex codebases. The only ones who actually ship code. The ones who are just solving more unique and difficult problems than anyone else, for which c++ falls short by more.
