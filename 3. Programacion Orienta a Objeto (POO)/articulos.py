import mysql.connector

class Articulos:
    def abrir(self):
        conexion = mysql.connector.connect(host="localhost",
                                           user="root",
                                           password="@WCfL3Ex&s!jn!uw8K7)v66Q",
                                           database="inventario")
        return conexion

    def alta(self, datos):
        cone = self.abrir()
        cursor = cone.cursor()
        sql = "INSERT INTO articulos (descripcion, precio) VALUES (%s, %s)"
        cursor.execute(sql, datos)
        cone.commit()
        cone.close()

    def consulta(self, codigo):
        cone = self.abrir()
        cursor = cone.cursor()
        sql = "SELECT descripcion, precio FROM articulos WHERE codigo = %s"
        cursor.execute(sql, (codigo,))
        resultado = cursor.fetchone()
        cone.close()
        return resultado

    def recuperar_todos(self):
        cone = self.abrir()
        cursor = cone.cursor()
        sql = "SELECT codigo, descripcion, precio FROM articulos"
        cursor.execute(sql)
        resultados = cursor.fetchall()
        cone.close()
        return resultados
