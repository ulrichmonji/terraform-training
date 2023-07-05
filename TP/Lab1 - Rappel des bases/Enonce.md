1. Générez un nouveau couple `Secret key / Access key` pour votre compte IAM.
    → Ils se trouvent dans les paramètres sécurité de votre compte dans IAM.

2. Dans Amazone, créez une paire de clé dans EC2 et nommer cette clé `devops-<votre prenom>`.
    Un fichier `devops-<votre prenom>.pem` sera téléchargé → conservez le jalousement

3. Dans Amazone, créez un compartiment S3 nommé `terraform-backend-<votre prénom>` qui contiendra le tfstate

4. Créez un module `ec2module` afin de déployer une instance EC2 avec son security group + IP publique.

5. Créez ensuite deux dossiers, prod et dev, chacun avec du code terraform (main.tf, provider.tf, etc ...) 
    utilisant le module ec2module créé pour déployer une instance avec respectivement  pour tailles 
    `t2.micro` pour la prod et `t2.nano` pour la dev

6. Veillez également à surcharger le tag pour qu'il respecte cette forme:
        → « `Name: ec2-prod-<votre prenom>` » pour  la prod 
        → « `Name: ec2-dev-<votre prenom>` » pour la dev

7. Lancez la création de votre EC2 de prod et de dev

8. Vérifiez que les EC2 portent bien le bon nom (Tag) et ont la bonne taille 
    correspondant à l’environnement

9. Vérifiez que le fichier tfstae est bien créé sur le S3 et contient bien les infos à jour.

10. Supprimez vos ressources avec `terraform destroy`
