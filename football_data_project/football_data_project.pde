Game[] games;

ArrayList <String> teams = new ArrayList <String> ();

void setup() { 
  String[] lines = loadStrings("results2.csv");
  games = new Game[lines.length-1];
  
  for (int i = 0; i<games.length; i++) {
    games[i] = new Game();
    
    String[] tokens = lines[i+1].split(",");
    games[i].season = int(tokens[0]);
    games[i].homeTeam = tokens[1];
    games[i].awayTeam = tokens[2];
    games[i].homeGoals = int(tokens[3]);
    games[i].awayGoals = int(tokens[4]);
    games[i].result = tokens[5];
    
  }
  int ArsenalWon = 0; 
for(int i=0; i<games.length; i++) {
  if(games[i].homeTeam.equals("Arsenal") &&
  games[i].result.equals("H"))
  {
    ArsenalWon++;
}
else if(games[i].awayTeam.equals("Arsenal") &&
  games[i].result.equals("A"))
  {
    ArsenalWon++;
  }
  }
  println(ArsenalWon);
}
