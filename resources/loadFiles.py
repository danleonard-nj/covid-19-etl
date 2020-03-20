import pandas as pd
from os import walk
from sqlalchemy.orm import sessionmaker

def get_directory_file_list(directory: str) -> list:
	""" Get a list of files that live in a suppllied
		directory

			directory 		:	the directory to scan
								for files
	"""

	files = list()
	for (dirpath, dirnames, filenames) in walk(directory):
	    files.extend(filenames)
	    break

	# Remove non-csv files
	files = [x for x in files if '.csv' in x]

	return files

def load_file_list(files: list, directory: str) -> pd.DataFrame:
	"""	Read a list of CSV files in a given directory into
		a single dataframe

		files 		:	list of files in the directory
		directory 	:	the directory the files live nin
	"""

	rollingDf = pd.DataFrame()

	for file in files:
		print(file)
		df = pd.read_csv(f'{directory}/{file}')
		rollingDf = rollingDf.append(df, sort=False)
		rollingDf.reset_index()

	return rollingDf

def load_staging_data(df: pd.DataFrame, engine) -> None:
	""" Load the data in the provided dataframe to a staging
		table in the target database named StageCovidDaily
		in the staging schema

			df 		:	dataframe containing the data to be
						loaded
			engine	:	sqlalchemy database engine
	"""

	df.to_sql('StageCovidDaily', 
		con=engine, 
		index=False, 
		schema='staging', 
		if_exists='replace')

def run_etl_job(engine) -> None:
	""" Initiate the ETL job on the target server located at
		etl.InvokeEtlJob

			engine 	:	sqlalchemy database engine
	"""
	Session = sessionmaker(bind=engine)
	mySession = Session()

	engine.execute('EXECUTE etl.InvokeEtlJob')