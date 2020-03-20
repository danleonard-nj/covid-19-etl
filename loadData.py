from resources.configuration import load_configuration
from resources.loadFiles import get_directory_file_list, load_file_list, load_staging_data, run_etl_job
from dotenv import load_dotenv
import pandas as pd
import sqlalchemy
import json
import git
import os
load_dotenv()

config = load_configuration()

# Pull fom the repository
g = git.cmd.Git(config['covidRepositoryDirectory'])
g.pull()

# Pull list of files in the daily reports directory
files = get_directory_file_list(directory=config['covidFileDirectory'])

# Roll files up into one dataframe
df = load_file_list(
	directory=config['covidFileDirectory'],
	files=files)

# Create the db engine
engine = sqlalchemy.create_engine(os.environ['CNXN'], fast_executemany=True, echo=True)

# Load to staging table
load_staging_data(engine=engine, df=df)

# Invoke ETL job
run_etl_job(engine=engine)


