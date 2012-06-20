# GNU Typist - improved typing tutor program for UNIX systems
# Copyright (C) 1998  Simon Baldwin (simonb@sco.com)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

#
# Demonstration of commands and features
#
*:MENU
M: "Demonstration of commands and features"
 :DEMO_0  "B:         (banner)"
 :DEMO_1  "T:         (tutorial)"
 :DEMO_2  "D:/d:      (drill)"
 :DEMO_3  "S:/s:      (speed-test)"
 :DEMO_4  "I:         (instruction)"
 :DEMO_5  "E:         (set maximum error percentage)"
 :DEMO_6  "*:/G:      (define label / jump to label)"
 :DEMO_7  "Q:/Y:/N:   (ask questions)"
 :DEMO_8  "F:         (set "on failure" label)"
 :DEMO_9  "M:         (menu)"
 :DEMO_10 "X:         (exit)"


*:DEMO_0
B:Demonstration of commands and features - B
T:This file demonstrates the commands that the program can do.
 :
 :The B command clears the screen, and if there is text following the
 :command that text is placed in the top 'banner' line of the screen.
 :No matter what else occurs, it stays there until replaced by text
 :from another B command.
 :
 :This demonstration used
 :
 :	B:Demonstration of commands and features - B
 :
 :to clear the screen.  The remainder of this file uses B commands to
 :indicate what it is demonstrating to you.
G:MENU

*:DEMO_1
B:Demonstration of commands and features - T
T:The simplest command is the T command.  This just outputs the text on
 :the line onto the screen.  As many lines as required may be displayed,
 :up to the limit of screen length.  After the display is done, the program
 :waits before proceeding:
 :
 :For example, the next screen shows the effect of
 :
 :	T:This is line one of a T command...
 :	 :...and this is line 2
T:This is line one of a T command...
 :...and this is line 2
G:MENU

*:DEMO_2
B:Demonstration of commands and features - D/d
T:The D command displays its text on alternate screen lines, and prompts
 :you to type the same text in on the intermediate lines.  Typing errors
 :are indicated with an inverse '^', or '>' if the character is a newline.
 :The drill completes when your error-percentage is less or equal
 :to the required error percentage.  Delete and backspace are not
 :recognised.  The d command does the same thing, but does not require a
 :certain error percentage.
 :
 :Here is an example drill, run on the next screen:
 :
 :	D:type these characters
 :	 :then type these
 :
D:type these characters
 :then type these
G:MENU

*:DEMO_3
B:Demonstration of commands and features - S/s
T:The S command displays its text on the screen, and prompts you to type
 :the text over the top of it.  Typing errors are highlighted in inverse
 :colours.  Delete and backspace are recognised, but errors still
 :accumulate.  At the end of the test, the typing speed and accuracy are
 :displayed.  The s command does the same thing, but does not require a
 :certain error percentage.
 :
 :Here is an example of a speed test.  Type this exactly
 :
 :	S:type this line
S:type this line
T:Here is another example.  Experiment with delete and backspace:
 :
 :	S:Overtype this paragraph with the same text.
 :	 :Note that capitals and punctuation are important.
 :	 :Experiment with delete and backspace keys.
 :       
S:Overtype this paragraph with the same text.
 :Note that capitals and punctuation are important.
 :Experiment with delete and backspace keys.
G:MENU

*:DEMO_4
B:Demonstration of commands and features - I
T:The I command can display some brief instructions above a drill or
 :speed test.  Only two lines or less are available.  Unlike the T
 :command, it does not wait for any further keypresses before proceeding.
 :So it should really always be followed by D, d, S or s.
 :It clears the whole screen drill area, so it's just
 :like a two-line T, though.
 :
 :Here's an example:
 :
 :	I:Here is a very short speed test.  You can either type in the
 :	 :whole thing, or just escape out of it:
 :	S:Very, very short test...
I:Here is a very short speed test. If you feel like you already made
 :too many mistakes then you can give up (start again) by pressing ESC
S:Very, very short test...
G:MENU

*:DEMO_5
B:Demonstration of commands and features - E
T:The E command is used to set the maximum error percentage allowed for
 :the next exercise (E:<value>%) or for all following exercises (E:<value>%*)
 :If -e is specified then E: only has an effect if it is less (stricter)
 :than the value specified on the command-line (but this is only true if
 :the option is explicitly specified, not if the default is used)
 :Furthermore, if you use E:<value>%*, then you can use the special form
 :E: Default (or E: default) to reset the value to its the default setting.
 :Warning: Don't follow a E: by a practice-only drill (d: or s:)!
 : 
 :      E: 4%
 :      I:this drill requires 4% errors (at most)
 :      D:Cheer Up!  Things are getting worse at a slower rate.
