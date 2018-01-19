spoken(malayalam,kerala).
spoken(tamil,tamilnadu).
spoken(telugu,andhrapradesh).
spoken(hindi,uttarpradesh).
spoken(marathi,maharashtra).
spoken(arabic,yemen).
spoken(oriya,orissa).
spoken(hindi,kerala).
spoken(hindi,andhrapradesh).
spoken(hindi,maharashtra).
spoken(hindi,orissa).
speaks(telugu,rao).
speaks(oriya,patnaik).
speaks(malayalam,tina).
speaks(marathi,vidula).
speaks(arabic,ali).
speaks(hindi,rao).
speaks(hindi,patnaik).
speaks(hindi,tina).
speaks(hindi,vidula).

understood_in(Person,State) :-
	speaks(Language,Person),
	spoken(Language,State).

national(Language) :-
	spoken(Language,State1),
	spoken(Language,State2),
	spoken(Language,State3),
	not(State1=State2),
	not(State2=State3),
	not(State1=State3).
	