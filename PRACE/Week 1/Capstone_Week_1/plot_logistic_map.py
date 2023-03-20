import seaborn as sns
import pandas as pd
import matplotlib.pyplot as plt


data = pd.read_csv('q1_out.csv')
data = data.dropna()
data.index = data['r']
data = data.drop(labels = 'r', axis=1)

sns.scatterplot(data = data, s = 4)

plt.savefig('plotQ1-2.png', dpi = 400)
