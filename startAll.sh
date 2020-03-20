#!/bin/bash

# Script para inicializar todos os bots.

pm2 start _get_approved_.py --interpreter python3 -f |
pm2 start _get_applications_.py --interpreter python3 -f |
pm2 start _get_accepted_.py --interpreter python3 -f |
pm2 start _get_realized_.py --interpreter python3 -f
