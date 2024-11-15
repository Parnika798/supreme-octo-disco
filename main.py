
import tkinter as tk
from tkinter import ttk, messagebox
import mysql.connector
from mysql.connector import Error
from PIL import Image, ImageTk  # Make sure to install PIL (Pillow) library: pip install pillow


# Create connection to the database
def create_connection():
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="enteryourpassword",  # Change this to your actual password
            database="NewProject"
        )
        if connection.is_connected():
            return connection
    except Error as e:
        messagebox.showerror("Connection Error", str(e))
        return None


# Function to execute SQL commands
def execute_query(query, params=None):
    connection = create_connection()
    if connection:
        cursor = connection.cursor()
        try:
            if params:
                cursor.execute(query, params)
            else:
                cursor.execute(query)
            connection.commit()
            return cursor.lastrowid
        except Error as e:
            messagebox.showerror("Error", str(e))
        finally:
            cursor.close()
            connection.close()


# Function to fetch records
def fetch_records(query):
    connection = create_connection()
    if connection:
        cursor = connection.cursor()
        cursor.execute(query)
        records = cursor.fetchall()
        cursor.close()
        connection.close()
        return records
    return []


# Function to update record
def update_record(table, values):
    if table == "Constituency":
        query = "UPDATE Constituency SET Constituency_Name = %s, State = %s WHERE Constituency_ID = %s"
    elif table == "Party":
        query = "UPDATE Party SET Party_Name = %s WHERE Party_ID = %s"
    elif table == "Candidate":
        query = "UPDATE Candidate SET Candidate_Name = %s, Constituency_ID = %s, Result_ID = %s, Party_ID = %s WHERE Candidate_ID = %s"
    elif table == "Result":
        query = "UPDATE Result SET Result = %s WHERE Result_ID = %s"
    elif table == "Votes":
        query = "UPDATE Votes SET EVMVotes = %s, PostalVotes = %s, TotalVotes = %s, Votes_Percent = %s WHERE Vote_ID = %s"

    execute_query(query, values)


# Function to delete record
def perform_delete_record(table, id):
    if table == "Constituency":
        query = "DELETE FROM Constituency WHERE Constituency_ID = %s"
    elif table == "Party":
        query = "DELETE FROM Party WHERE Party_ID = %s"
    elif table == "Candidate":
        query = "DELETE FROM Candidate WHERE Candidate_ID = %s"
    elif table == "Result":
        query = "DELETE FROM Result WHERE Result_ID = %s"
    elif table == "Votes":
        query = "DELETE FROM Votes WHERE Vote_ID = %s"

    execute_query(query, (id,))


# Function to add record
def add_record(table, values):
    if table == "Constituency":
        query = "INSERT INTO Constituency (Constituency_ID, Constituency_Name, State) VALUES (%s, %s, %s)"
    elif table == "Party":
        query = "INSERT INTO Party (Party_ID, Party_Name) VALUES (%s, %s)"
    elif table == "Candidate":
        query = "INSERT INTO Candidate (Candidate_ID, Candidate_Name, Constituency_ID, Result_ID, Party_ID) VALUES (%s, %s, %s, %s, %s)"
    elif table == "Result":
        query = "INSERT INTO Result (Result_ID, Result, Constituency_ID) VALUES (%s, %s, %s)"
    elif table == "Votes":
        query = "INSERT INTO Votes (Vote_ID, Result_ID, EVMVotes, PostalVotes, TotalVotes, Votes_Percent, Candidate_ID) VALUES (%s, %s, %s, %s, %s, %s, %s)"

    execute_query(query, values)


# Function to read records
def read_records(table):
    if table == "Constituency":
        return fetch_records("SELECT * FROM Constituency")
    elif table == "Party":
        return fetch_records("SELECT * FROM Party")
    elif table == "Candidate":
        return fetch_records("SELECT * FROM Candidate")
    elif table == "Result":
        return fetch_records("SELECT * FROM Result")
    elif table == "Votes":
        return fetch_records("SELECT * FROM Votes")


