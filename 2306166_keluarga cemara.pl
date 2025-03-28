
pria(david).
pria(jack).
pria(john).
pria(ray).
pria(peter).

wanita(amy).
wanita(karen).
wanita(liza).
wanita(susan).
wanita(mary).

pasangan(david, amy).
pasangan(jack, karen).
pasangan(john, susan).

orangtua(david, liza).
orangtua(amy, liza).
orangtua(david, john).
orangtua(amy, john).
orangtua(jack, ray).
orangtua(karen, ray).
orangtua(john, peter).
orangtua(susan, peter).
orangtua(john, mary).
orangtua(susan, mary).

% Aturan
ayah(X, Y) :- pria(X), orangtua(X, Y).
ibu(X, Y) :- wanita(X), orangtua(X, Y).
anak(X, Y) :- orangtua(Y, X).
saudara(X, Y) :- orangtua(Z, X), orangtua(Z, Y), X \= Y.
kakek(X, Y) :- pria(X), orangtua(X, Z), orangtua(Z, Y).
nenek(X, Y) :- wanita(X), orangtua(X, Z), orangtua(Z, Y).
cucu(X, Y) :- orangtua(Y, Z), orangtua(Z, X).
sepupu(X, Y) :- orangtua(Z, X), orangtua(W, Y), saudara(Z, W), X \= Y.
