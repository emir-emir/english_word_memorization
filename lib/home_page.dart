import 'package:english_word/english_word.dart';
import 'package:english_word/provider/counter_changenotifier.dart';
import 'package:english_word/turkish_word.dart';
import 'package:english_word/widgets/global_button.dart';
import 'package:english_word/widgets/global_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: GlobalText(textName: "İngilizce Kelime Ezberleme "),
      ),
      body: Center(child: Consumer<Counter>(builder: (context, Counter, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            englishPart(Counter),
            SizedBox(height: 80),
            turkishPart(Counter),
            SizedBox(height: 20),
            resetPart(Counter),
          ],
        );
      })),
    );
  }

                                /**  ENGLİSH PART **/

  Padding englishPart(Counter Counter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Container(
        // color: Colors.red,
        decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 5)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(height: 20),
            GlobalText(textName: "İngilizce"),
            SizedBox(height: 10),
            listTileEnglishPart(Counter),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                butttomReduceEnglish(Counter),
                buttonIncreaseEnglish(Counter)
              ],
            ),
          ],
        ),
      ),
    );
  }
  Padding listTileEnglishPart(Counter Counter) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListTile(
          leading: CircleAvatar(child: GlobalText(textName: Counter.ingilizceCounter.toString())),
          title: GlobalText(
            textName: EngilishWord.ingilizceList[Counter.ingilizceCounter],
          )),
    );
  }
  GlobalButton butttomReduceEnglish(Counter Counter) {
    return GlobalButton(
                onPressed: () {
                  Counter.ingilizceCounter == 0 ? null : Counter.ingilizceAzalt();
                },
                textName: "İngilizce Azalt",
              );
  }
  GlobalButton buttonIncreaseEnglish(Counter Counter) {
    return GlobalButton(
      textName: "İngilizce Arttır",
      onPressed: () {
        Counter.ingilizceCounter == EngilishWord.ingilizceList.length - 1 ? null : Counter.ingilizceArttir();
      },
    );
  }



                                  /**  TURKİSH PART **/
  Padding turkishPart(Counter Counter) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
                decoration: BoxDecoration(border: Border.all(color: Colors.purple, width: 5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GlobalText(textName: "Türkçe"),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: listTileTurkishPart(Counter),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        butttomReduceTurkish(Counter),
                        buttonIncreaseTurkish(Counter)
                      ],
                    ),
                  ],
                )),
          );
  }
  ListTile listTileTurkishPart(Counter Counter) {
    return ListTile(
        leading: CircleAvatar(
            child: GlobalText(
              textName: Counter.turkceCounter.toString(),
            )),
        title: GlobalText(
          textName: TurkishWord.turkceList[Counter.turkceCounter],
        ));
  }
  GlobalButton butttomReduceTurkish(Counter Counter) {
    return GlobalButton(
      textName: "Türkçe Azalt",
      onPressed: () {
        Counter.turkceCounter == 0 ? null : Counter.turkceAzalt();
      },
    );
  }
  GlobalButton buttonIncreaseTurkish(Counter Counter) {
    return GlobalButton(
                        textName: "Türkçe Arttır",
                        onPressed: () {
                          Counter.turkceCounter == TurkishWord.turkceList.length - 1 ? null : Counter.turkceArttir();
                        },
                      );
  }
                                   /**  RESET PART **/
  GlobalButton resetPart(Counter Counter) {
    return GlobalButton(
        textName: "Sıfırla",
        onPressed: () {
          Counter.reset();
        });
  }

}