# Front Page Class
class FrontPage:
    def __init__(self, root, open_main_app):
        self.root = root
        self.root.title("Election Management System")
        self.root.geometry("500x400")

        # Load and set the background image
        self.bg_image = Image.open("Sample1.png")  # Replace with your image filename
        self.bg_image = self.bg_image.resize((500, 400), Image.LANCZOS)

        self.bg_photo = ImageTk.PhotoImage(self.bg_image)

        # Use Canvas to display the image as the background
        self.canvas = tk.Canvas(self.root, width=500, height=400)
        self.canvas.pack(fill="both", expand=True)
        self.canvas.create_image(0, 0, image=self.bg_photo, anchor="nw")

        # Title label
        title_label = tk.Label(
            self.root, text="Election Result Analysis\n and Management System",
            font=("Times New Roman", 25, "bold"), fg="Teal"
        )
        self.canvas.create_window(250, 60, window=title_label)

        # Description label
        desc_label = tk.Label(
            self.root,
            text="Your Gateway to Election Insights and Management!",
            font=("Times New Roman", 14), fg="Maroon"
        )
        self.canvas.create_window(250, 130, window=desc_label)

        # Start Button
        start_button = ttk.Button(
            self.root, text="Get Started",
            command=open_main_app,
            style="Accent.TButton"
        )
        self.canvas.create_window(250, 180, window=start_button)

        # Apply custom styles
        self.set_styles()

    def set_styles(self):
        style = ttk.Style()
        style.configure("Accent.TButton", font=("Arial", 12, "bold"), foreground="Black", background="#008080",
                        padding=5)
        style.map("Accent.TButton", background=[("active", "#006666")])


