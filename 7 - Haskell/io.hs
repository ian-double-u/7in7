tryIO = do putStr "What is your name? " ;
            line <- getLine ;
            let { backwards = reverse line } ;
            return ("Hello " ++ line ++ ". Your name backwards is " ++ backwards ++ ". ")