import numpy as np

def getGamesHistory(filename):
    games_id = list()
    games_results = list()
    num = 0
    with open(filename, "r") as f:
        lines = f.readlines()
        for line in lines:
            x = line.split(':', 1)
            games_id.append(int((x[0].split(" "))[1]))
            draw_results = (x[1].split(';'))
            game_res = np.zeros(shape=(len(draw_results),3))
            draw_count = 0
            for draw in draw_results:
                col = draw.strip().split(' ')
                counter = 0
                for c in col:
                    if(counter%2 == 0):
                        num = int(c)
                    else:
                        if c[0] == 'r':
                            game_res[draw_count][0] = num
                        elif c[0] == 'g':
                           game_res[draw_count][1] = num
                        else:
                            game_res[draw_count][2] = num
                    counter += 1
                draw_count += 1
            games_results.append(game_res)
    return games_id, games_results


def getIDSumWithPossibleGames(games_id, games_results, bag_content):
    sum = 0
    size = len(games_id)
    for i in range(size):
        max_col = np.max(games_results[i], 0)
        if np.all(np.greater_equal(bag_content, max_col)):
            sum += games_id[i]
    return sum


def getIDSumOfPowers(games_id, games_results):
    sum = 0
    size = len(games_id)
    for i in range(size):
        min_col = np.max(games_results[i], 0)
        sum += np.prod(min_col)
    return sum

        
        
            


def main():
    game_id, game_res = getGamesHistory("Day2\day2.txt")

    bag = [12, 13, 14]

    sum = getIDSumWithPossibleGames(game_id, game_res, bag)

    print(sum)

    sum = getIDSumOfPowers(game_id, game_res)

    print(sum)


if __name__ == '__main__':
    main()

    
                        


            
            
