1. Dans la console AWS, créer manuellement une instance EC2 avec ces caractéristiques:
   1. AMI: ami-0715c1897453cabd1
   2. taille: t2.micro
   3. paire de clé: la votre
   4. Tag: NAME: manuel

2. Dans votre code terraform, importer votre vm créé manuellement.
   1. Pour ce faire, il faut créer une ressource ec2 en lui fournissant toutes les caractéristiques de votre instance
   2. Les caractéristiques à fournir sont:
      1. L'ID de votre Sécurity group
      2. L'ID de votre subnet
      3. L'AMI
      4. Le Tag
      5. La keypair ssh

  3. Ensuite, tapez la commande suivante pour l'import: `terraform import aws_instance.myec2  ${id_de_votre_instance_ec2}`

3. A présent, vous pouvez vérifier le fichier tfstate pour vérifier que la ressource est bien présente

4. Amusez vous à vaire une modification du tag par exemple pour vous rassurer que terraform a pris en compte la ressource
5. N'oubliez pas de supprimer la ressource après avoir terminé: `terraform destroy`