# !/bin/bash

if [ -e !${pwd}/.venv ]; then
	if [ -e !${pwd}/pyproject.toml]; then
		uv init .
	else
		pass
	fi

	uv pin python 3.10
	uv venv .venv
	uv add --dev ipykernel
	#uv add -r requirements.txt
else
	#uv add -r requirements.txt
	pass
fi
