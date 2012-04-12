-- file: ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
            | Empty
              deriving (Show)

simpleTree = Node "parent" (Node "left child" Empty Empty)
                           (Node "right child" Empty Empty)

nodesAreSame (Node a _ _) (Node b _ _)
    | a == b     = Just a
nodesAreSame _ _ = Nothing


data MaybeTree a = Node2 a (Maybe (MaybeTree a)) (Maybe (MaybeTree a))
                   deriving (Show)

--maybeTree = Node2 "top" (Node2 "left" Nothing Nothing) Nothing

myTree = Node2 "parent" (Just (Node2 "L" (Just (Node2 "LL" Nothing Nothing)) Nothing)) (Just (Node2 "R" (Just (Node2 "RL" Nothing Nothing)) Nothing))

--maybeTree = (Just "top") ((Just "left") Nothing Nothing)
--                         ((Just "right") Nothing Nothing)