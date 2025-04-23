import tkinter as tk
from tkinter import ttk, messagebox
import articulos

class FormularioArticulos:
    def __init__(self):
        self.articulo1 = articulos.Articulos()
        self.ventana1 = tk.Tk()
        self.ventana1.title("Gestión de Artículos")
        self.cuaderno1 = ttk.Notebook(self.ventana1)
        self.carga_articulos()
        self.consulta_por_codigo()
        self.listado_completo()
        self.cuaderno1.pack(expand=1, fill="both")
        self.ventana1.mainloop()

    def carga_articulos(self):
        # Implementa la pestaña para cargar artículos
        pass

    def consulta_por_codigo(self):
        # Implementa la pestaña para consultar artículos por código
        pass

    def listado_completo(self):
        # Implementa la pestaña para listar todos los artículos
        pass

if __name__ == "__main__":
    FormularioArticulos()