import System.Environment
import System.Exit

usage = putStrLn "Usage: picodnf OPTION package .."
version = putStrLn "PicoDNF 0.0.1"

main = getArgs >>= parse

exit = exitWith ExitSuccess

parse ["-h"] = usage >> exit
parse ["-v"] = version >> exit
parse [] = usage >> exit
parse arguments = action (head arguments) (tail arguments)

action "install" packages = do
    putStr "Installing packages: "
    print packages
    install packages

action "upgrade" packages = do
    putStr "Upgrading packages: "
    print packages
    install packages

action "remove" packages = do
    putStr "Removing packages: "
    print packages
    install packages

action unknown _ = do
    putStr "Unknown action: "
    print unknown
    exit

install packages = exit
update packages = exit
remove packages = exit
