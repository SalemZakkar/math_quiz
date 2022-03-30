class Question{
  var quest;
  List<dynamic> answers = [];
  var correct;
  var help;
  var req;
  Question(var quest,var answers,var correct,var help,var req){
    this.quest = quest;
    this.answers = answers;
    this.correct = correct;
    this.help = help;
    this.req = req;
  }
}
List<Question> questions = [
  new Question("f(x) = " + "sin(x^4)" , ["4x^3 Cos(x^4)","4x^3 Sin(x^4)","4x^3 Cos(x)","4x^3 tan(x)"],"4x^3 Cos(x^4)","f\b'(x) = u'(x) . cos(u(x))","f^\b'(x) = ?"),
  new Question("f(x) = Cos(x)",["tan(x)" , "-sin(x)" , "-sin(x) . cos(x)" , "-sin^2(x)"], "-sin(x)", "f\b'(x) = - u'(x) . sin (u(x))", "f\b'(x) = ?"),
  new Question("f(x) = Cos(x^2)",["-2x . sin(x^2)" , "-2x . sin(x)" , "x.sin(x)^2" , "tan(x)"], "-2x . sin(x^2)", "f\b'(x) = - u'(x) . sin (u(x))", "f\b'(x) = ?"),
  new Question("f(x) = 3x+2",["-3" , "5" , "3" , "0"], "3", r"f(x) = ax+b ==> f'(x) = a", "f\b'(x) = ?"),
  new Question("f(x) = x",["tan(x)" , "99" , "0" , "1"], "1", "f(x) = ax+b\b ==> f\b'(x) = a", "f\b'(x) = ?"),
  new Question("f(x) = 5",["1" , "0" , "3" , "sin(x)"], "0", "f(x) = ax+b\b ==> f\b'(x) = a", "f\b'(x) = ?"),
  new Question("f(x) = x^5",["5x^4" , "x^2" , "0" , "4x^5"], "5x^4", "f(x) = x^n \b ==> f\b'(x) = x^n-1", "f\b'(x) = ?"),
  new Question("f(x) = " + r"\sqrt{x^3}",["0" , r"\frac {3x^2}{2\sqrt{x^3}} " ,r"\frac {2x^2}{3\sqrt{x^2}} " , "tan(x)"], r"\frac {3x^2}{2\sqrt{x^3}} ", r"f(x) =\sqrt{g(x)} " + " ==> " + r"f'(x) = \frac {g'(x)}{2\sqrt{g(x)}}", "f\b'(x) = ?"),
  new Question("f(x) = " + r"\sqrt{x^3 + x}",[r"\frac {2x^2}{3\sqrt{x^2}} " , r"\frac {3x^2}{2\sqrt{x^3}} " ,r"\frac {3x^2 + 1}{2\sqrt{x^3 + x}}" , "tan(x)"], r"\frac {3x^2 + 1}{2\sqrt{x^3 + x}}", r"f(x) =\sqrt{g(x)} " + " ==> " + r"f'(x) = \frac {g'(x)}{2\sqrt{g(x)}}", "f\b'(x) = ?"),
  new Question("f(x) = 3x^5",["15x^5" , "15x^4" , "0" , "4x^5"], "15x^4", r"\lambda .(u)x" + "\b==>" + r"\lambda.u'(x)", "f\b'(x) = ?"),
  new Question(r"f(x) = 5\sqrt{x}",["sin(x)" , r"\frac{-5}{2\sqrt{x}}" , r"\frac{1}{2\sqrt{x}}" , r"\frac{5}{2\sqrt{x}}"], r"\frac{5}{2\sqrt{x}}", r"\lambda .(u)x" + "\b==>" + r"\lambda.u'(x)", "f\b'(x) = ?"),
  new Question(r"f(x) = \frac{3x^2}{5}",[r"\frac{6}{5}x" , r"\frac{-6}{5x}" , r"\frac{6x^2}{5}" , r"\frac{6x^2}{5x}"], r"\frac{6}{5}x", r"\lambda .(u)x" + "\b==>" + r"\lambda.u'(x)", "f\b'(x) = ?"),
  new Question(r"f(x) = \frac{x}{x+1}",["(x+1)^2" , r"\frac{1}{(x+1)^2}" , r"\frac{1}{(x+1)}" , "2"], r"\frac{1}{(x+1)^2}", r"\frac{u}{v}"+"\b==>"+r"\frac{(u.v')-(v'.u)}{u^2}", "f\b'(x) = ?"),
  new Question(r"f(x) = \frac{sin(x)}{x}",["0" , r"\frac{x.sin(x)-cos(x)}{(x^2)}" , r"\frac{x.cos(x)-sin(x)}{(x^2)}" , "tan(x)"], r"\frac{x.cos(x)-sin(x)}{(x^2)}", r"\frac{u}{v}"+"\b==>"+r"\frac{(u.v')-(v'.u)}{u^2}", "f\b'(x) = ?"),
  new Question(r"f(x) = \frac{1}{x}",["19x^2" , r"\frac{-1}{x^2}" , r"\frac{1}{x}" , r"\frac{1}{x^2}"], r"\frac{-1}{x^2}", r"\frac{u}{v}"+"\b==>"+r"\frac{(u.v')-(v'.u)}{u^2}", "f\b'(x) = ?"),
  new Question("f(x) = Sin(x) + Cos(x)",["tan(x)" , "Cos(x)^2-Sin(x)^2" , "2Cos(x)-2Sin(x)" , "Cos(x)-Sin(x)"], "Cos(x)-Sin(x)", "(u+v)' \b==>\bu'+v'", "f\b'(x) = ?"),
  new Question(r"f(x) = x^3 + \sqrt{2x}",[r"3x^2+\frac{2}{2 \sqrt{2x}}" , r"3x+\frac{1}{\sqrt{2x}}" , "0" , r"x^3+\frac{1}{2 \sqrt{2x}}"], r"3x^2+\frac{2}{2 \sqrt{2x}}", "(u+v) \b==>\bu'+v'", "f\b'(x) = ?"),
  new Question("f(x) = x.Sin(5x)",["Sin(5x)+Cos(5x)" , "Sin(5x)-5xCos(5x)" , "Sin(5x)+5xCos(5x)" , "0"], "Sin(5x)+5xCos(5x)", "(u.v)' \b ==> u'.v \b+\bu.v'", "f\b'(x) = ?"),
  new Question(r"f(x) = \frac{3}{\sqrt{x}}",["(x+1)^2" , r"-\frac{3}{2x\sqrt{x}}" , r"\frac{1}{(x+1)}" , "2"],r"-\frac{3}{2x\sqrt{x}}", r"\frac{(u.v')-(v'.u)}{u^2}" , "f\b'(x) = ?"),
  new Question(r"f(x) = \frac{1}{(3x-2)^5}",[r"\frac{-15}{(3x-2)^6}" , "0", r"\frac{-15}{(3x-2)^-6}", r"\frac{-15}{(3x-2)^-5}"], r"\frac{-15}{(3x-2)^6}", "u'(ax+b)\b==>a.u'(ax+b)", "f\b'(x) = ?"),
];
List<Question> questions2 = [
  new Question(r"Sin(\frac{5\Pi}{12})", [r"\frac{\sqrt{6}+\sqrt{2}}{4}",r"\frac{\sqrt{6}-\sqrt{2}}{4}",r"\frac{-\sqrt{6}-\sqrt{2}}{4}",r"\frac{\sqrt{2}+\sqrt{2}}{4}"], r"\frac{\sqrt{6}+\sqrt{2}}{4}", " ", " "),
  new Question(r"Sin(\frac{\Pi}{12})", [r"\frac{\sqrt{5}+\sqrt{4}}{4}",r"Cos(\frac{5\Pi}{12})",r"\frac{-\sqrt{6}-\sqrt{2}}{4}",r"\frac{\sqrt{2}+\sqrt{2}}{4}"], r"Cos(\frac{5\Pi}{12})", " ", " "),
  new Question(r"Sin(\frac{3\Pi}{4})", [r"\frac{\sqrt{2}}{2}",r"\frac{1}{2}",r"\frac{2}{\sqrt{2}}",r"\Pi"], r"\frac{\sqrt{2}}{2}", " ", " "),
  new Question(r"Sin(\frac{5\Pi}{4})", [r"\frac{\sqrt{2}}{2}",r"\frac{1}{2}",r"\frac{-\sqrt{2}}{2}",r"\Pi"], r"\frac{-\sqrt{2}}{2}", " ", " "),
  new Question(r"Sin(-\frac{5\Pi}{12})", [r"\Pi",r"\frac{\sqrt{6}-\sqrt{2}}{4}",r"\frac{-\sqrt{6}+\sqrt{2}}{-4}",r"\frac{-\sqrt{6}-\sqrt{2}}{4}"], r"\frac{-\sqrt{6}-\sqrt{2}}{4}", " ", " "),
  new Question(r"Cos(-\Phi)", [r"+Cos(\Phi)",r"-Sin(\Phi)",r"-Cos(\Phi)",r"+Tan(\Phi)"], r"+Cos(\Phi)", " ", " "),
  new Question(r"Sin(-\Phi)", [r"+Sin(\Phi)",r"-Sin(\Phi)",r"-Cos(\Phi)",r"+Cos(\Phi)"], r"-Sin(\Phi)", " ", " "),
  new Question(r"Cos(\Pi+\Phi)", [r"0",r"-Tan(\Phi)",r"+Cos(\Phi)",r"-Cos(\Phi)"], r"-Cos(\Phi)", " ", " "),
  new Question(r"Sin(\Pi+\Phi)", [r"0",r"-Sin(\Phi)",r"+Sin(\Phi)",r"-Tan(\Phi)"], r"-Sin(\Phi)", " ", " "),
  new Question(r"Sin(\Phi-\Pi)", [r"-Sin(\Phi)",r"+Sin(\Phi)",r"+Cos(\Phi)",r"-Tan(\Phi)"], r"-Sin(\Phi)", " ", " "),
  new Question(r"Cos(\Pi-\Phi)", [r"-Tan(\Phi)",r"+Sin(\Phi)",r"+Cos(\Phi)",r"-Cos(\Phi)"], r"-Cos(\Phi)", " ", " "),
  new Question(r"Cos(\frac{\Pi}{2} - \Phi)", [r"+Sin(\Phi)",r"-Sin(\Phi)",r"+Cos(\Phi)","0"], r"+Sin(\Phi)", " ", " "),
  new Question(r"Sin(\frac{\Pi}{2} - \Phi)", [r"+Sin(\Phi)",r"-Sin(\Phi)","0",r"+Cos(\Phi)"], r"+Cos(\Phi)", " ", " "),
  new Question(r"Cos(\frac{\Pi}{2} + \Phi)", [r"+Sin(\Phi)","0",r"-Sin(\Phi)",r"+Cos(\Phi)"], r"-Sin(\Phi)", " ", " "),
  new Question(r"Sin(\frac{\Pi}{2} - \Phi)", [r"+Sin(\Phi)",r"+Cos(\Phi)",r"-Cos(\Phi)","0"], r"+Cos(\Phi)", " ", " "),
];
List<dynamic> names = [
  "Ahmad Al-Rajab",
  "Ahmad Noor Al-Naser",
  "Osama Al-Jendi",
  "Osama Al-Nweer",
  "Ashraf Al-Shaker",
  "Batool Al-Alwani",
  "Bushra Nabeo",
  "Bader Al-Mhemeed",
  "Tasneem Al-Lolo",
  "Tasneem Al-Dalali",
  "Hala Al-Kayal",
  "Joud Al-Beski",
  "Joudi Taameh-Al-Halabi",
  "Raneem Al-Boushi",
  "Sedra Al-Shaar",
  "Sedra Khatab",
  "Abd Alrazaq Smoudi",
  "Mohammad Anas Al-Zakkar",
  "Mohammad Khaled Al-Zakkar",
  "Mariam Al-Borghul",
  "Moneer Al-Saied-Essa",
  "Mai Fareed Al-esh",
  "Waseem Atoura"
];
List<dynamic> teachers = [
  "Mrs.Rama Abu Alrekab",
  "Mrs.Reem Al-War",
];