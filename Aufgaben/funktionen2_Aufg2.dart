void main(List<String> args) {
  String text1 =
      'Drei Ringe den Elbenkönig hoch im Licht, Sieben den Zwergenherrschern in ihren Hallen aus Stein, den sterblichen, ewig dem Tode verfallen, neun, einer dem dunklen Herren, auf dem Thron im Lande Mordor, wo die Schatten dröhnen. Ein Ring, sie zu Knechten, sie alle zu finden, ins Dunkel zu treiben und ewig im Lande Moreau, wo die Schatten dröhnen';
  String text2 =
      'Diese Erzählung wuchs und wuchs, während ich sie erzählte, bis sie zur Geschichte des Großen Ringkrieges wurde, in der immer wieder die noch ältere Geschichte flüchtig auftauchte. Ich hatte damit begonnen, kurz nachdem Der Hobbit geschrieben und noch ehe das Buch 1937 erschienen war; aber dann fuhr ich mit der Erzählung nicht fort, denn zuerst wollte ich die Mythologie und Legenden der Altvorderenzeit, die damals schon seit einigen Jahren Gestalt angenommen hatten, vervollständigen und ordnen. Das wollte ich gern zu meiner eigenen Freude tun, und ich hatte wenig Hoffnung, daß andere Leute sich für diese Arbeit interessieren würden, zumal sie in erster Linie sprachwissenschaftlich inspiriert war und ursprünglich darauf zielte, den notwendigen »geschichtlichen« Hintergrund für die Elbensprachen zu schaffen.';
  String text3 =
      'Das Buch handelt weitgehend von Hobbits, und aus seinen Seiten kann ein Leser viel über ihren Charakter und ein wenig über ihre Geschichte erfahren. Weitere Einzelheiten sind auch in der Auswahl aus dem Roten Buch der Westmark zu finden, die unter dem Titel Der Hobbit bereits veröffentlicht wurde. Jene Darstellung stammt aus den ersten Kapiteln des Roten Buches, die Bilbo selbst, der erste Hobbit, der in der ganzen Welt berühmt wurde, verfaßt und die er Hin und wieder zurück genannt hat, er erzählt darin von seiner Fahrt in den Osten und seiner Rückkehr: ein Abenteuer, durch das später alle Hobbits in die großen Ereignisse jenes Zeitalters, von denen hier berichtet wird, hineingezogen wurden. Viele Leser mögen indes gleich zu Beginn mehr über dieses bemerkenswerte Volk wissen wollen, während manche vielleicht das erste Buch nicht besitzen. Für sie seien hier einige der wichtigeren Punkte aus der Hobbitkunde zusammengestellt und das erste Abenteuer kurz wiedergegeben.';

  print('${countCharactersInText(text1)} Zeichen');
  print('${countCharactersInText(text2)} Zeichen');
  print('${countCharactersInText(text3)} Zeichen');
}

int countCharactersInText(String text) {
  return text.length;
}
