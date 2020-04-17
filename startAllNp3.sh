
#!/bin/bash

# Script teste.

echo Executando script teste
pm2 start _get_accepted_.py
pm2 start _get_applications_.py
pm2 start _get_approved_.py
pm2 start _get_realized_.py
