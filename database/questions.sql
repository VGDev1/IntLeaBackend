--
-- File generated with SQLiteStudio v3.2.1 on Sun Jan 26 14:15:12 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Java
CREATE TABLE "Java" (
	"Number"	INTEGER,
	"Chapter"	TEXT,
	"Title"	TEXT,
	"Text"	TEXT,
	"Instruction"	TEXT,
	"Prefill"	TEXT,
	"ControlOutput"	TEXT
);
INSERT INTO Java (Number, Chapter, Title, Text, Instruction, Prefill, ControlOutput) VALUES (1, 'Testing testing', 'Testing testing', 'Testing testing', 'Testing testing', 'Testing testing', 'Testing testing');

-- Table: Scala
CREATE TABLE "Scala" (
	"Number"	INTEGER,
	"Chapter"	TEXT,
	"Title"	TEXT,
	"Text"	TEXT,
	"Instructions"	TEXT,
	"Answer"	TEXT,
	"ControllOutput"	TEXT
);
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (1, 'Introduktion', 'Introduktion', 'Programmering innebär att ge instruktioner till en maskin. Programmering sker oftast genom ett programmeringsspråk. I denna korta kurs kommer du få testa på att programmera i Scala. Ett förhållandevis nytt programmeringsspråk som kör på JVM:en. Med JVM:en menas Java Virual machine. Världens mest använda körmiljö, där språk så som Java, Scala och Kotlin körs. 

Det finns olika sätt att programmera på, de två största objekt- och funtionsorienterad är de som denna kursen lägger fokus på. Vi kommer introduktionskurs göra en version av det klassiska spelet sänka skepp.', NULL, NULL, NULL);
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (2, 'Sänka skepp', 'Litteraler', 'Vi ska börja lära oss hur man använder litteraler. En litteral representerar ett fixt värde i koden som används för att skapa data som ett program som ett program kan bearbeta.

Exempel:

42-heltalslitteral
42.0-decimaltalslitteral
''!''-teckenlitteral(omgärdas av enkelfknuttar)
"hej"-stränglitteral(omgärdas av dubbelfnuttar)
true-litteral för sanningvärdet "sant"

Alla litteraler har en typ som avgör vad man kan göra med dem. Det finns ett antal inbyggda datatyper i Scala som vi ska använda oss av.

Int- för heltal
Double-för decimaltal
String-för strängar

Kompilatorn håller reda på att uttryck kombineras på ett såkallat typsäkert sätt. Annars blir det kompileringsfel. Scala kompilatorn kan dock göra typhärledningen åt dig så du slipper ange dessa.
', 'Testa med hjälp av metoden println() att göra lite utskrifter

Exempel:

println(2)
println("Scala är det bästa programmeringsspråket")
println(2.0)', 'println(2)
println("Scala är det bästa programmeringsspråket")
println(2.0)', NULL);
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (3, 'Sänka skepp', 'Uttryck', 'Ett uttryck består av en eller flera delar som efter evaluering ger ett resultat. Delar i ett uttryck kan till exempel vara : litteraler(42), operatorer(+) och funktioner(sin).

Exempel:

Ett enkelt uttryck:

32.0

Sammansatta uttryck:

40 + 2
(20 + 1) * 2
sin(0.5 * Pi)
"Programmering" + " är " + "kul"

', 'Testa med hjälp av metoden println() att evaluera lite uttryck

Exempel:

println(40 + 2)
', '', '');
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (4, 'Sänka skepp', 'Variabler', 'En variabel kan tilldelas värdet av ett enkelt eller sammansatt uttryck. Den har ett variabelnamn(identifierare) vars utformning följer de språkliga reglerna såkallade idiom. En ny variabel införs i en variabeldeklaration och då kan den ges ett värde(initialiseras), varibelns namn blir då en referens till värdet. 

Exempel på variabeldeklaration i Scala:

val a = 0.5 * Pi
var length = 50
length  = 30

Vid exekvering av programmet sparas dessa värden tillfälligt i minnet och deras respektive värde hämtas ur minnet när de refereras. Variabler som har deklarerats med val kan endast tilldelas ett värde en enda gång, medans variabler deklarerade med var kan ändra värde.', 'Testa att deklarera några varibaler både med hjälp av var och val. Sätt sedan dessa i uttryck och tilldela resultet till nya variabler. Printa därefter ut resultat varibalerna med hjälp av println()

Exempel: 

val x = 10
var y = 0
y = 2 + 3
val result  = y + x
println(result)', '', '');
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (5, 'Sänka skepp', 'Strängkonkatenering', 'Med strängkonkatenering menas att sätta samman strängar(ord).  Detta kan i Scala huvudsakligen göras på 2 olika sätt. Antingen genom operatorn + eller genom interpolation.

Exempel:

val hälsofras = "hej" + "på" + "dig"
val x = 42
val interpolation  = s"Dubbla värdet av $x är ${x * 2}."
', 'Testa sträng konkatenering i kombination med vad du tidigare lärt dig och skriv ut det med hjälp av println()', '', '');
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (6, 'Sänka skepp', 'Heltal- och flyttalsaritmetik', 'De fyra räknesätten skrivs precis som i matematiken.

Exempel heltalsaritmetik:

3 + 5 * 2 - 1 = 12
(3 + 5) * (2 - 1) = 8
41 / 2 = 20
41  % 2 = 1 moduloräkning''

Exempel flyttalsaritmetik:

math.Pi = 3.14159265....
math.Pi * 1E12 = 3.14159265E12
0.00000000001 * 1E10 = 1.0E10', 'Testa de olika räknesätten och skriv ut resultatet med hjälp av println()', '', '');
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (7, 'Sänka skepp', 'Funktion, argument, parameter', 'Med nyckelordet def kan man låta ett namn betyda samma sak som ett uttryck.

Exempel: def trädlängd = 50

Detta uttryck evalueras varje gång ett anrop sker, dvs varje gång namnet används på ett annat ställe i koden.

Med hjälp av nyckelordet def kan man också deklarera funktioner. En funktion räknar ut resultat baserat på indata som kallas argument, argument ges namn genom deklaration av parametrar.

Exempel: 

def dubblera(x: Int): Int = 2 * x    deklaration
dubblera(42)     användande resultatet blir 42

Parametrars typ måste anges efter kolon. Returtypen kan härledas men den anges också med fördel. Observera att x blir ett nytt fräscht lokalt namn som bara finns och syns inuti funktionen, det har dvs inget med andra x utanför funktionen att göra.', 'Deklarera funktionen halvera. Ge inparameter 30 och spara resultatet i en variabel. Skriv därefter ut variabeln med hjälp av println().', '', '15');
INSERT INTO Scala (Number, Chapter, Title, Text, Instructions, Answer, ControllOutput) VALUES (8, 'Sänka skepp', 'Logiska uttryck', '', '', '', '');

-- Table: Users
CREATE TABLE "Users" (
	"ClassCode"	BLOB
);
INSERT INTO Users (ClassCode) VALUES ('ABC123');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
