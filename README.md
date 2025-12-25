# Projet 3 – Pipeline IaC avec GitHub Actions, Terraform et Ansible

##  Objectif
Mettre en place un pipeline CI/CD complet permettant de :
- Provisionner automatiquement une infrastructure avec Terraform
- Configurer les serveurs avec Ansible
- Déployer une application
- Détruire automatiquement les ressources après exécution

##  Technologies utilisées
- GitHub Actions
- Terraform
- Ansible
- Linux (Ubuntu)
- GitHub Secrets & Environments

##  Gestion des secrets
Les informations sensibles (identifiants base de données, clés, etc.)
sont stockées de manière sécurisée via **GitHub Secrets**.

Exemples :
- `DB_USERNAME`
- `DB_PASSWORD`

Ces secrets sont injectés dynamiquement dans le pipeline.

##  Fonctionnement du pipeline
Le pipeline est déclenché **manuellement** via `workflow_dispatch`.

Étapes :
1. Checkout du code
2. Initialisation Terraform
3. Planification et déploiement de l’infrastructure
4. Configuration des serveurs avec Ansible
5. Destruction automatique des ressources

## Validation manuelle
Le job utilise un **environnement GitHub protégé (production)**.
Une **validation manuelle** est requise avant l’exécution complète du pipeline.

## Lancer le pipeline
1. Aller dans l’onglet **Actions**
2. Sélectionner le workflow *IaC Pipeline*
3. Cliquer sur **Run workflow**
4. Approuver l’exécution si demandé

##  Résultat attendu
- Infrastructure créée automatiquement
- Configuration appliquée
- Ressources détruites après exécution
- Sécurité et validation respectées
