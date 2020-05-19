gap> START_TEST("hilux: demo.tst");
gap> # AbelianInvariantFactors
gap> C6 := CyclicGroup(6);;
gap> AbelianInvariants(C6);
[ 2, 3 ]
gap> AbelianInvariantFactors(C6);
[ 6 ]
gap> #
gap> # Evaluator
gap> A := AbelianGroup([2, 2]);;
gap> B := Group([(1,2), (3,4)]);;
gap> phi := GroupHomomorphismByImages(A, B);;
gap> f := Evaluator(phi);;
gap> List(A, f);
[ (), (3,4), (1,2), (1,2)(3,4) ]
gap> #
gap> # Itertools
gap> List(xrange(3, 16, 4)) = [3, 7..15];
true
gap> List(Fxrange(FreeGroup("a", "b"), 1, 3));
[ a, a^-1, b, b^-1, a^2, a^-2, b*a, b^-1*a, b*a^-1, b^-1*a^-1, a*b, a^-1*b,
  a*b^-1, a^-1*b^-1, b^2, b^-2 ]
gap> Size(Sphere(FreeGroup(3), 2)) = 6 * 5;
true
gap> Size(Ball(FreeGroup(2), 5)) = 1 + 4 * (3^5 - 1) / (3 - 1);
true
gap> STOP_TEST("demo.tst", 10000);
