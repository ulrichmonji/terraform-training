1. Créez une ressource ec2 à l'aide de terraform
2. Une fois la ressource crée, simulez une altération/modification de la ressource manuellement.
   1. Vous pouvez par exemple modifier la taille de l'instance, et son tag.

3. Taintez votre instance à  l'aide de `terraform taint aws_instance.nom_de_votre_instance`
4. Faites à nouveau un terraform apply pour observez que la ressource sera re-créé
5. N'oubliez pas de supprimer vos ressources avec `terraform destroy`