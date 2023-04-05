import mysql.connector
conn = mysql.connector.connect(host='localhost', user='root', password='laplateforme.io', database = "laplateforme")

cursor = conn.cursor()
cursor.execute("select * from etage")
cursor = list(cursor)

# 0 et 1 pour la premiere ligne de données, 3 pour le troisième éléments (superficie)

superficie = cursor[0][3] + cursor[1][3]
print('La superficie de La Plateforme est de', superficie,'m2')
