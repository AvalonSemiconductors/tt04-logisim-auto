import yaml
from datetime import datetime

with open("info.yaml") as f:
	doc = yaml.safe_load(f)

top_name = doc["project"]["top_module"]

with open("src/top.v", "w") as f2:
	with open("src/top_r.v") as f:
		while True:
			line = f.readline()
			if not line:
				break
			f2.write(line)
		f2.write("\n")
	with open("src/top_template.v") as f:
		while True:
			line = f.readline()
			if not line:
				break
			line = line.replace("{namehere}", top_name)
			f2.write(line)
		f2.write("\n")
		f2.write(f"//{datetime.now()}");
