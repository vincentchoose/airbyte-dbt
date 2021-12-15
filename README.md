### Pour commencer

Si n'avez pas encore installé Homebrew, exécutez la commande suivante dans un terminal :

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Une fois que c'est fait, il vous faut installer `gcloud` :

```
brew install --cask google-cloud-sdk
```

Initialisez alors `gcloud` avec la commande `gcloud init`. Suivez les instructions qui s'affichent dans le terminal.

Pour vous connecter à l'instance Airbyte, lancez la commande ci-dessous :

```
gcloud beta compute ssh airbyte -- -L 8001:localhost:8000 -N -f
```

Rendez-vous ensuite à l'adresse suivante dans votre navigateur : http://localhost:8001

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
