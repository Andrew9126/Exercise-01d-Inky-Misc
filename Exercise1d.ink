/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR shell = 0



-> seashore

== seashore ==
You are sitting on the beach. 

It is { advance_time() }

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach.
{time == 1: You can see a mysterious figure further down the shore.}
It is { advance_time() }
* { time == 1 } [Pick up some seashells] -> shells
+ {time == 2} [Investigate the figure] -> approach
+ [Stroll back up the beach] -> seashore

== shells ==
~ shell = shell + 1
You pick up the shells
-> beach2

== approach ==
You get a bit closer to the figure and can see they're wearing all black and formal attire. At the beach!?!
It's not too late to turn around.
* [Approach the figure] -> encounter
+ [Retreat] -> beach2
-> END

== encounter ==
You are in earshot distance of the figure, it appears to be a man in a ventablack suit.
They mutter something under their breath that you couldn't make out.
You plan to make the first move. What should you say?

* {shell == 1} ["Want my seashells?"] -> shell_ending
* ["Why are you wearing a suit at the beach?"] -> insulted_ending
* ["I REALLY need to go use the bathroom, can you point me to the nearest one?"] -> bathroom_ending
* ["Tyler Ninja Blevins. I knew it was you the whole time."] -> low_taper_fade_ending

-> END


== shell_ending ==
The man looks at you with a puzzeled expression as you hold out the shells.
"Sure" he says bluntly, taking a fist full of seashells directly into his suit pocket, and briskly walking away.
You never understood why he was there in the first place, but atleast those shells have a new home now.
-> END
== insulted_ending ==
"What'd you say about my suit!?!" the man yells loudly.
He wips out a Nerf Rival series nerf gun out from under his suit jacket and open fires immediately.
You wake up to the sound of waves crashing nearby at the shore.
The last thing you can remember was the stinging sensasion of the nerf bullet barrage.
-> END
==bathroom_ending ==
The man looks both skeptical and confused.
"Uh sure. It's back that way." as he points back the way you came.
You feel ashamed and embarrased as you walk back towards the bathroom, having asked such a pointless question.
-> END
== low_taper_fade_ending ==
The man turns to face you directly, with a beaming grin on his face.
"You know what's crazy, player?"
"The meme is still massive."
Ninja then lets out the loudest low taper fade scream you've ever heard, dulling all of your senses and causing you to black out.
You wake up the next day on the beach in a daze. You choose to pretend that night never happened for the rest of your life.

-> END
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
