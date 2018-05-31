venv: requirements.txt
	[ -d ./venv ] || python3 -m venv venv
	./venv/bin/pip install --upgrade pip
	./venv/bin/pip install -Ur requirements.txt
	touch venv

global-carbon-budget:
	git clone https://github.com/openclimatedata/global-carbon-budget data/global-carbon-budget

global-carbon-budget-projection:
	wget http://folk.uio.no/roberan/GCP/data2017/09_data.csv -O data/global-carbon-budget-projection.csv

edgar-co2:
	git clone https://github.com/openclimatedata/edgar-co2-emissions data/edgar-co2-emissions
