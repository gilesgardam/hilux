gap> START_TEST("hilux: demo.tst");
gap> # AbelianInvariantFactors
gap> # snappy.Manifold('v2983(3,4)').fundamental_group().gap_string();
gap> G := CallFuncList(function() local F, a, b; F := FreeGroup("a", "b"); a := F.1; b := F.2;   return F/[a*a*b*a*a*b*a*a*a*b^-1*b^-1*a*a*a*b^-1*b^-1*a*a*a*b^-1*b^-1*a*a*a*b, a*a*b*a*a*b*b*b*a*a*b*a*a*b*a*a*b*b*b*a*a*b*a*a*b*a*a*b*b*b*a*a*b*a*a*b*a*a*a*a*a*b]; end,[]);;
gap> AbelianInvariants(G);
[ 347 ]
gap> AbelianInvariantFactors(G);
[ 347 ]
gap> H := DerivedSubgroup(G);;
gap> AbelianInvariantFactors(H);
[ 79326495547269204211026529153, 79326495547269204211026529153 ]
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
