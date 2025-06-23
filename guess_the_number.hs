import System.Random

main :: IO ()

main = do

    -- This text displays on loading the function.
    putStrLn "Guess the number between 1 and 10."
    putStrLn "Please enter a number:"

    -- This generates a random number.
    randomNumber <- randomRIO(1,10)

    -- This allows the user to write a number into the console.
    input <- getLine
    let guessnumber = read input :: Int

    -- This prints the number which the user wrote.
    putStrLn $ "You entered: " ++ show guessnumber

    -- This evaluates whether the number is right or wrong.
    if guessnumber == randomNumber
        then 
            putStrLn "Right number."
        else do
            putStrLn "Wrong number."
            putStrLn "The number was" ++ show (randomNumber)
