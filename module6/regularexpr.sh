# #!/usr/bin/env bash
# #
# ###########################################################################
# #   upandrepair.sh - Update and repair system.                            #
# ###########################################################################
# #   Author: Vinux                                                         #
# #   Maintenance by: Vinux                                                 #
# #   GitHub: https://github.com/VinySCS                                    #
# #   Discord: Vinux#1657                                                   #
# ###########################################################################
# #   This program is free software: you can redistribute it and/or modify  #
# #   it under the terms of the GNU Lesser General Public License as        #
# #   published by the Free Software Foundation, either version 2 of the    #
# #   GNU Lesser General Public License.                                    #
# ###########################################################################
# #   Example: ./upandrepair.sh -cr check repositories                      #
# #                             -cu check upgrades                          #
# #                             -us update system                           #
# #                             -rp repair packages                         #
# #                             -kv kernel version                          #
# #                             -dv distro version                          #
# #                             -v script version                           #
# #                             -h show help menu                           #
# #                                                                         #
# #   Description: This script were created by Vinux with studies           #
# #                purposes, this script will help you to maintenance your  #
# #                linux with some shortcuts                                #
# ###########################################################################
# #   Version: 1.0 8/29/2022, by Vinux.                                     #
# #       - Script were created.                                            #
# #   Version: 1.1 8/29/2022, by Vinux.                                     #
# #       - Script were modified.                                           #
# #       - Added parameters                                                #
# #       - Added basename.                                                 #
# #       - Added case logic.                                               #
# #   Version: 1.2 8/29/2022, by Vinux.                                     #
# #       - Added CHECK_UPGRADE                                             #
# #   Version: 1.3 9/05/2022, by Vinux.                                     #
# #       - Added colors, and blinking effect                               #
# #       - Changed the text in *)                                          #
# #                                                                         #
# #                                                                         #
# #   Tested: Ubuntu 22.04                                                  #
# #           bash 5.1.16                                                   #
# ###########################################################################
# #
# #
# #
# Grupos que começam com a letra "r" no arquivo /etc/group

# cut -d : -f1 /etc/group | grep "^r"

# Grupos que terminem com a letra "t"

# cut -d : -f1 /etc/group | grep "t$"

# Grupos que comecem com a letra "r" e terminem com a letra "t"

# cut -d : -f1 /etc/group | grep "^r.*t$"

# Grupos que terminam com a letra "e" ou "d"

# cut -d : -f1 /etc/group | grep "[e,d]$"

# Grupos que não terminam com a letra "e" ou "d"

# cut -d : -f1 /etc/group | grep "[^e,d]$"

# Grupos que começam com qualquer dígito e a segunda letra seja um "u" ou "d"

# cut -d : -f1 /etc/group | grep "^.[u,d]"

# Grupos que tenha seu nome de 2 a 4 dígitos de tamanho

# cut -d : -f1 /etc/group | egrep "^.{2,4}$"

# Grupos que comecem com "r" ou "s" (use o operador OR)

# cut -d : -f1 /etc/group | grep "^[r | s]"

# (NÃO CONSEGUI POSTAR A SAIDA DO COMANDO POIS EXCEDEU OS CARACTERES PERMITIDOS AQUI)