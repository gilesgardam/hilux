# Helper function to save typing Image everywhere.
InstallGlobalFunction(Evaluator,
function(hom)
    return x -> Image(hom, x);
end);
