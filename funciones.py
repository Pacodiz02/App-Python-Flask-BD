# Fichero de funciones

##Función para mostrar información tras la conexión.

def Mostrar_Autores_y_Libros(db):
    sql= "SELECT a.Nombre_autor, l.Titulo FROM AUTOR a, LIBROS l WHERE a.Nombre_autor=l.Autor"
    cursor=db.cursor()
    cursor.execute(sql)
    datos = cursor.fetchall()
    return datos