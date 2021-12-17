### Pour commencer

Si n'avez pas encore installé Homebrew, exécutez la commande suivante dans un terminal :

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Une fois que c'est fait, il vous faut installer `gcloud` :

```
brew install --cask google-cloud-sdk
```

Initialisez alors `gcloud` avec la commande 

```
gcloud auth login
gcloud init
gcloud config set project choose-vp-dev
`.

Suivez les instructions qui s'affichent dans le terminal.

Accordez l'accès au compte de service 31... depuis l'IAM de Google cloud.

Pour vous connecter à l'instance Airbyte, lancez la commande ci-dessous :

```
gcloud beta compute ssh airbyte -- -L 8001:localhost:8000 -N -f
```

Rendez-vous ensuite à l'adresse suivante dans votre navigateur : http://localhost:8001

Pour fermer la connection, rechercher le processus lié à la connexion avec la commande suivante :

```
ps aux | grep ssh
```

Trouvez le `process_id` lié au processus, par exemple `92104` puis :

```
sudo kill 92104
```



---

Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
