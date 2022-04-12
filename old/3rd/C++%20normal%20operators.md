# C++ Operator Signatures
This is a list of C++ operators that can be overloaded and their normal signatures(a.k.a what an int would do).  The order is the preffered order to use them(The first one listed is often preffered)

## Arithmetic
### ```operator+``` addition
* free function -> ```T operator+( T const & lhs, T const & rhs )```
* member function -> ```T operator+( T const & rhs ) const```

### ```operator+``` unary plus
* member function -> ```T operator+( ) const```
* free function -> ```T & operator+( T & value )```

### ```operator+=``` addition assignment
* member function -> ``` T & operator+=( T const & rhs )``` 
* free function -> ``` T & operator+=( T & lhs, T const & rhs )```

### ```operator++``` increment
* member function -> ```T & operator++( )``` -> prefix ++T
* member function -> ```T operator++( int )``` -> postfix T++
* free function -> ```T & operator++( T & value )``` -> prefix ++T
* free function -> ```T operator++( T & value, int )``` -> postfix T++

### ```operator-``` subtraction
* free function -> ```T operator-( T const & lhs, T const & rhs )```
* member function -> ```T operator-( T const & rhs ) const```

### ```opeator-``` unary negation
* member function -> ```T operator-( ) const```
* free function -> ```T & operator-( T & value )```

### ```operator-=``` subtraction assignment
* free function -> ``` T & operator-=( T & lhs, T const & rhs )```
* member function -> ``` T & operator-=( T const & rhs )``` 

### ```operator--``` decrement
* member function -> ```T & operator--( )``` -> prefix --T
* member function -> ```T operator--( int )``` -> postfix T--
* free function -> ```T & operator--( T & value )``` -> prefix --T
* free function -> ```T operator--( T & value, int )``` -> postfix T--

### ```operator*``` multiplication
* free function -> ```T operator*( T const & lhs, T const & rhs )```
* member function -> ```T operator*( T const & rhs ) const```

### ```operator*=``` multiplication assignment
* free function -> ``` T & operator*=( T & lhs, T const & rhs )```
* member function -> ``` T & operator*=( T const & rhs )``` 

### ```operator/``` division
* free function -> ```T operator/( T const & lhs, T const & rhs )```
* member function -> ```T operator/( T const & rhs ) const```

### ```operator/=``` division assignment
* free function -> ``` T & operator/=( T & lhs, T const & rhs )```
* member function -> ``` T & operator/=( T const & rhs )``` 

### ```operator%``` modulus/remainder
* free function -> ```T operator%( T const & lhs, T const & rhs )```
* member function -> ```T operator%( T const & rhs ) const```

### ```operator%=``` modulus/remainder assignment
* free function -> ```T & operator%=( T & lhs, T const & rhs )```
* member function -> ```T & operator%=( T const & rhs )```

## Bitwise
### ```operator<<``` left shift
* free function -> ```T operator<<( T const & lhs, size_t pos )```
* member function -> ```T operator<<( size_t pos ) const```

### ```operator<<=``` left shift assignment
* free function -> ```T & operator<<=( T & lhs, size_t pos )```
* member function -> ```T & operator<<=( size_t pos )```

### ```operator>>``` right shift
* free function -> ```T operator>>( T const & lhs, size_t pos )```
* member function -> ```T operator<<( size_t pos ) const```

### ```operator>>=``` right shift assignment
* free function -> ```T & operator>>=( T & lhs, size_t pos )```
* member function -> ```T & operator<<=( size_t pos )```

### ```operator|``` or ```operator bitor``` bitwise or
* free function -> ```T operator|( T const & lhs, T const & rhs )```
* member function -> ```T operator|( T const & rhs ) const```

### ```operator|=``` or ```operator or_eq``` bitwise or assignment
* free function -> ```T & operator|=( T & lhs, T const & rhs )```
* member function -> ```T & operator|=( T const & rhs )```

### ```operator&``` or ```operator bitand``` bitwise and
* free function -> ```T operator&( T const & lhs, T const & rhs )```
* member function -> ```T operator&( T const & rhs ) const```

