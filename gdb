
Automatically print variables when a break point is hit :
---------------------------------------------------------

Use  "commands <breakpoint#>" to execute statements when the break point is hit:

For e.g:
(kgdb-amd64-7.7.1-182) info break 2
Num     Type           Disp Enb Address            What
2       breakpoint     keep y   0xffffffff9e71c8ce in Parser::byte(unsigned char) at parser.cpp:571
        breakpoint already hit 315 times
        silent
        printf "CurrentState = "
        output (ParserState) currentState
        printf "\n"
        printf "   NextState = "
        output (ParserState) nextState
        printf "\n"
        
(kgdb-amd64-7.7.1-182)


ParserState is an enum. 
enum ParserState {
	INIT,                  // 0
	PARSING,               // 1
	PARSING_FAILED,        // 2
	PARSING_SUCCESSFUL     // 3
}



Using the 'output' command to print the enum "values" (INIT, PARSING etc) rather than their integer values (0,1,2 etc).
Sample output:

(kgdb-amd64-7.7.1-182) c
Continuing.

CurrentState = INIT
   NextState = PARSING



References:
https://sourceware.org/gdb/onlinedocs/gdb/Break-Commands.html
