import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mesajlaşma Ekranı',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MessageScreen(),
    );
  }
}

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<Map<String, dynamic>> _messages = [
    {
      'text': 'Bu birinci soru. Cevaplar?',
      'answers': ['Cevap 1', 'Cevap 2', 'Cevap 3']
    }
  ];
  int _currentQuestionIndex = 0;
  bool _isLoading = false;

  void _answerQuestion(int answerIndex) async {
    final followUpQuestions = [
      {
        'text': 'Cevap 1 ile ilgili ikinci soru. Daha fazla cevap?',
        'answers': ['Cevap A', 'Cevap B', 'Cevap C']
      },
      {
        'text': 'Cevap 2 ile ilgili ikinci soru. Daha fazla cevap?',
        'answers': ['Cevap X', 'Cevap Y', 'Cevap Z']
      },
      {
        'text': 'Cevap 3 ile ilgili ikinci soru. Daha fazla cevap?',
        'answers': ['Cevap M', 'Cevap N', 'Cevap O']
      }
    ];

    setState(() {
      _isLoading = true;
    });

    // Mesajın gelme süresi simülasyonu
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      // Önceki cevabı ekle
      _messages.add({'text': _messages[0]['answers'][answerIndex]});
      // Yeni soruyu ekle
      _messages.add(followUpQuestions[answerIndex]);
      // İlk mesajı güncelle
      _messages[0] = {'text': followUpQuestions[answerIndex]['text'], 'answers': followUpQuestions[answerIndex]['answers']};
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mesajlaşma Ekranı'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length + (_isLoading ? 1 : 0),
              itemBuilder: (context, index) {
                if (_isLoading && index == 0) {
                  // Yükleniyor göstergesini göster
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final message = _messages[_isLoading ? index - 1 : index];
                if (message.containsKey('answers')) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(message['text']),
                      ),
                      ...message['answers'].map((answer) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: ElevatedButton(
                            onPressed: () {
                              _answerQuestion(message['answers'].indexOf(answer));
                            },
                            child: Text(answer),
                          ),
                        );
                      }).toList(),
                    ],
                  );
                } else {
                  return Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(message['text']),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
