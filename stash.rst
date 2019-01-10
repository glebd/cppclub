=====
Stash
=====

Oh DeaR
-------

* `Oh DeaR`_ by JeanHeyd Meneide
* Reddit: https://www.reddit.com/r/cpp/comments/a5rkfr/oh_dear/

.. _`Oh DeaR`: https://thephd.github.io/oh-dear-odr-trap

Intel Contributes Its Parallel STL Implementation To LLVM
---------------------------------------------------------

* `Intel Contributes Its Parallel STL Implementation To LLVM`_
* Announcement: https://lists.llvm.org/pipermail/cfe-dev/2018-December/060606.html
* Code: https://github.com/llvm-mirror/pstl/commits/master
* Reddit: https://www.reddit.com/r/cpp/comments/a9n0gk/intel_contributes_its_parallel_stl_implementation/

.. _`Intel Contributes Its Parallel STL Implementation To LLVM`: https://www.phoronix.com/scan.php?page=news_item&px=Intel-Parallel-STL-Commit

Rant alert: C++ error handling
------------------------------

Reddit: https://www.reddit.com/r/cpp/comments/ae60nb/decades_have_passed_standard_c_has_no_agreed_and/

    I think the problem really stems from the places where exceptions don't work well. Otherwise I'd use them all the time. <...> E.g. im working on an app using actors which send messages back and forth. Throwing an exception in the message handler may mean something but it certainly isn't going to automatically make its way back to it's source. [#]_

    FYI ``Outcome`` and ``std::expected<T, E>`` have diverged by a fair bit <...>. They are now two differing interpretations of how best to implement exception-less failure handling. There is a third approach proposed for Boost as well, called LEAF_. [#]_

.. _LEAF: https://zajo.github.io/leaf/
.. [#] https://www.reddit.com/r/cpp/comments/ae60nb/decades_have_passed_standard_c_has_no_agreed_and/edmnpez/
.. [#] https://www.reddit.com/r/cpp/comments/ae60nb/decades_have_passed_standard_c_has_no_agreed_and/edmpcon/

Cpp-Taskflow
------------

* Code: https://github.com/cpp-taskflow/cpp-taskflow
* Docs: https://cpp-taskflow.github.io/cpp-taskflow-documentation.github.io/
* Reddit: https://www.reddit.com/r/cpp/comments/9b01ek/cpptaskflow_v20_a_new_taskbased_parallel/

Proper way to iterate backwards in C++
--------------------------------------

https://www.reddit.com/r/cpp/comments/947a1z/proper_way_to_do_backward_iteration_in_c/

.. code:: c++

    for (size_t i = data.size() - 1; i >= 0; --i) { ... } // Nope
    for (size_t i = data.size(); i--;) { ... } // The C way

    // C++17
    std::vector<int> vec;
    for (auto [value, idx] : reverse_index_adapter(vec)) {
        // idx = n-1, n-2, ... 0
    }

    std::for_each(vec.rbegin(), vec.rend(), []() { ... }); // No index

    for (auto it = data.rbegin(); it != data.rend(); ++it) {
        auto i = std::distance(it, data.rend()) - 1;
    }

Move smart pointers in and out functions in modern C++
------------------------------------------------------

* `Move smart pointers in and out functions in modern C++`_
  * Reddit: https://www.reddit.com/r/cpp/comments/aaux96/move_smart_pointers_in_and_out_functions_in/

.. _`Move smart pointers in and out functions in modern C++`: https://www.internalpointers.com/post/move-smart-pointers-and-out-functions-modern-c
