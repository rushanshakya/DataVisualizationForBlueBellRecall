# -*- coding: utf-8 -*-
"""
Created on Sat Oct  7 15:32:43 2017

@author: oishe_000
"""

import pandas as pd
import matplotlib.pyplot as plt

data = pd.read_csv('C:\\Users\\oishe_000\\Desktop\\ttu\\Fall 17\\ScriptingLanguages\\course_project\\3totBrand.csv')

#pre-recall preprocessing
df_pre = data[data['Month'] <= 8]
df_pre_blue = df_pre[df_pre['Brand'] == 'BLUE BELL']
df_pre_other = df_pre[df_pre['Brand'] == 'OTHER']
print(df_pre_other)

#recall period
df2 = data[data['Month'] >= 8]
df_recal = df2[df2['Month'] < 16]
print(df_recal)
df_recal_blue = df_recal[df_recal['Brand'] == 'BLUE BELL']
df_recal_other = df_recal[df_recal['Brand'] == 'OTHER']
print(df_recal_other)

#post recall preprocessing 
df_post = data[data['Month'] >= 15]
df_post_blue = df_post[df_post['Brand'] == 'BLUE BELL']
df_post_other = df_post[df_post['Brand'] == 'OTHER']
print(df_post_blue)

#line graphs 
#plt.set_title('Sales of Blue Bell vs All Other Brands in the Pre-recall Period', color='C0')

#fig, recal_period = plt.subplots(nrows=2, ncols=2)
#pre, recal, post = recal_period.flatten()

plt.plot(df_pre_blue.Month, df_pre_blue.TotItemQty, label='Blue Bell sales')
plt.plot(df_pre_other.Month, df_pre_other.TotItemQty, label='Other brand sales')
plt.title('Pre-recall Sales of Blue Bell vs. All Other Brands')
plt.ylabel('Total Item Sale Quantity')
plt.xlabel('Month')
plt.legend(loc=3)
plt.savefig('C:\\Users\\oishe_000\\Desktop\\ttu\\Fall 17\\ScriptingLanguages\\course_project\\pre.png')

plt.plot(df_recal_blue.Month, df_recal_blue.TotItemQty, label='Blue Bell sales')
plt.plot(df_recal_other.Month, df_recal_other.TotItemQty, label='Other brand sales')
plt.title('Recall Period Sales of Blue Bell vs. All Other Brands')
plt.ylabel('Total Item Sale Quantity')
plt.xlabel('Month')
plt.legend(loc = 4)
plt.savefig('C:\\Users\\oishe_000\\Desktop\\ttu\\Fall 17\\ScriptingLanguages\\course_project\\recal.png')

plt.plot(df_post_blue.Month, df_post_blue.TotItemQty, label='Blue Bell sales')
plt.plot(df_post_other.Month, df_post_other.TotItemQty, label='Other brand sales')
plt.legend(loc = 2)
plt.ylabel('Total Item Sale Quantity')
plt.xlabel('Month')
plt.title('Post-recall Sales of Blue Bell vs. All Other Brands')
plt.savefig('C:\\Users\\oishe_000\\Desktop\\ttu\\Fall 17\\ScriptingLanguages\\course_project\\post.png')

#fig.tight_layout()
#plt.show()















