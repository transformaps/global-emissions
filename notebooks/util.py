import pandas as pd
from pathlib import Path


root = Path(__file__).parents[1]

def read_ceds_csv(path):
    """Read a CEDS by country CSV file and return the global sum."""
    df = pd.read_csv(path)
    assert len(df.units.unique()) == 1
    df = df.drop(["em", "units"], axis=1)
    df = df.set_index("country")
    df.columns = [int(i[1:]) for i in df.columns]
    df = df.T
    df.index.name = "year"
    df = df.sum(axis=1)
    return df
