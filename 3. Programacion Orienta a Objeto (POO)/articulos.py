import tkinter as tk
from tkinter import ttk, messagebox
import mysql.connector

class ArticulosApp:
    def __init__(self, root):
        self.root = root
        self.root.title("Gestión de Artículos")
        
        # Configuración de la base de datos
        self.db = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="articulos_db"
        )
        self.create_table()
        
        # Crear pestañas
        self.notebook = ttk.Notebook(root)
        
        # Pestaña de carga
        self.tab_carga = ttk.Frame(self.notebook)
        self.notebook.add(self.tab_carga, text="Cargar Artículo")
        self.create_carga_tab()
        
        # Pestaña de consulta
        self.tab_consulta = ttk.Frame(self.notebook)
        self.notebook.add(self.tab_consulta, text="Consultar por Código")
        self.create_consulta_tab()
        
        # Pestaña de listado
        self.tab_listado = ttk.Frame(self.notebook)
        self.notebook.add(self.tab_listado, text="Listado Completo")
        self.create_listado_tab()
        
        self.notebook.pack(expand=1, fill="both")
        
    def create_table(self):
        cursor = self.db.cursor()
        cursor.execute("""
            CREATE TABLE IF NOT EXISTS articulos (
                codigo INT PRIMARY KEY,
                nombre VARCHAR(50) NOT NULL,
                precio DECIMAL(10,2) NOT NULL,
                stock INT NOT NULL
            )
        """)
        self.db.commit()
        
    def create_carga_tab(self):
        # Campos de entrada
        tk.Label(self.tab_carga, text="Código:").grid(row=0, column=0, padx=5, pady=5)
        self.codigo_entry = tk.Entry(self.tab_carga)
        self.codigo_entry.grid(row=0, column=1, padx=5, pady=5)
        
        tk.Label(self.tab_carga, text="Nombre:").grid(row=1, column=0, padx=5, pady=5)
        self.nombre_entry = tk.Entry(self.tab_carga)
        self.nombre_entry.grid(row=1, column=1, padx=5, pady=5)
        
        tk.Label(self.tab_carga, text="Precio:").grid(row=2, column=0, padx=5, pady=5)
        self.precio_entry = tk.Entry(self.tab_carga)
        self.precio_entry.grid(row=2, column=1, padx=5, pady=5)
        
        tk.Label(self.tab_carga, text="Stock:").grid(row=3, column=0, padx=5, pady=5)
        self.stock_entry = tk.Entry(self.tab_carga)
        self.stock_entry.grid(row=3, column=1, padx=5, pady=5)
        
        # Botón de guardar
        tk.Button(self.tab_carga, text="Guardar Artículo", command=self.guardar_articulo).grid(row=4, column=0, columnspan=2, pady=10)
        
    def create_consulta_tab(self):
        tk.Label(self.tab_consulta, text="Código del artículo:").pack(pady=5)
        self.codigo_consulta_entry = tk.Entry(self.tab_consulta)
        self.codigo_consulta_entry.pack(pady=5)
        
        tk.Button(self.tab_consulta, text="Buscar", command=self.buscar_articulo).pack(pady=10)
        
        self.resultado_consulta = tk.Text(self.tab_consulta, height=5, width=40)
        self.resultado_consulta.pack(pady=10)
        
    def create_listado_tab(self):
        self.tree = ttk.Treeview(self.tab_listado, columns=("Código", "Nombre", "Precio", "Stock"), show="headings")
        self.tree.heading("Código", text="Código")
        self.tree.heading("Nombre", text="Nombre")
        self.tree.heading("Precio", text="Precio")
        self.tree.heading("Stock", text="Stock")
        self.tree.pack(fill="both", expand=1)
        
        self.actualizar_listado()
        
    def guardar_articulo(self):
        try:
            codigo = int(self.codigo_entry.get())
            nombre = self.nombre_entry.get()
            precio = float(self.precio_entry.get())
            stock = int(self.stock_entry.get())
            
            cursor = self.db.cursor()
            sql = "INSERT INTO articulos (codigo, nombre, precio, stock) VALUES (%s, %s, %s, %s)"
            valores = (codigo, nombre, precio, stock)
            cursor.execute(sql, valores)
            self.db.commit()
            
            messagebox.showinfo("Éxito", "Artículo guardado correctamente")
            self.limpiar_campos()
            
        except mysql.connector.Error as err:
            messagebox.showerror("Error", f"Error de base de datos: {err}")
        except ValueError:
            messagebox.showerror("Error", "Datos ingresados no válidos")
            
    def limpiar_campos(self):
        self.codigo_entry.delete(0, tk.END)
        self.nombre_entry.delete(0, tk.END)
        self.precio_entry.delete(0, tk.END)
        self.stock_entry.delete(0, tk.END)
        
    def buscar_articulo(self):
        try:
            codigo = int(self.codigo_consulta_entry.get())
            cursor = self.db.cursor()
            sql = "SELECT * FROM articulos WHERE codigo = %s"
            cursor.execute(sql, (codigo,))
            articulo = cursor.fetchone()
            
            self.resultado_consulta.delete(1.0, tk.END)
            if articulo:
                texto = f"Código: {articulo[0]}\nNombre: {articulo[1]}\nPrecio: {articulo[2]}\nStock: {articulo[3]}"
                self.resultado_consulta.insert(tk.END, texto)
            else:
                self.resultado_consulta.insert(tk.END, "Artículo no encontrado")
                
        except ValueError:
            messagebox.showerror("Error", "Código debe ser un número entero")
            
    def actualizar_listado(self):
        # Limpiar datos anteriores
        for item in self.tree.get_children():
            self.tree.delete(item)
            
        cursor = self.db.cursor()
        cursor.execute("SELECT * FROM articulos")
        articulos = cursor.fetchall()
        
        for articulo in articulos:
            self.tree.insert("", tk.END, values=articulo)

if __name__ == "__main__":
    root = tk.Tk()
    app = ArticulosApp(root)
    root.mainloop()