EXTERNAL goToBed(endDay)
EXTERNAL addPopularity(popularity)
EXTERNAL leaveForever(bye)

Knob
Ward, I see you've already had the immense pleasure of meeting Helena here. I would say don't let that interaction inform too many judgements of her, but truth be told her behavior is fairly consistent.
*[Next] -> next1

==next1==
Guillermo
No, that was immature, even for you Helena. That shed doesn't just have training equipment, its got weapons, defenses. What if another mob showed up?
* [Next] ->next2
->DONE

==next2==
Helena
First of all one didn't, and second of all, Corv's got contingencies for that stuff. Worst case scenario I run it over to the shed before the even make it into the Graveyard.
* [Next] ->next3
->DONE

==next3==
Guillermo
Those contingencies are in place for worst-case scenarios, not for you to screw around.
*[Next]->next4

==next4==
Helena
Alright fine, point to the Roided-Out Boy Scout. Let's stop fighting, we're scaring the new kid. Got anything to chime in with Ward?
*[Oh, no. I'm just taking it all in.]->not_talk
*[Did you say mob?]->mob
->DONE

==not_talk==
Helena
Well you can't stay a fly on the wall forever.
Knob
This is a very tight knit community. Sooner or later you'll be one of us.
*[What if I don't want to be one of you?]->bad
*[Yeah you're right, but I don't really have much to say right now.]->talk
->DONE

==talk==
Knob
That is understandable. Well then, it seems this conversation has ran its course, so I think I will retire.
*[Me too.] ->talk2
->DONE

==talk2
Guillermo
Not so fast Knob, Headmaster Corvington wants to discuss something with us real quick. We'll join you soon Ward.
*[Alright.]->bed2
->DONE

==bad==
~addPopularity(-1)
Helena
What's that supposed to mean?
Knob
I believe what our friend meant was-
Helena 
No I want our "friend" here to say it themself.
*[Nothing, nevermind. I better go to bed.]->bed
*[I mean I don't want to be some freak living in the middle of nowhere.]->bad2
->DONE

==bad2==
~addPopularity(-2)
Guillermo
Everyone that's enough. Ward, if you don't want to be here that badly I suggest you see yourself out. Otherwise I would walk away, before we say something else we don't mean.
*[Fine. If anyone needs I'll be upstairs.]->bed
*[I will see myself out. Goodbye forever.]->leave
->DONE

==bed==
Guillermo
I think that is best. Goodnight Ward.
~goToBed(true)
->DONE

==leave==
Helena
It's not forever. You'll come knocking at our door again, either on their side or ours. I'll see you then Ward.
~leaveForever(true)
->DONE

==mob==
Knob
Oh yes, we're no strangers to violence from the outside. We've made it clear we pose no threat and yet still they persist. No matter how much we isolate ourselves, hide our faces, it isn't enough for them.
*[Why not be more assertive about it?]->action
*[I guess that's all you can do.]->lame
->DONE

==action==
~addPopularity(2)
Helena
That's why we're here. Not just safety, not just community. Like Knob said, it's not enough. That's why we have a Headmaster.
*[Next]->next5
->DONE

==lame==
Knob
That is patently false I'm afraid. After a life spent on your knees, begging for acceptance that will never be granted, it is only natural to stand up for once. To show you're something, even when the world tells you you're nothing. Even if, no especially if it's something they don't like. You'll realize this some day.
*[Next]->next5
->DONE

==next5==
Guillermo
I think Ward's heard enough, don't dump everything on her right now. Ward, it's been a crazy few days, it's probably bed you lay down for a bit. We've got business with Headmaster Corvington anyways.
*[Alright then. See you all tomorrow.]->bed2
->DONE

==bed2==
Helena
Nighty night Ward, here's to many more days together.
~goToBed(true)
->DONE