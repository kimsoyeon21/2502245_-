import 'package:flutter/material.dart';
import 'result_screen.dart';

final questions = [
  {
    "musical": "데스노트",
    "song": "데스노트",
    "emoji": "📓⚰️🍎",
    "hint": "ㅁㅇ ㅅㄱ ㅇㅇ ㄲㅇ ㄲㄴㄱㄲ ㅈㅁ ㅈㅇㅈㅇ ㄴㅇ ㅅㅇㄹ",
    "lyrics": "믿을 수가 없어 꿈을 꾸는걸까 정말 죽였잖아 나의 손으로",
    "image":
        "https://image.yes24.com/themusical/fileStorage/ThemusicalAdmin/Play/Image/20230207843266905c36ce1ad354a823e902457bc904d112.jpg",
  },
  {
    "musical": "킹키부츠",
    "song": "Raise You Up",
    "emoji": "👢👠🌈",
    "hint": "ㄴㄱ ㅎㄷ ㄸ ㄱㅇ ㅇㅇㄱ ㅅㅇ ㅈㅊ ㄸ ㅎㅇ ㄷㅈㄱ",
    "lyrics": "네가 힘들 때 곁에 있을게 삶이 지칠 때 힘이 돼줄게",
    "image":
        "https://web2-cf-image.cjenm.com/crop/520x748/public/share/metamng/programs/contentsdetailposterkinkybootsthemusical01.jpg?v=1767342892",
  },
  {
    "musical": "팬레터",
    "song": "넘버세븐",
    "emoji": "✉️🖋️7️⃣",
    "hint": "ㄴㅂ ㅅㅂ ㄹㅋㅅㅂ ㅇㄹㅇㄱ ㅌㅂㅎ ㅅㅈ ㅇ ㄷㅅㅇ ㅅㄴ ㅁㄷㄴㅅㅌㅇ ㅅ",
    "lyrics": "넘버 세븐 럭키세븐 우리에게 특별한 숫자 이 도시에 사는 모더니스트의 수",
    "image":
        "https://image.yes24.com/themusical/fileStorage/ThemusicalAdmin/Play/Image/201608101051295F712QI2V51Y34DF.jpg",
  },
  {
    "musical": "디어에반핸슨",
    "song": "Waving Through A Window",
    "emoji": "🌳💙✉️",
    "hint": "ㄴ ㅅㅈㄷ ㅎㄱ ㅈㅇ ㅁㅊㄴ ㅂㅇ ㅂㅇㅇ ㅅㅅㅎㄱㄷ ㅈㅇ",
    "lyrics": "난 시작도 하기 전에 멈추는 법을 배웠어 실수하기도 전에",
    "image":
        "https://i.namu.wiki/i/M7G9N3YZnfsz2PYEQWVoSpxIMLcImCC0_Blxvr9lEWhrLlofWrFZL45htsQuPG94rDAZGggZVFQrAQhp-2DmKg.webp",
  },
  {
    "musical": "서편제",
    "song": "살다보면",
    "emoji": "🎶🌾👩",
    "hint": "ㄴㅇ ㄱㄱ ㅅㄹㄹ ㅈㄹㅂ ㅇㅁㄱ ㅆㄷㄷㄷ ㅅㄱㅇㅇ",
    "lyrics": "눈을 감고 소리를 질러봐 엄마가 쓰다듬던 손길이야",
    "image":
        "https://image.yes24.com/themusical/fileStorage/ThemusicalAdmin/Play/Image/2022102488363944e956cbd8daf3587b63d6a4f0fd2052c1.jpg",
  },
  {
    "musical": "비틀쥬스",
    "song": "Say My Name",
    "emoji": "👻🪲💚",

    "hint": "ㅂㅊㅎㄴㄷ ㅊ ㅈㅁㄴ ㄴ ㅇㄱ ㅎ ㅂ ㄱㅌㅎ ㄷㅇ ㄲ ㅇㄹㅎㄱ ㅈ ㅅㅅㅇㅅ",
    "lyrics": "비참했는데 참 재밌네 네 얘기 한 번 검토한 뒤에 꼭 연락할게 저 세상에서",
    "image":
        "https://cjnews.cj.net/medialibrary/download/?attach_id=18416&size=full",
  },
  {
    "musical": "지킬앤하이드",
    "song": "지금 이 순간",
    "emoji": "🎩🧪🪞",
    "hint": "ㅈㄱ ㅇ ㅅㄱ ㅁㅂㅊㄹ ㄴ ㅁㅇㅇㄷ ㅅㅅㅇ ㅂㅇㄷㅈㄷ",
    "lyrics": "지금 이 순간 마법처럼 날 묶어왔던 사슬을 벗어던진다",
    "image":
        "https://i.namu.wiki/i/EvejpmhdIWrLWMTidwNREqKLMZSdg1aV68HvegOzsRb-FL1p_mYU7nvkNOytOFjBpw7Le3Gg-cJl6zOjanzdSA.webp",
  },
];

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final musicalController = TextEditingController();
  final songController = TextEditingController();

  int currentQuestion = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];

    return Scaffold(
      appBar: AppBar(title: const Text('🎭 뮤지컬 가사 맞추기')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Text(
              question["emoji"] as String,
              style: const TextStyle(fontSize: 60),
            ),

            const SizedBox(height: 30),

            Text(
              question["hint"] as String,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 40),

            TextField(
              controller: musicalController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '뮤지컬 제목',
              ),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: songController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: '넘버 제목',
              ),
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                final isCorrect =
                    musicalController.text.trim() == question["musical"] &&
                    songController.text.trim() == question["lyrics"];

                print("========");
                print("입력 뮤지컬: ${musicalController.text.trim()}");
                print("정답 뮤지컬: ${question["musical"]}");
                print("입력 넘버: ${songController.text.trim()}");
                print("정답 넘버: ${question["song"]}");
                print("결과: $isCorrect");

                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text(isCorrect ? "정답! 🎉" : "오답 😢"),
                    content: Text(
                      "뮤지컬 : ${question["musical"]}\n"
                      "넘버 : ${question["song"]}\n\n"
                      "${question["lyrics"]}",
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);

                          setState(() {
                            if (isCorrect) {
                              score++;
                            }

                            if (currentQuestion < questions.length - 1) {
                              currentQuestion++;
                            } else {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => ResultScreen(
                                    score: score,
                                    totalQuestions: questions.length,
                                  ),
                                ),
                              );
                            }

                            musicalController.clear();
                            songController.clear();
                          });
                        },
                        child: const Text("다음 문제"),
                      ),
                    ],
                  ),
                );
              },
              child: const Text('정답 확인'),
            ),
          ],
        ),
      ),
    );
  }
}
