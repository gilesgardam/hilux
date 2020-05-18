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
gap> STOP_TEST("demo.tst", 10000);