E: 4%
I:this drill requires 4% errors (at most)
D:Cheer Up!  Things are getting worse at a slower rate.
G:MENU

*:DEMO_6
B:Demonstration of commands and features - */G
T:The * places a label into the file.  The G command can then be used to go to
 :that label.  The program really isn't fussy about label strings.  They
 :can be pretty much anything you like, and include spaces if that's what
 :you want (whitespace at the end of labels is ignored).  Labels must be unique
 :within files.
 :
 :For example:
 :
 :	G:MY_LABEL
 :	T:*** You won't see this, ever
 :	*:MY_LABEL
 :	T:We reached this message with a G command
G:MY_LABEL
T:*** You won't see this, ever
*:MY_LABEL           
T:We reached this message with a G command
G:MENU

*:DEMO_7
B:Demonstration of commands and features - Q/Y/N
T:The Q command prints its text on the message line, and waits for
 :a 'Y' or an 'N' before proceeding.  Other characters are ignored.
 :
 :The Y command will go to the label on its line if the result of the most
 :recent Q was 'Y'.  The N command does the same thing for 'N'.  K binds
 :a function key to a label (deprecated in favor of M:)
 :
 :Here's an example.  As you can see, it can be clumsy, but mostly we
 :don't need anything as intricate:
 :
 :	Q: Press Y or N, and nothing else, to continue...
 :	Y:HIT_Y
 :	N:HIT_N
 :	T:*** You won't see this, ever
 :	*:HIT_Y
 :	T:You pressed Y
 :	G:JUMP_OVER
 :	*:HIT_N
 :	T:You pressed N
 :	*:JUMP_OVER
Q: Press Y or N, and nothing else, to continue...
Y:HIT_Y
N:HIT_N
T:*** You won't see this, ever
*:HIT_Y
T:You pressed Y
G:JUMP_OVER
*:HIT_N
T:You pressed N
*:JUMP_OVER
G:MENU

*:DEMO_8
B:Demonstration of commands and features - F
T:The F: command sets the "on failure" label. If an F command is in effect
 :and the user fails in an exercise, he/she will skip to the label specified.
 :It is used to create a final test, like this:
 :	
 :	E: 3.0%*
 :	*:LESSON1_D1
 :	I:drill (1)
 :	d:You have an ability to sense and know higher truth.
 :	*:LESSON1_D2
 :	I:drill (2)
 :	s:You enjoy the company of other people.
 :	*:LESSON1_FINAL_TEST
 :	F:LESSON1_D1*
 :	I:final test
 :	D:You will receive a legacy which will place you above want.
 :	# undo the effects of E/F
 :	E:default
 :	F:NULL
E: 3.0%*
*:LESSON1_D1
I:drill (1)
d:You have an ability to sense and know higher truth.
*:LESSON1_D2
I:drill (2)
s:You enjoy the company of other people.
*:LESSON1_FINAL_TEST
F:LESSON1_D1*
I:final test
D:You will receive a legacy which will place you above want.
# undo the effects of E/F
E:default
F:NULL
G:MENU

*:DEMO_9
T:
 : This text was used to create the main menu in this demo lesson:   
 :
 :	M: "Demonstration of commands and features"
 :	 :DEMO_0  "B:         (banner)"
 :	 :DEMO_1  "T:         (tutorial)"
 :	 :DEMO_2  "D:/d:      (drill)"
 :	 :DEMO_3  "S:/s:      (speed-test)"
 :	 :DEMO_4  "I:         (instruction)"
 :	 :DEMO_5  "E:         (set maximum error percentage)"
 :	 :DEMO_6  "*:/G:      (define label / jump to label)"
 :	 :DEMO_7  "Q:/Y:/N:   (ask questions)"
 :	 :DEMO_8  "F:         (set "on failure" label)"
 :	 :DEMO_9  "M:         (menu)"
 :	 :DEMO_10 "X:         (exit)"
G:MENU

*:DEMO_10
B:Demonstration of commands and features - X
T:The last command to show is the X command.  This causes the program to
 :exit.  The program also exits if the end of the file is found
 :(so you could place a label there and just G to it).
 :
 :Here's a demonstration of the X command.  Since this is the end of
 :the demonstration, here is a good place to use it; the demonstration
 :will halt here.
 :
 :	X:
X:
