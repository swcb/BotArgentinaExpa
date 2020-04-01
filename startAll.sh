
#!/bin/bash

# Script teste.

echo Executando script teste
pm2 start _get_accepted_.py --interpreter python3
pm2 start _get_applications_.py --interpreter python3
pm2 start _get_approved_.py --interpreter python3
pm2 start _get_realized_.py --interpreter python3
