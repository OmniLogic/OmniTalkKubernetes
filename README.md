# OmniTalk Docker/Kubernetes

### Create a new virtual env:

```bash
virtualenv -p python3 venv
```

### Install all the packages

```bash
pip install -r requirements.txt
```

### Running Locally

```bash
python app.py
```

### Running on production

```bash
waitress-serve --call 'app:create_app'
```
