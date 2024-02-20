#!/usr/bin/env python3

import sqlite3
import os
import sys

def list_tables_and_row_counts(database_path):
    """Connects to an SQLite database, lists tables and their row counts."""
    connection = sqlite3.connect(database_path)
    cursor = connection.cursor()
    
    # Retrieve a list of all tables in the database
    cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
    tables = cursor.fetchall()
    
    for table_name in tables:
        # For each table, count the rows
        cursor.execute(f"SELECT COUNT(*) FROM {table_name[0]}")
        count = cursor.fetchone()[0]
        print(f"Table: {table_name[0]}, Row count: {count}")
    
    connection.close()

def scan_databases_in_directory(directory_path):
    """Scans for SQLite databases in a directory and lists tables and row counts."""
    for filename in os.listdir(directory_path):
        if filename.endswith(".db"):
            file_path = os.path.join(directory_path, filename)
            print(f"Processing database: {filename}")
            try:
                list_tables_and_row_counts(file_path)
            except sqlite3.DatabaseError as e:
                print(f"Failed to process {filename}: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python script.py <directory_path>")
        sys.exit(1)

    directory_path = sys.argv[1]
    if not os.path.isdir(directory_path):
        print(f"Directory does not exist: {directory_path}")
        sys.exit(1)

    scan_databases_in_directory(directory_path)

