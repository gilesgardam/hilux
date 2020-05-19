gap> START_TEST("hilux: zzz_demo.tst");
gap> # slow demo tests to run last before you start to go zzzzzzz.....
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
gap> STOP_TEST("zzz_demo.tst", 10000);
