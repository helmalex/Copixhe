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
    
    for order in orders :
        coordonates = order.split(":@")
        coord_verif = coordonates[0].split("-")
        x_verif = int(coord_verif[0])
        y_verif = int(coord_verif[1])
        coord_new = coordonates[1].split("-")
        x_new = int(coord_new[0])
        y_new = int(coord_new[1])
        ant_n = 0
        for ant in game["ants"][player_color] :
            x = game["ants"][player_color][ant_n][0]
            y = game["ants"][player_color][ant_n][1]
            if x == x_verif:
                if y == y_verif:
                    if x_new - x_verif <= 1 and x_new - x_verif >= -1:
                        if y_new - y_verif <= 1 and y_new - y_verif >= -1:
                            if x_new <= game["board"]["length_x"] and x_new >= 0:
                                if y_new <= game["board"]["length_y"] and y_new >= 0:
                                    if not game["ants"][player_color][ant_n][4]:
                                        game["ants"][player_color][ant_n][0] = x_new
                                        game["ants"][player_color][ant_n][1] = y_new
                                    else:
                                        clod_n = 0
                                        for clod in game["clods"]:
                                            if x_verif == game["clods"][clod_n][0]:
                                                if y_verif == game["clods"][clod_n][1]:
                                                    move_clod = clod_n
                                            if x_new == game["clods"][clod_n][0]:
                                                if y_new == game["clods"][clod_n][1]:
                                                    no_move = True
                                                else:
                                                    no_move = False
                                            else:
                                                no_move = False
                                            clod_n += 1
                                        if not no_move: 
                                            game["ants"][player_color][ant_n][0] = x_new
                                            game["ants"][player_color][ant_n][1] = y_new
                                            game["clods"][move_clod][0] = x_new
                                            game["clods"][move_clod][1] = y_new
            ant_n += 1
