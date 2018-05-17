[1mtrue.[0m

?- ['dane.pl'].


[1mtrue.[0m

?- ojciec('adam').


[1mtrue.[0m

?- ojciec('dariusz').


[1;31mfalse.[0m

?- ['MaciejWanat_CW9.pl'].


[1mtrue.[0m

?- nwd(12,14,2).


[1mtrue [0m.[1m.[0m

?- 
|    .
[31;1m
ERROR: Stream user_input:26:6 Syntax error: Unexpected end of clause
[0m
?- nwd(12,8,X).


X = 4 .[1m.[0m

?- X:-jarosz(X),sport(X).


[31;1mERROR: Undefined procedure: (:-)/2
ERROR:   Rules must be loaded from a file
ERROR:   See FAQ at http://www.swi-prolog.org/FAQ/ToplevelMode.txt
ERROR: In:
ERROR:    [9] throw(error(existence_error(procedure,...),_4252))
ERROR:    [8] '$dwim':dwim_existence_error(error,user:(:-)/2) at d:/programy/swipl/boot/dwim.pl:113
ERROR:    [6] '$dwim':correct_goal((_4342:- ...,...),user,['X'=_4362],_4338) at d:/programy/swipl/boot/dwim.pl:85
ERROR: 
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.
[0m?- ['friends.pl'].


[31;1mERROR: d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:17:39: Syntax error: Unexpected end of file
[0m[1mtrue.[0m

?- ['friends.pl'].


[1mtrue.[0m

?- lubi('Ewa',X).


X = 'Ola' ;[1m;[0m
X = 'Ewa' ;[1m;[0m
X = 'Jan' ;[1m;[0m
[1;31mfalse.[0m

?- ['friends.pl'].


[31;1mERROR: d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:19:29: Syntax error: Operator expected
[0m[1mtrue.[0m

?- ['friends.pl'].


[1mtrue.[0m

?- lubi('Janek',X).


X = 'Iza' [1m.[0m

?- lubi('Iza','Janek').


[1;31mfalse.[0m

?- przyjaciele('Ola','Iza').


[1;31mfalse.[0m

?- przyjaciele('Ola','Piotr').


[1;31mfalse.[0m

?- przyjaciele('Ola','Pawel').


[1mtrue.[0m

?- ['friends.pl'].


[31;1mERROR: source_sink `'friends.pl'' does not exist
ERROR: In:
ERROR:   [19] throw(error(existence_error(source_sink,'friends.pl'),_5564))
ERROR:   [15] '$load_file'('friends.pl',user,[expand(false),...]) at d:/programy/swipl/boot/init.pl:2039
ERROR:    [7] <user>
ERROR: 
ERROR: Note: some frames are missing due to last-call optimization.
ERROR: Re-run your program in debug mode (:- debug.) to get more detail.
[0m?- ['przyjaciele.pl'].


[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/przyjaciele.pl:1:
	Redefined static procedure jarosz/1
	Previously defined at d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:1
[0m[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/przyjaciele.pl:5:
	Redefined static procedure kawosz/1
	Previously defined at d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:5
[0m[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/przyjaciele.pl:8:
	Redefined static procedure ksiazki/1
	Previously defined at d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:8
[0m[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/przyjaciele.pl:11:
	Redefined static procedure sport/1
	Previously defined at d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:11
[0m[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/przyjaciele.pl:16:
	Redefined static procedure lubi/2
	Previously defined at d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:16
[0m[31mWarning: d:/studia/programowanie i konkrety/ppd/prolog/c9/przyjaciele.pl:22:
	Redefined static procedure przyjaciele/2
	Previously defined at d:/studia/programowanie i konkrety/ppd/prolog/c9/friends.pl:22
[0m[1mtrue.[0m

?- lubi('Iza',X).


[1;31mfalse.[0m

?- ['przyjaciele.pl'].


[1mtrue.[0m

?- lubi('Iza',X).


[1;31mfalse.[0m

?- ['przyjaciele.pl'].


[1mtrue.[0m

?- lubi('Iza',X).


[1;31mfalse.[0m

?- ['przyjaciele.pl'].


[1mtrue.[0m

?- lubi('Iza',X).


[1;31mfalse.[0m

?- ['przyjaciele.pl'].


[1mtrue.[0m

?- lubi('Iza',X).


X = 'Ola' ;[1m;[0m
X = 'Iza' ;[1m;[0m
X = 'Pawel' ;[1m;[0m
X = 'Ola' ;[1m;[0m
[1;31mfalse.[0m

?- przyjaciele(X,Y).


X = 'Ola',
Y = 'Pawel' [1m.[0m

?- noprotocol.


