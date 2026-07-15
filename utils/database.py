from sqlalchemy import create_engine
from urllib.parse import quote_plus
import pandas as pd

DB_USER = "root"
DB_PASSWORD = quote_plus("Jsankhl@67")
DB_HOST = "localhost"
DB_PORT = "3306"
DB_NAME = "ecommerce_supply_chain"

engine = create_engine(
    f"mysql+pymysql://{DB_USER}:{DB_PASSWORD}@{DB_HOST}:{DB_PORT}/{DB_NAME}"
)

def run_query(query):
    return pd.read_sql(query, engine)