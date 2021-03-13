'''Создайте класс SoccerPlayer, у которого есть:

конструктор __init__, принимающий 2 аргумента: name, surname. Также во время инициализации необходимо создать 2 атрибута экземпляра: goals и assists - общее количество голов и передач игрока, изначально оба значения должны быть 0
метод score, который принимает количество голов, забитых игроком, по умолчанию данное значение равно единице. Метод должен увеличить общее количество забитых голов игрока на переданное значение;
метод make_assist, который принимает количество передач, сделанных игроком за матч, по умолчанию данное значение равно единице. Метод должен увеличить общее количество сделанных передач игроком на переданное значение;
метод statistics, который вывод на экран статистику игрока в виде:
<Фамилия> <Имя> - голы: <goals>, передачи: <assists>'''


class SoccerPlayer:
    def __init__(self, name, surname, goals=0, assists=0):
        self.name = name
        self.surname = surname
        self.goals = goals
        self.assists = assists

    def score(self, goal=1):
        self.goals += goal

    def make_assist(self, assist=1):
        self.assists += assist

    def statistics(self):
        print(f"{self.surname} {self.name} - голы: {self.goals}, передачи: {self.assists}")

# leo = SoccerPlayer('Leo', 'Messi')
# leo.score(700)
# leo.make_assist(500)
# leo.statistics() # выводит "Messi Leo - голы: 700, передачи: 500"
# kokorin = SoccerPlayer('Alex', 'Kokorin')
# kokorin.score()
# kokorin.statistics() # выводит "Kokorin Alex - голы: 1, передачи: 0"