import numpy as np
import pandas as pd
reactions_in_ms = np.loadtxt('./files/reactions.txt')
reactions_in_sec = reactions_in_ms/1000
reactions_df = pd.DataFrame(reactions_in_sec)
reactions_df.describe()
