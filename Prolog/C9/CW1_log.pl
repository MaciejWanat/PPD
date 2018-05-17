[1mtrue.[0m

[1]  ?- student(X,Y,Z,A,'informatyka',B).


X = kaczmarek,
Y = janina,
Z = 1989,
A = poznan,
B = pp ;[1m;[0m
X = nowak,
Y = anna,
Z = 1988,
A = olsztyn,
B = uwm ;[1m;[0m
X = jurkowski,
Y = jerzy,
Z = 1990,
A = poznan,
B = uam ;[1m;[0m
X = zemski,
Y = piotr,
Z = 1991,
A = poznan,
B = ue ;[1m;[0m
X = makowska,
Y = zuzanna,
Z = 1990,
A = poznan,
B = pp ;[1m;[0m
X = ratajczak,
Y = agata,
Z = 1992,
A = poznan,
B = uam.

[1]  ?- student(X,Y,Z,A,C,B), A/='poznan'.


[31;1mERROR: Syntax error: Operator expected
ERROR: student(X,Y,Z,A,C,B), 
ERROR: ** here **
ERROR: A/='poznan' . 
[0m[1]  ?- student(X,Y,Z,A,C,B), A\='poznan'.


X = nowak,
Y = anna,
Z = 1988,
A = olsztyn,
C = informatyka,
B = uwm ;[1m;[0m
X = kot,
Y = stefan,
Z = 1989,
A = warszawa,
C = matematyka,
B = uw ;[1m;[0m
X = typowski,
Y = adam,
Z = 1990,
A = krakow,
C = matematyka,
B = uj ;[1m;[0m
[1;31mfalse.[0m

[1]  ?- student(X,Y,Z,A,C,B), Z>1990.


X = kosowski,
Y = jan,
Z = 1991,
A = poznan,
C = matematyka,
B = ae ;[1m;[0m
X = kowalski,
Y = marek,
Z = 1993,
A = poznan,
C = matematyka,
B = pp ;[1m;[0m
X = zemski,
Y = piotr,
Z = 1991,
A = poznan,
C = informatyka,
B = ue ;[1m;[0m
X = ratajczak,
Y = agata,
Z = 1992,
A = poznan,
C = informatyka,
B = uam.

[1]  ?- student(X,Y,Z,_,_,_), Z>1990.


X = kosowski,
Y = jan,
Z = 1991 ;[1m;[0m
X = kowalski,
Y = marek,
Z = 1993 ;[1m;[0m
X = zemski,
Y = piotr,
Z = 1991 ;[1m;[0m
X = ratajczak,
Y = agata,
Z = 1992.

[1]  ?- student(X,Y,_,_,_,Z), member(Z,['pp','uam']).


X = kowalski,
Y = jan,
Z = uam ;[1m;[0m
X = kowalski,
Y = marek,
Z = pp ;[1m;[0m
X = kaczmarek,
Y = janina,
Z = pp ;[1m;[0m
X = jurkowski,
Y = jerzy,
Z = uam ;[1m;[0m
X = wolski,
Y = maciej,
Z = pp ;[1m;[0m
X = makowska,
Y = zuzanna,
Z = pp ;[1m;[0m
X = ratajczak,
Y = agata,
Z = uam.

[1]  ?- student('kowalski','jan',_,_,'informatyka',_).


[1;31mfalse.[0m

[1]  ?- student('kowalski','jan',_,_,'matematyka',_).


[1mtrue [0m.[1m.[0m

[1]  ?- ['dane.pl'].


[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/dane.pl:54:
	Singleton variables: [A,B]
[0m[1mtrue.[0m

[1]  ?- student(A,B,_,'poznan',_,_).


A = kowalski,
B = jan ;[1m;[0m
A = kosowski,
B = jan ;[1m;[0m
A = kowalski,
B = marek ;[1m;[0m
A = kaczmarek,
B = janina ;[1m;[0m
A = jurkowski,
B = jerzy ;[1m;[0m
A = wolski,
B = maciej ;[1m;[0m
A = zemski,
B = piotr ;[1m;[0m
A = makowska,
B = zuzanna ;[1m;[0m
A = ratajczak,
B = agata.

[1]  ?- poznan.


[31;1mERROR: Undefined procedure: poznan/0 (DWIM could not correct goal)
[0m[1]  ?- ['dane.pl'].


[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/dane.pl:54:
	Singleton variables: [A,B]
[0m[1mtrue.[0m

[1]  ?- poznan.


[31;1mERROR: Undefined procedure: poznan/0 (DWIM could not correct goal)
[0m[1]  ?- ['dane.pl'].


[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/dane.pl:54:
	Singleton variables: [A,B]
[0m[1mtrue.[0m

[1]  ?- poznan.


[1mtrue [0m.[1m.[0m

[1]  ?- ['dane.pl'].


[1mtrue.[0m

[1]  ?- poznan(A,B).


A = kowalski,
B = jan ;[1m;[0m
A = kosowski,
B = jan ;[1m;[0m
A = kowalski,
B = marek ;[1m;[0m
A = kaczmarek,
B = janina ;[1m;[0m
A = jurkowski,
B = jerzy ;[1m;[0m
A = wolski,
B = maciej ;[1m;[0m
A = zemski,
B = piotr ;[1m;[0m
A = makowska,
B = zuzanna ;[1m;[0m
A = ratajczak,
B = agata.

[1]  ?- ['dane.pl'].


[31;1mERROR: d:/studia/programowanie i konkrety/ppd/prolog/c9/dane.pl:43:92: Syntax error: Operator expected
[0m[1mtrue.[0m

[1]  ?- ['dane.pl'].


[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/dane.pl:41:
	Singleton variables: [Y]
[0m[1mtrue.[0m

[1]  ?- ['dane.pl'].


[1mtrue.[0m

[1]  ?- ojciec('krzysztof').


[31;1mERROR: Undefined procedure: rodzic/1
ERROR:   However, there are definitions for:
ERROR:         rodzic/2
ERROR: 
ERROR: In:
ERROR:   [17] rodzic(krzysztof)
ERROR:   [16] ojciec(krzysztof) at d:/studia/programowanie i konkrety/ppd/prolog/c9/dane.pl:41
ERROR:   [15] <user>
ERROR:   [13] '$toplevel':'$execute_goal2'(user:ojciec(krzysztof),[]) at d:/programy/swipl/boot/toplevel.pl:1049
ERROR:   [11] '$toplevel':'$query_loop' at d:/programy/swipl/boot/toplevel.pl:778
ERROR:   [10] <meta call>
ERROR:    [9] '$raw_read'(user_input,_6426) <foreign>
ERROR:    [8] '$toplevel':read_term_as_atom(user_input,_6458) at d:/programy/swipl/boot/toplevel.pl:868
ERROR:    [7] catch('$toplevel':read_term_as_atom(user_input,_6498),_6484,'$toplevel':true) at d:/programy/swipl/boot/init.pl:372
ERROR:    [6] '$toplevel':read_query_line(user_input,_6536) at d:/programy/swipl/boot/toplevel.pl:851
ERROR:    [5] '$toplevel':read_query('~! ?- ',_6568,_6570) at d:/programy/swipl/boot/toplevel.pl:835
ERROR:    [4] '$toplevel':read_expanded_query(0,_6602,_6604) at d:/programy/swipl/boot/toplevel.pl:809
ERROR:    [3] '$toplevel':'$query_loop' at d:/programy/swipl/boot/toplevel.pl:781
ERROR:    [2] '$toplevel':'$runtoplevel' at d:/programy/swipl/boot/toplevel.pl:709
ERROR:    [1] '$toplevel':'$toplevel' at d:/programy/swipl/boot/toplevel.pl:695
ERROR:    [0] <meta call>
ERROR: 
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.
[0m   [1;35mException: [0m(17) rodzic(krzysztof) ? 
Action (h for help) ? 
Action (h for help) ? hOptions:
a:           abort         b:           break
c:           continue      e:           exit
g:           goals         s:           C-backtrace
t:           trace         p:		  Show PID
h (?):       help
Action (h for help) ? bbreak
[32m% Break level 2
[0m[2]  ?- aaaabfssddsffssadasdasasdadasdasdadklkvfdnkodvfsdfsdfsddfsdffrfsdfsfsdf|    |    |    |    ...|    |    |    |    
Action (h for help) ? aabort
Action (h for help) ? EOF: exit (status 4)
