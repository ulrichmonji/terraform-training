1. Créer un compte sur [terraform Cloud](https://app.terraform.io/).  C'est gratuit !
2. Créer une nouvelle organisation portant votre nom
3. Créer du code terraform et poussez ce code sur votre github dans un dépot publique.
   1. Faites un code très simple, par exemple la création d'une ressource ec2
   2. Surtout ne pas embarquer vos crédentials AWS dans ce dépot github
4. Créer un nouveau workspace à partir de github, ce workspace se base sur votre dépot github nouvellement créé
   1. Il faudra configurer des variables d'environnement à votre workspace, confer documentation AWS pour s'authentifier via des var d'env
      1. `AWS_ACCESS_KEY_ID`="votre access key"
      2. `AWS_SECRET_ACCESS_KEY`="votre secret key"
      3. Bien cocher la case sensitve afin que les crédentials ne soient pas affichés

5. Lancez votre workspace et visualisez le résultat