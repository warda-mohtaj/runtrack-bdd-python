import mysql.connector
conn = mysql.connector.connect(host='localhost', user='root', password='laplateforme.io', database = "laplateforme")

cursor = conn.cursor()
cursor.execute("select nom, capacite from salles")
result = cursor.fetchall()
print(result)
