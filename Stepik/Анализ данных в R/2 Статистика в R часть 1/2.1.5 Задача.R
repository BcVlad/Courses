# 1 �������
red_men <- prop.table(HairEyeColor[ , ,'Male'], 2)[3,2]

# 2 �������
red_men <- prop.table(HairEyeColor[ , ,'Male'], 2)['Red','Blue']
