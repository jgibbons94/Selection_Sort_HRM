---- HUMAN RESOURCE MACHINE PROGRAM ------
----
----    COPYFROM NUMBERSIZE
----    COPYTO   20
----a:
----    INBOX   
----    COPYTO   [20]
----    JUMPZ    b
----    BUMPUP   200
----    JUMP     a
----b:

--variables needed:
--NUMBERSIZE = 24
--setupBring2floor:
--set the size of the array to 0
	
bring2Floor:
	INBOX
	JUMPZ endBring2Floor
	COPYTO [NUMBERSIZE]
	BUMPUP NUMBERSIZE
	JUMP bring2Floor
endBring2Floor:

--variables needed:
--NUMBERSIZE = 24
--J = 23
--I = 22
--INDEXSMALLEST = 21
--TEMP = 20

--positions, in order defined
--iLoopCheck:
--iloopbody:
--jLoopTest:
--jloopbegin:
--indexIfBegin:
--indexIfEnd:
--jLoopEnd:
--iloopend:

	COPYFROM NUMBERSIZE
	SUB NUMBERSIZE
	COPYTO I
--HRM sort loop
iLoopCheck:
	SUB NUMBERSIZE
	JUMPN iloopbody
	JUMP iloopend
iloopbody:
	COPYFROM I
	COPYTO INDEXSMALLEST
	COPYTO J
jLoopTest:
	BUMPUP J
	SUB NUMBERSIZE
	JUMPN jloopbegin
	JUMP jLoopEnd
jloopbegin:
	COPYFROM [J]
	SUB [INDEXSMALLEST]
	JUMPN indexIfBegin
	JUMP jLoopTest
indexIfBegin:
	COPYFROM J
	COPYTO INDEXSMALLEST
indexIfEnd:
	JUMP jLoopTest
jLoopEnd:
	--//swap numbers[I] and numbers[INDEXSMALLEST]
	COPYFROM [I]
	COPYTO TEMP
	COPYFROM [INDEXSMALLEST]
	COPYTO [I]
	COPYFROM TEMP
	COPYTO [INDEXSMALLEST]
	--++I
	BUMPUP I
	JUMP iLoopCheck
iloopend:



--sendtoOutputLoopBegin:
--sendToOutputLoopEnd:

setupSend2Output:
	COPYFROM I
	SUB I
	COPYTO I
sendToOutputCheck:
	SUB NUMBERSIZE
	JUMPN sendtoOutputLoopBegin
	JUMP sendToOutputLoopEnd
sendtoOutputLoopBegin:
	COPYFROM [I]

    OUTBOX  

	BUMPUP I
	JUMP sendToOutputCheck
sendToOutputLoopEnd:
	COPYFROM NUMBERSIZE
	SUB NUMBERSIZE
	COPYTO NUMBERSIZE
	JUMP bring2Floor
	
	
	
	

DEFINE LABEL TEMP
eJyzZ2BgeKDLqvxAd+YmIJOhQ3qyVp56h0q0Aauyn9l/eXPHnzKK3j9lQHIr3ddWiQSqlv2PmpZXHlcZ
/yM2wKsy9oTrn2h7x5YISzvOMEu7mX4BXvN8YgLm+SQFz/H9EDXHlyN9cqBHR2/Io6ldoQVzWyKallXG
CqwDmReUf2dSaN61/mu5pzuv5XZnhObVJ3mUxAQ4lof52leE+dpWxgTsqcwI21Np07Sn8qbfjurL3qsb
L3sva44JWNLyOly5Vb5YsW1nA8isX9NjAn7MyAj7MeP/EhC/ePaHqLdzX4ffWP46/NqK3MiLq+qTLq6a
kH1lpXDug8XyxcWz5YsZRsEoGAUMAN5Za30;

DEFINE LABEL J
eJzjY2BgcCudb+BWGtx3uqhm8dnC/0su5gusS0szPvA2yfjAr5ilOzrCyhZwhqVOBypleJomo7+ySUaf
YRSMglEwLAAA5EcXfw;

DEFINE LABEL INDEXSMALLEST
eJxLZWBgKFXhVitW7VOvVBLT+aMgpvNfXka/SU5Gn11Gw7RfwtVFQOKmH6N8RtgvxW+xpSqtqZ9U5Ys/
qR5tK1W50FOqcq2/TaZpWZcU6wqgUQxeFr1rvCzipxy39O0+bunUesBGtczESbVsvcvaKi33Cz3LPO5M
UvaqWazqeWeSqufmWmWvFeWTA1eUTwzSruQLMavvCPu5EGROaN6ikvjMRSVP01aUZ6Qa1LxMeTQ1LS1r
Vlpawdz4zKZl13IF1vkVCqzzKQLaV9y0zKs4uM+nyKn1Sp5BzfmCnQ1nCz063EpTp++o5loNMm9Zs7e7
VlNG2OrG1tTVjY+mgsR6++0de/uFczsmpk4H8XPmzSk8vXZO4fH1kgX2m/8k2G++H3hg000/541hvudX
h/kGrI4JCFoVE3BtxdOQG8s/RN1YPiE7dOXRtrNr3s4+ue7zPJAZIse/xUodKY5Zsp83S/mAfLHYMadW
keO+3SLHIycuOFi2YMVeiP9e3soIe377xQwQu+GCZEHpVcmC57eFc4OeCucyjIJRQEcAAMBzrSA;

DEFINE LABEL I
eJwTYWBg8CliVfYpSr8NZDIwR544VR1z6Pit7EPH91QGnF/bkHRDrDv3Hl9/7j2QPGcYq/LjdFblyJz/
8tZV/+V1GpsU1Zs7VCb2dqj097EqM4yCUTAKhhQAAOdrHgo;

DEFINE LABEL NUMBERSIZE
eJxzYmBgcLSRL7a3Fc61t/0W62hz0++4pZ6Fj7mSUbwet1qOBrfaN+WZuj+U5hv8UNpg+Va9OOaWwenO
cKOsWdeMOlbeMBTbGKu/aneWpv2xLyquJ3mkXE+KiO05AjSWQSBYdy9fiFNrV+iEbBCfM+yQE4iOz3wa
cqA8JsC+ojjGuUw492zh/ubo7Bcz0tJ619zL7F3jVjpz047qpTtAaue1m9XP6djZ8HqeWX38krVVd5au
KL+yckL22TUxAWfXuLpcXKVkFL5CQDNpcZ966aylxk1TDjmxTk4KZp0sX9wyeW1V0xSDmqYpZvX/p3p0
/Jl2uvPPtAs9OfPKFryeV7P4+YL/S+4t6V0TuVxgHcMoGAUjFAAAxIBzbA;
