
class QuizQuestion{

 const QuizQuestion(this.text,this.answers);
  //constructor function
  final String text;
  final List<String> answers;

 List<String> getShuffledAnswer(){

 final shuffledList= List.of(answers);
 shuffledList.shuffle();
 return shuffledList;
 }

 //this is called chaining
}
