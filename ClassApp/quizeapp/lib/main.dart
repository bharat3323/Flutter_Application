import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizeApp(),
    );
  }
}

class QuizeApp extends StatefulWidget{
  const QuizeApp({super.key});

  @override
  State createState()=> _QuizeAppState();
}

class _QuizeAppState extends State{

  List<Map> questionList=[
    {
      "question":"Who is the founder of Microsoft?",
      "options":["Steve Jobs","Bill Gate","Larry Page","Elon Musk"],
      "answer":1,
    },
    {
       "question":"Who is the founder of Google?",
      "options":["Steve Jobs","Bill Gate","Larry Page","Elon Musk"],
      "answer":2,
    },
    {
       "question":"Who is the founder of Apple?",
      "options":["Steve Jobs","Bill Gate","Larry Page","Elon Musk"],
      "answer":0,
    },
    {
       "question":"Who is the founder of SpcaeX?",
      "options":["Steve Jobs","Bill Gate","Larry Page","Elon Musk"],
      "answer":3,
    },
    {
       "question":"Who is the founder of Meta?",
      "options":["Steve Jobs","Bill Gate","Mark Zukerburg","Elon Musk"],
      "answer":2,
    },
  ];

  int currentQuestionIndex = 0;

  int currentAnswerClicked = -1;

  bool newState=false;

  int score=0;

  WidgetStatePropertyAll<Color?>? correctAnswer(int currentButton){
    
    if(currentAnswerClicked != -1){
      if(currentButton == questionList[currentQuestionIndex]["answer"]){
        score++;
        return const WidgetStatePropertyAll(Colors.green);
      }else if(currentButton == currentAnswerClicked){
        score--;
        return const WidgetStatePropertyAll(Colors.red);
      }else{
        return const WidgetStatePropertyAll(null);
      }
    }else{
      return const WidgetStatePropertyAll(null);
    }
    
   
  }

  
  @override
  Widget build(BuildContext context){
    if(newState == false){
      return Scaffold(
    appBar: AppBar(
      title: const Text(
        "Quize App",
        style: TextStyle(
          fontSize: 30,
          fontWeight:FontWeight.w500,
          color: Colors.purple,
        ),
        ),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body:  Column(
      
      children: [
        const SizedBox(
          height: 50,
        ),
        Row(
          children: [
            const SizedBox(
              width: 150,
            ),
             Text(
              "Question: ${(currentQuestionIndex+1)} / ${questionList.length}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
             ),
          ],

        ),
        const SizedBox(
          height: 50,
        ),
         SizedBox(
           height: 50,
           width: 350,
           child: Text(
            questionList[currentQuestionIndex]["question"],
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

           ),
           
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 70,
          width: 350,
          child: ElevatedButton(
            onPressed: (){
              if(currentAnswerClicked== -1){
              currentAnswerClicked=0;
              setState(() {});
              }
              

            },
            style:  ButtonStyle(
              backgroundColor: correctAnswer(0),

            ),
            child: Text(
              questionList[currentQuestionIndex]["options"][0],
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 70,
          width: 350,
          child: ElevatedButton(
            onPressed: (){
              if(currentAnswerClicked== -1){
              currentAnswerClicked=1;
              setState(() {});
              }
            },
            style:  ButtonStyle(
              backgroundColor: correctAnswer(1),

            ),
            child: Text(
              questionList[currentQuestionIndex]["options"][1],
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 70,
          width: 350,
          child: ElevatedButton(
            onPressed: (){
              if(currentAnswerClicked== -1){
              currentAnswerClicked=2;
              setState(() {});
              }
            },
            style:  ButtonStyle(
              backgroundColor: correctAnswer(2),

            ),
            child: Text(
              questionList[currentQuestionIndex]["options"][2],
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 70,
          width: 350,
          child: ElevatedButton(
            onPressed: (){
              if(currentAnswerClicked== -1){
              currentAnswerClicked=3;
              setState(() {});
              }
            },
            style:  ButtonStyle(
              backgroundColor: correctAnswer(3),

            ),
            child: Text(
              questionList[currentQuestionIndex]["options"][3],
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(currentAnswerClicked != -1){
            currentQuestionIndex++;
            currentAnswerClicked=-1;
          }else{

          }
          if(currentQuestionIndex <= (questionList.length-1)){
            newState=false;
          }else{
            newState=true;
          }
          
          
        setState(() {});
                
        },
        child: const Icon(Icons.forward,
        color: Colors.purple,
        ),
        
      ),
    );
    }else{
      return  Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
            fontSize: 30,
            fontWeight:FontWeight.w500,
            color: Colors.purple,
          ),
          ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                child: Image.network("https://imgs.search.brave.com/j1UjLzwfSaptNDWLgItqIW6tbVlzxL9kYsF42cCeb0g/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTAw/NjY1MzExL3Bob3Rv/L2dvbGQtdHJvcGh5/LmpwZz9zPTYxMng2/MTImdz0wJms9MjAm/Yz0wcnBXYVY1YUJs/QnZOMXdzQnNiUHVk/SDV5NDJyQTdQUkh6/c0YzU0xLMmg4PQ"),
                
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Congratulations",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight:FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                " ${(score)}/ ${(questionList.length)}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight:FontWeight.w300,
                ),
              
              ),          
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            newState=false;
            currentAnswerClicked=-1;
            currentQuestionIndex=0;
            score=0;
            setState((){});

          },
          backgroundColor: Colors.blue,
          child: const Text("Reset"),
          
          ),
      );
    }
  }
}