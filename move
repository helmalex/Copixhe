def move(game, player_color, orders):
    """ Move the selected ant to the selected square

    Parameters
    ----------
    game : data structure that contains game's informations (dict)
    player_color: player's color so orange or blue(str)
    orders: player's order in move_list(lift)


    Version
    -------
    Specification : Bastien Marchal (v.2 21/02/21)
    Implémentation : Bastien Marchal (v.1 19/03/21)
    """
    if player_color == "blue":
        enemy_color = "orange"
    else :
        enemy_color = "blue"
    move_list = orders_verif[1]
    if move_list != []:
        for order in move_list :
            coordonates = order.split(":@")
            coord_verif = coordonates[0].split("-")
            probably_y_verif = int(coord_verif[0])
            probably_x_verif = int(coord_verif[1])
            coord_new = coordonates[1].split("-")
            probably_y_new = int(coord_new[0])
            probably_x_new = int(coord_new[1])
            ant_n = 0
            for ant in game["ants"][player_color] :
                x = game["ants"][player_color][ant_n][0]
                y = game["ants"][player_color][ant_n][1]
                if x == probably_x_verif:
                    if y == probably_y_verif:
                        if probably_x_new - probably_x_verif <= 1 and probably_x_new - probably_x_verif >= -1:
                            if probably_y_new - probably_y_verif <= 1 and probably_y_new - probably_y_verif >= -1:
                                if probably_x_new <= game["board"]["length_x"] and probably_x_new >= 1:
                                    if probably_y_new <= game["board"]["length_y"] and probably_y_new >= 1:
                                        if probably_y_new != game["anthills"][enemy_color]["y"]:
                                            if probably_x_new != game["anthills"][enemy_color]["x"]:
                                                for colors in game["ants"]:
                                                    color = colors
                                                    n_other_ant = 0
                                                    for other_ant in game["ants"][color]:
                                                        x_other_ant = game["ants"][color][n_other_ant][0]
                                                        y_other_ant = game["ants"][color][n_other_ant][1]
                                                        if probably_x_new == x_other_ant:
                                                            if probably_y_new == y_other_ant:
                                                                if color == player_color:
                                                                    if n_other_ant == ant_n:
                                                                        if not game["ants"][player_color][ant_n][4]:
                                                                            game["ants"][player_color][ant_n][0] = probably_x_new
                                                                            game["ants"][player_color][ant_n][1] = probably_y_new
                                                                        else:
                                                                            clod_n = 0
                                                                            for clod in game["clods"]:
                                                                                if probably_x_verif == game["clods"][clod_n][0]:
                                                                                    if probably_y_verif == game["clods"][clod_n][1]:
                                                                                        move_clod = clod_n
                                                                                if probably_x_new == game["clods"][clod_n][0]:
                                                                                    if probably_y_new == game["clods"][clod_n][1]:
                                                                                        no_move = True
                                                                                    else:
                                                                                        no_move = False
                                                                                else:
                                                                                    no_move = False
                                                                                clod_n += 1
                                                                            if not no_move: 
                                                                                game["ants"][player_color][ant_n][0] = probably_x_new
                                                                                game["ants"][player_color][ant_n][1] = probably_y_new
                                                                                game["clods"][move_clod][0] = probably_x_new
                                                                                game["clods"][move_clod][1] = probably_y_new
                                                            else:
                                                                if not game["ants"][player_color][ant_n][4]:
                                                                    game["ants"][player_color][ant_n][0] = probably_x_new
                                                                    game["ants"][player_color][ant_n][1] = probably_y_new
                                                                else:
                                                                    clod_n = 0
                                                                    for clod in game["clods"]:
                                                                        if probably_x_verif == game["clods"][clod_n][0]:
                                                                            if probably_y_verif == game["clods"][clod_n][1]:
                                                                                move_clod = clod_n
                                                                        if probably_x_new == game["clods"][clod_n][0]:
                                                                            if probably_y_new == game["clods"][clod_n][1]:
                                                                                no_move = True
                                                                            else:
                                                                                no_move = False
                                                                        else:
                                                                            no_move = False
                                                                        clod_n += 1
                                                                    if not no_move: 
                                                                        game["ants"][player_color][ant_n][0] = probably_x_new
                                                                        game["ants"][player_color][ant_n][1] = probably_y_new
                                                                        game["clods"][move_clod][0] = probably_x_new
                                                                        game["clods"][move_clod][1] = probably_y_new
                                                        else:
                                                            if not game["ants"][player_color][ant_n][4]:
                                                                game["ants"][player_color][ant_n][0] = probably_x_new
                                                                game["ants"][player_color][ant_n][1] = probably_y_new
                                                            else:
                                                                clod_n = 0
                                                                for clod in game["clods"]:
                                                                    if probably_x_verif == game["clods"][clod_n][0]:
                                                                        if probably_y_verif == game["clods"][clod_n][1]:
                                                                            move_clod = clod_n
                                                                    if probably_x_new == game["clods"][clod_n][0]:
                                                                        if probably_y_new == game["clods"][clod_n][1]:
                                                                            no_move = True
                                                                        else:
                                                                            no_move = False
                                                                    else:
                                                                        no_move = False
                                                                    clod_n += 1
                                                                if not no_move: 
                                                                    game["ants"][player_color][ant_n][0] = probably_x_new
                                                                    game["ants"][player_color][ant_n][1] = probably_y_new
                                                                    game["clods"][move_clod][0] = probably_x_new
                                                                    game["clods"][move_clod][1] = probably_y_new  
                                                        n_other_ant += 1
                ant_n += 1
