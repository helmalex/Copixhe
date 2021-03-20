# copixhe
Programming project for lesson INFOB132 @ UNamur


def generate_board(path):
    """This function reads a .txt file with all the board informations and translate the informations to create the board and make an dictionnary with all the infomation of the        board, and of the ants
    
    Parameters
    ====================================================================
    path : file's path (str)

    Return
    ====================================================================
    game : data structure that contains game's informations (dict)
    
    Version :
    ====================================================================
    specification :Antoine Culot (v.1 21/02/21)""" 
    
def gamemode():
    '''This function determinates how the game will be played (how many players, IA)
    
    Return :
    =========================================================
    game_mode : how many users there will be (0,1,2) (int)

    Version :
    =========================================================
    specification : Antoine Culot (v1 20/02/21)'''

def user_play():
    '''This function show an example of all order that the user can give and ask to him to write his order
    
    Return : 
    =========================================================
    order : the order given by the user (str)
    
    Version :
    =========================================================
    specification : Antoine Culot (v.1 21/02/21)'''

def IA_Play(game):
    """Read the board and play on its own

    Parameters
    ----------
    game : data structure that contains game informations (dict).

    Return
    ------
    ia_orders : Orders from the IA for the actual game.

    Version
    -------
    Spécification : Alexandre Helman (v.1 21/02/2021)
    """

def order_treatment(orders):
    """Analyse the string that contains the player's orders, if the given order is illegal, it will be ask again to the user to enter a correct order 

    Parameters
    ----------
    orders : string that contains the player's orders (str).

    Version
    -------
    Spécification : Alexandre Helman (v.1 21/02/2021)
    """

def display(game_mode, game):
    """This function show the game board after each turns. If the game is played by 2 bots (0 players), there will be a 500ms break before each turn
    
    Parameters :
    ====================================================================
    game_mode : how many users there will be (0,1,2) (int)
    game : data structure that contains game's informations (dict)
    
    Version :
    ====================================================================
    specification :Antoine Culot (v.1 21/02/21)"""
    
def is_game_over(game, game_mode):
    """ Check if the game is over or not. This functions also reads the gamemode to know wich types of order (user or IA) it has to ask
    
    Parameters
    ------------------------
    game : data structure that contains game's informations (dict)
    game_mode :  how many users there will be (0,1,2) (int)

    Version
    ----------------
    Specification : Alexis Van Wallendael (v.1 21/02/21)
    """

def move(game):
    """ Move the selected ant to the selected square
    
    Parameters
    -------------------
    game : data structure that contains game's informations (dict)
    
    Version
    ---------------
    Specification : Alexis Van Wallendael (v.1 21/02/21)
    """

def attack(game):
    """ Look in the game's info and remove one life's point at the ant hit
    
    Parameters
    -------------------
    gam e : all the information on the game (dict)
    
    Version
    ------------
    Specification : Bastien Marchal (v. 1 21/02/21)""" 

def lift(game):
    """ Change the state of a ant (charge) from False to True
    
    Parameters
    -------------------
    game : all information on the game (dict)
    
    Version
    ------------
    Specification : Bastien Marchal (v. 1 21/02/21)"""

def drop(game):
    """ Change the state of a ant (charge) from True to False
    
    Parameters
    -------------------
    game : all information on the game (dict)
    
    Version
    ------------
    Specification : Bastien Marchal (v. 1 21/02/21)
    """

def spawn(game):
    """ Spawn a new ant beside the anthill
    
    Parameters
    ------------------------
    game : data structure that contains game's informations (dict)
    
    Version
    --------------
    Specification : Alexis Van Wallendael (v.1 21/02/21)
    """

def load_board()
    """ Load the file that contains the board and fulfill the data_structure
    
    Parameters
    -----------
    path : path of the file that contains the map
    game : 
    """
