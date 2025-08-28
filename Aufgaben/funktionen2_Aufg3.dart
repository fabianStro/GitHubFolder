void main(List<String> args) {
  String text1 =
      'Drei Ringe den Elbenkoenig hoch im Licht, Sieben den Zwergenherrschern in ihren Hallen aus Stein, den sterblichen, ewig dem Tode verfallen, neun, einer dem dunklen Herren, auf dem Thron im Lande Mordor, wo die Schatten droehnen. Ein Ring, sie zu Knechten, sie alle zu finden, ins Dunkel zu treiben und ewig im Lande Moreau, wo die Schatten droehnen';
  String text2 =
      'Diese Erzaehlung wuchs und wuchs, waehrend ich sie erzaehlte, bis sie zur Geschichte des Grossen Ringkrieges wurde, in der immer wieder die noch aeltere Geschichte fluechtig auftauchte. Ich hatte damit begonnen, kurz nachdem Der Hobbit geschrieben und noch ehe das Buch 1937 erschienen war; aber dann fuhr ich mit der Erzaehlung nicht fort, denn zuerst wollte ich die Mythologie und Legenden der Altvorderenzeit, die damals schon seit einigen Jahren Gestalt angenommen hatten, vervollstaendigen und ordnen. Das wollte ich gern zu meiner eigenen Freude tun, und ich hatte wenig Hoffnung, dass andere Leute sich fuer diese Arbeit interessieren wuerden, zumal sie in erster Linie sprachwissenschaftlich inspiriert war und urspruenglich darauf zielte, den notwendigen »geschichtlichen« Hintergrund fuer die Elbensprachen zu schaffen.';
  String text3 =
      'Das Buch handelt weitgehend von Hobbits, und aus seinen Seiten kann ein Leser viel ueber ihren Charakter und ein wenig ueber ihre Geschichte erfahren. Weitere Einzelheiten sind auch in der Auswahl aus dem Roten Buch der Westmark zu finden, die unter dem Titel Der Hobbit bereits veroeffentlicht wurde. Jene Darstellung stammt aus den ersten Kapiteln des Roten Buches, die Bilbo selbst, der erste Hobbit, der in der ganzen Welt beruehmt wurde, verfasst und die er Hin und wieder zurueck genannt hat, er erzaehlt darin von seiner Fahrt in den Osten und seiner Rueckkehr: ein Abenteuer, durch das spaeter alle Hobbits in die grossen Ereignisse jenes Zeitalters, von denen hier berichtet wird, hineingezogen wurden. Viele Leser moegen indes gleich zu Beginn mehr ueber dieses bemerkenswerte Volk wissen wollen, waehrend manche vielleicht das erste Buch nicht besitzen. Fuer sie seien hier einige der wichtigeren Punkte aus der Hobbitkunde zusammengestellt und das erste Abenteuer kurz wiedergegeben.';

  print('Gesamt Vokale Text #1: ${countVowels(text1.toLowerCase())}\n');
  print('Gesamt Vokale Text #2: ${countVowels(text2.toLowerCase())}\n');
  print('Gesamt Vokale Text #3: ${countVowels(text3.toLowerCase())}\n');
}

int countVowels(String text) {
  int countA = 0, countE = 0, countI = 0, countO = 0, countU = 0;

  for (var i = 0; i < text.length - 1; i++) {
    switch (text[i]) {
      case 'a':
        countA++;
        break;
      case 'e':
        countE++;
        break;
      case 'i':
        countI++;
        break;
      case 'o':
        countO++;
        break;
      case 'u':
        countU++;
        break;
      default:
    }
  }
  print('A: $countA mal');
  print('E: $countE mal');
  print('I: $countI mal');
  print('O: $countO mal');
  print('U: $countU mal');

  return countA + countE + countI + countO + countU;
}
