import sys
sys.path.append("../..")

import psycopg2.extras
from controller import RobotRotine as rr
from api import graphqlconsume, querygraphql
import time
import datetime
import numpy as np


robo5 = rr.RobotRotine()
i = 0
dtinit = '2019-12-01T00:00:00.00000'
while i < 31:
    print(dtinit)
    try:
        dtfim = np.datetime64(dtinit) + np.timedelta64(24, 'h')
        robo5.ExecutaRotina('date_matched', dtinit,
                        dtfim, 1)
        i = i+1
        dtinit = np.datetime64(dtinit) + np.timedelta64i(24, 'h')
    except:
        print('deu erro')

print('Periodo Executado com sucesso')