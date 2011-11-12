-- file: ch02/lastButOne.hs
lastButOne :: [a] -> a
lastButOne xs = if length xs <= 2
				then last (take 1 xs)
				else lastButOne (tail xs)