# Main App Class
class App:
    def __init__(self, root):
        self.root = root
        self.show_front_page()

    def show_front_page(self):
        self.front_page = FrontPage(self.root, self.show_main_app)

    def show_main_app(self):
        self.clear_root()

        # Load and set the background image
        self.bg_image = Image.open("Sample6.png")  # Replace "Sample1.png" with your image path
        self.bg_image = self.bg_image.resize((500, 400), Image.LANCZOS)
        self.bg_photo = ImageTk.PhotoImage(self.bg_image)

        # Create a canvas to display the background image
        self.canvas = tk.Canvas(self.root, width=500, height=400)
        self.canvas.pack(fill="both", expand=True)
        self.canvas.create_image(0, 0, image=self.bg_photo, anchor="nw")

        # Add main widgets to the canvas
        self.table_name = tk.StringVar()
        self.table_dropdown = ttk.Combobox(self.root, textvariable=self.table_name)
        self.table_dropdown['values'] = ("Constituency", "Party", "Candidate", "Result", "Votes")
        self.canvas.create_window(250, 50, window=self.table_dropdown)

        self.show_buttons()

    def clear_root(self):
        for widget in self.root.winfo_children():
            widget.destroy()

    def create_widgets(self):
        # Dropdown to select table
        ttk.Label(self.root, text="Select Table:").pack(pady=10)
        self.table_name = tk.StringVar()
        self.table_dropdown = ttk.Combobox(self.root, textvariable=self.table_name)
        self.table_dropdown['values'] = ("Constituency", "Party", "Candidate", "Result", "Votes")
        self.table_dropdown.pack(pady=5)

        self.show_buttons()

    def show_buttons(self):
        # Add buttons for actions
        self.btn_add = ttk.Button(self.root, text="Add Record", command=self.add_record_window)
        self.canvas.create_window(250, 100, window=self.btn_add)

        self.btn_update = ttk.Button(self.root, text="Update Record", command=self.update_record_window)
        self.canvas.create_window(250, 140, window=self.btn_update)

        self.btn_delete = ttk.Button(self.root, text="Delete Record", command=self.delete_record_window)
        self.canvas.create_window(250, 180, window=self.btn_delete)

        self.btn_read = ttk.Button(self.root, text="Read Records", command=self.read_records_window)
        self.canvas.create_window(250, 220, window=self.btn_read)

    def add_record_window(self):
        # Open a new window for adding records
        window = tk.Toplevel(self.root)
        window.title("Add Record")

        # Fetch selected table
        table = self.table_name.get()

        # Create form based on table
        if table == "Constituency":
            labels = ["Constituency ID", "Constituency Name", "State"]
            entries = [tk.Entry(window) for _ in labels]
        elif table == "Party":
            labels = ["Party ID", "Party Name"]
            entries = [tk.Entry(window) for _ in labels]
        elif table == "Candidate":
            labels = ["Candidate ID", "Candidate Name", "Constituency ID", "Result ID", "Party ID"]
            entries = [tk.Entry(window) for _ in labels]
        elif table == "Result":
            labels = ["Result ID", "Result", "Constituency ID"]
            entries = [tk.Entry(window) for _ in labels]
        elif table == "Votes":
            labels = ["Vote ID", "Result ID", "EVM Votes", "Postal Votes", "Total Votes", "Votes Percent", "Candidate ID"]
            entries = [tk.Entry(window) for _ in labels]

        for i, label in enumerate(labels):
            tk.Label(window, text=label).grid(row=i, column=0)
            entries[i].grid(row=i, column=1)

        tk.Button(window, text="Submit", command=lambda: self.submit_add(table, [entry.get() for entry in entries])).grid(row=len(labels), columnspan=2)

    def submit_add(self, table, values):
        add_record(table, tuple(values))
        messagebox.showinfo("Success", f"Record added to {table} successfully!")

    def update_record_window(self):
        # Open a new window for updating records
        window = tk.Toplevel(self.root)
        window.title("Update Record")

        # Fetch selected table
        table = self.table_name.get()
        tk.Label(window, text="Enter ID to Update:").grid(row=0, column=0)
        entry_id = tk.Entry(window)
        entry_id.grid(row=0, column=1)

        # Create form based on table
        if table == "Constituency":
            labels = ["New Constituency Name", "New State"]
            entries = [tk.Entry(window) for _ in labels]
        elif table == "Party":
            labels = ["New Party Name"]
            entries = [tk.Entry(window)]
        elif table == "Candidate":
            labels = ["New Candidate Name", "New Constituency ID", "New Result ID", "New Party ID"]
            entries = [tk.Entry(window) for _ in labels]
        elif table == "Result":
            labels = ["New Result"]
            entries = [tk.Entry(window)]
        elif table == "Votes":
            labels = ["New EVM Votes", "New Postal Votes", "New Total Votes", "New Votes Percent"]
            entries = [tk.Entry(window) for _ in labels]

        for i, label in enumerate(labels):
            tk.Label(window, text=label).grid(row=i + 1, column=0)
            entries[i].grid(row=i + 1, column=1)

        tk.Button(window, text="Submit", command=lambda: self.submit_update(table, entry_id.get(), [entry.get() for entry in entries])).grid(row=len(labels) + 1, columnspan=2)

    def submit_update(self, table, record_id, values):
        values.append(record_id)  # Add ID to the end of the values
        update_record(table, tuple(values))
        messagebox.showinfo("Success", f"Record in {table} updated successfully!")


    def delete_record_window(self):
        # Open a new window for deleting records
        window = tk.Toplevel(self.root)
        window.title("Delete Record")

        # Fetch selected table
        table = self.table_name.get()
        tk.Label(window, text="Enter ID to Delete:").grid(row=0, column=0)
        entry_id = tk.Entry(window)
        entry_id.grid(row=0, column=1)

        tk.Button(window, text="Delete", command=lambda: self.delete_record(table, entry_id.get())).grid(row=1, columnspan=2)

    def delete_record(self, table, record_id):
        perform_delete_record(table, record_id)
        messagebox.showinfo("Success", f"Record from {table} deleted successfully!")

    def read_records_window(self):
        # Open a new window for reading records
        window = tk.Toplevel(self.root)
        window.title("Read Records")

        table = self.table_name.get()
        records = read_records(table)

        # Define columns based on table selection
        if table == "Constituency":
            columns = ("Constituency_ID", "Constituency_Name", "State")
        elif table == "Party":
            columns = ("Party_ID", "Party_Name")
        elif table == "Candidate":
            columns = ("Candidate_ID", "Candidate_Name", "Constituency_ID", "Result_ID", "Party_ID")
        elif table == "Result":
            columns = ("Result_ID", "Result", "Constituency_ID")
        elif table == "Votes":
            columns = ("Vote_ID", "Result_ID", "EVMVotes", "PostalVotes", "TotalVotes", "Votes_Percent", "Candidate_ID")

        # Create Treeview widget
        tree = ttk.Treeview(window, columns=columns, show="headings")

        # Define headings and column width
        for col in columns:
            tree.heading(col, text=col)  # Set heading
            tree.column(col, anchor="center", width=100)  # Set column width and alignment

        # Insert data into treeview
        for record in records:
            tree.insert("", "end", values=record)

        # Place treeview widget in the window
        tree.pack(fill="both", expand=True)

        # Add a scrollbar
        scrollbar = ttk.Scrollbar(window, orient="vertical", command=tree.yview)
        tree.configure(yscroll=scrollbar.set)
        scrollbar.pack(side="right", fill="y")


if __name__ == "__main__":
    root = tk.Tk()
    app = App(root)
    root.mainloop()