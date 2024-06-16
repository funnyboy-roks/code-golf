#define P printf(
i,c;main(){for(;i++<1000;c=0,P"
"))i%2?c++:P"Foo"),i%3?c++:P"Fizz"),i%5?c++:P"Buzz"),i%7?c++:P"Bar"),c-4?0:P"%d",i);}