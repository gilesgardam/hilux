# Compute abelianization in terms of the invariant factor decomposition.
# This avoids having to do prime factorization a la AbelianInvariants.
InstallGlobalFunction(AbelianInvariantFactors,
function(G)
    local F, M, rels, r, N;
    G := Image(IsomorphismFpGroup(G));
    F := FreeGroupOfFpGroup(G);
    M := [];
    rels := RelatorsOfFpGroup(G);
    if Length(rels) = 0 then
        # treat free G as special case because otherwise extracting the diagonal
        # below cannot infer the correct dimensions
        return 0 * [1..Length(GeneratorsOfGroup(F))];
    fi;
    for r in rels do
        Add(M, List(GeneratorsOfGroup(F), x -> ExponentSumWord(r, x)));
    od;
    # a note on the slightly unusual convention here:
    # M acts on the right of Z^#rels which ensures that DiagonalOfMat will
    # correctly pad with 0s when there are more columns than rows i.e. more
    # gens than rels
    N := DiagonalOfMat(SmithNormalFormIntegerMat(M));
    return AsSortedList(Filtered(N, n -> n <> 1));
end);
