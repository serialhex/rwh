-- file: ch03/NestedLets.hs
foo = let a = 1
      in let b = 2
         in a + b

-- perfectly kosher
bar = let x = 1
      in ((let x = "foo" in x), x)

-- horrible, horrible thing to do
quux a = let a = "foo"
         in a ++ "eek!"