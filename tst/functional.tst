gap> START_TEST("hilux: functional.tst");
gap> F := FreeGroup("a", "b");;
gap> a := F.1;; b := F.2;;
gap> phi := GroupHomomorphismByImages(F, F, [a, b], [b, a]);;
gap> f := Evaluator(phi);;
gap> f(a);
b
gap> STOP_TEST("functional.txt", 10000);