### ```operator&=``` or ```operator and_eq``` bitwise and assignment
* free function -> ```T & operator&=( T & lhs, T const & rhs )```
* member function -> ```T & operator&=( T const & rhs )```

### ```operator^``` or ```operator xor``` bitwise xor
* free function -> ```T operator^( T const & lhs, T const & rhs )```
* member function -> ```T operator^( T const & rhs ) const```

### ```operator^=``` or ```operator xor_eq``` bitwise xor assignment
* member function -> ```T operator^=( T const & rhs ) const```
* free function -> ```T & operator^=( T & lhs, T const & rhs )```

### ```operator~``` one's compliment or bitwise not
* member function -> ```T operator~( ) const ```
* free function -> ```T operator~( T const & value )```

## Logical
### ```operator==``` equality
* free function -> ```bool operator==( T const & lhs, T const & rhs )```
* member function -> ```bool operator==( T const & rhs )```

### ```operator!=``` or ```operator not_eq``` inequality
* free function -> ```bool operator!=( T const & lhs, T const & rhs )```
* member function -> ```bool operator!=( T const & rhs )```

### ```operator<``` less than
* free function -> ```bool operator<( T const & lhs, T const & rhs )```
* member function -> ```bool operator<( T const & rhs )```

### ```operator<=``` less than or equal
* free function -> ```bool operator<=( T const & lhs, T const & rhs )```
* member function -> ```bool operator<=( T const & rhs )```

### ```operator>``` greater than
* free function -> ```bool operator>( T const & lhs, T const & rhs )```
* member function -> ```bool operator>( T const & rhs )```

### ```operator>=``` greater than or equal
* free function -> ```bool operator>=( T const & lhs, T const & rhs )```
* member function -> ```bool operator>=( T const & rhs )```

### ```operator&&``` or ```operator and``` logical and
* free function -> ```bool operator&&( T const & lhs, T const & rhs )```
* member function -> ```bool operator&&( T const & rhs )```

### ```operator||``` or ```operator or``` logical or
* free function -> ```bool operator||( T const & lhs, T const & rhs )```
* member function -> ```bool operator||( T const & rhs )```

### ```operator!``` or ```operator not``` logical not
* member function -> ```bool operator!( ) const```
* free function -> ```bool operator!( T const & value )```

### ```operator<=>``` spaceship operator
* See [p0515 paper](https://wg21.link/p0515r3)

## Other
### ```operator->``` member access
* member function -> ```T * operator->( )```
* member function -> ```T const * operator->( ) const``` also T * is normal

### ```operator*``` dereference
* member function -> ```T & operator*( )```
* member function -> ```T const & operator*( ) const```

### ```operator[]``` subscript
* member function -> ```T & operator[]( size_t pos )```> pos can be any single argument type
* member function -> ```T const & operator[]( size_t pos ) const```> pos can be any single argument type

### ```operator->*```
* free function -> ```Anything operator->( Anything lhs, Anything rhs )```

### ```operator( )``` function
* member function -> ```Anything operator( )( Anything... args )```

### ```operator,``` comma
* Please don't :)
* member function -> ```Anything operator,( Anything )```
* free function -> ```Anything operator,( Anything lhs, Anything rhs )```

### ```operator&``` address of
* Please don't :)
* member function -> ```T * operator&( )```
* member function -> ```T const * operator&( ) const``` or T*

### ```operator( )``` cast
* member function -> From a type T -> ```operator U( ) const```

### ```operator<<``` stream insertion
* free function -> ```std::ostream & operator<<( std::ostream & os, T const & value )```

### ```operator>>``` stream extraction
* free function -> ```std::istream & operator>>( std::istream & is, T & value )```

### ```operator new``` or ```operator new[]```
* See [cppreference.com operator new](https://en.cppreference.com/w/cpp/memory/new/operator_new)

### ```operator delete``` or ```operator delete[]```
* See [cppreference.com operator delete](https://en.cppreference.com/w/cpp/memory/new/operator_delete)
