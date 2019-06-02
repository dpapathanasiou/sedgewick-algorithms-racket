# Euclid's algorithm

As Sedgewick describes in the book, Euclid's method is based on the fact that if *u* is greater than *v* then the greatest common divisor of *u* and *v* is the same as the greatest common divisor of *v* and *u* - *v*.

The book uses a [while loop](https://en.wikipedia.org/wiki/While_loop) along with a temporary variable *t* to swap *u* with *v* when needed:

```c
int gcd(int u, int v)
{
  int t;
  while (u > 0)
    {
      if (u < v)
	{
	  t = u;
	  u = v;
	  v = t;
	}
      u = u - v;
    }
  return v;
}
```

Since there is no *while* in [racket/base](https://docs.racket-lang.org/reference/index.html) (though it does exist in [some](https://docs.racket-lang.org/control-manual/index.html?q=control) [supplemental](https://docs.racket-lang.org/dyoo-while-loop/index.html) [libraries](https://docs.racket-lang.org/misc1/index.html?q=misc1#%28mod-path._misc1%2Fsyntax%29)), the [recursive implementation here](gcd.rkt) is a simpler and more elegant way of achieving the same thing.

Interestingly, *racket/base* already [includes an implementation of gcd](https://docs.racket-lang.org/reference/generic-numbers.html?q=gcd#%28def._%28%28quote._~23~25kernel%29._gcd%29%29) which is why the [provide statement](https://docs.racket-lang.org/guide/module-basics.html) is needed.

The [unit test](gcd-test.rkt) is based on the example given in the book:

```sh
461952, 116298, 113058, 3240, 2898, 342, 162, 18.
```

Run the test in the [DrRacket IDE](https://docs.racket-lang.org/drracket/index.html) or on the command line, using the [raco tool](https://docs.racket-lang.org/raco/index.html):

```sh
$ raco test chapter-2
raco test: "chapter-2/gcd-test.rkt"
raco test: "chapter-2/gcd.rkt"
1 test passed
```
