# README

# PGA-pi

PGA Frisco - “Pro vs Joes”

---

## problem notes

- highest number of of holes wins the match unless tie
- tie is possible if both players have the same net score
- a hole is won by lowest net score for a hole;
- a net score is derived from Player Gross score - any stroke allowance for that hole
- a stroke allowance is a number of strokes that are reduced from a players gross score
- a player can have a stroke allowance of 0 for a hole; this is a handicap stroke
- a player gets a stroke on a hole if their index is less than or equal to the stroke index for that hole
- Stroke index refers to the difficulty rating of each hole on the course (1 being the hardest hole on the course, 18 being the easiest)

---

## Requirements ( /4)

### Initialize a new scorecard class from data (example: pga-frisco-east.json)

[ ] get course data into a variable OR Mock into variable

---

### Record player scores for each hole

- create a class for a player
  - player should: name, hcap, scores_arr

---

### Calculate the winner of each hole

loop through each hole, get the score from each player
check to see if the player gets an allowance value or not.
If they get an allowance, the net === gross score - allowance value
If they don’t get an allowance, the net === gross score
if player 1 score < player 2 score, player 1 wins the hole
if player 1 score > player 2 score, player 2 wins the hole

---

### Determine the outcome of the match

Using the number of holes won by each player, calculate the player with the highest number of holes won
if score === tie? mark as tie else return player obj with highest cumulative score

---

## Data?

### scorecard should look like this coming from the user

` scorecard= {course_obj}, {players= [ {name, hcap, scores_arr}, etc... ]} ]`

### Scorecard returned should look like this

` scorecard= [ {course_obj}, {players= [ {name, hcap, scores_arr}, for each player ]}, ]`

### course_obj shaped like this

`course = { “name”: “PGA Frisco - East Course (Black)“, “address”: “1916 PGA Pkwy, Frisco, TX 75033", “holes”: [ { “number”: 1, “yardage”: 606, “strokeIndex”: 15, “par”: 5 }, { “number”: 2, “yardage”: 462, “strokeIndex”: 5, “par”: 4 }, { “number”: 3, “yardage”: 600, “strokeIndex”: 9, “par”: 5 }, { “number”: 4, “yardage”: 200, “strokeIndex”: 11, “par”: 3 }, { “number”: 5, “yardage”: 498, “strokeIndex”: 17, “par”: 4 }, { “number”: 6, “yardage”: 485, “strokeIndex”: 1, “par”: 4 }, { “number”: 7, “yardage”: 330, “strokeIndex”: 13, “par”: 4 }, { “number”: 8, “yardage”: 170, “strokeIndex”: 7, “par”: 3 }, { “number”: 9, “yardage”: 462, “strokeIndex”: 3, “par”: 4 }, { “number”: 10, “yardage”: 432, “strokeIndex”: 16, “par”: 4 }, { “number”: 11, “yardage”: 419, “strokeIndex”: 4, “par”: 4 }, { “number”: 12, “yardage”: 479, “strokeIndex”: 8, “par”: 4 }, { “number”: 13, “yardage”: 277, “strokeIndex”: 12, “par”: 3 }, { “number”: 14, “yardage”: 576, “strokeIndex”: 6, “par”: 5 }, { “number”: 15, “yardage”: 340, “strokeIndex”: 18, “par”: 4 }, { “number”: 16, “yardage”: 506, “strokeIndex”: 2, “par”: 4 }, { “number”: 17, “yardage”: 150, “strokeIndex”: 14, “par”: 3 }, { “number”: 18, “yardage”: 611, “strokeIndex”: 10, “par”: 5 } ] } `

### player should: team_name, hcap, scores_arr, allowance

## Sinatra app
