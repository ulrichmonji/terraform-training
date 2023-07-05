1. A l'aide de la commande terraform workspace, créer 2 workspace `dev` et `prd`
    ```bash
    terraform workspace new dev
    terraform workspace new prd
    ```

2. Lister tous les workspaces disponibles avec `terraform workspace list`

3. Positionnez vous sur le workspace de dev avec `terraform workspace select dev`

4. Récupérer le code donné, permettant de créer une ec2, dont la taille varit en fonction de l'environnement et appliquer ce code

5. Positionnez à présent sur le workspace de prd avec `terraform workspace select prd` et faire un `terraform apply`

6. Vériifiez la taille des ressources créé par terraform
7. N'oubliez pas de supprimer les ressources avec `terraform destroy`