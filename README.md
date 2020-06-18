# Bon Voyage

Bienvenue dans notre projet final de fin de formation **The Hacking Project**.

## Pourquoi ce projet :
Tous ceux qui ont déjà voyagé et qui aiment bien planifier tout ou un minimum de choses avant le départ, savent que bien préparer son voyage est parfois long et fastidieux. Nous faisons des recherches et nous récupérons sur différents sites (TripAdvisor, Google, Blogs de voyageurs, routard...) les meilleurs endroits à visiter, les meilleures activités... On met tout ça dans ses marque-pages, sur des bouts de papier... et une fois sur place c'est la galère pour tout retrouver, on perd du temps, du temps sur notre voyage !!!

Nous avons donc mis en place ce projet pour faciliter la vie de tous ces Globe-trotters qui adorent partir sereins.

## L'idée de ce projet :
L'utilisateur va pouvoir rassembler toutes les informations qu'il a pu trouver sur le net, dans des bouquins ou autres. Il va être guidé pour pouvoir créer facilement un plan de route jour par jour de son futur voyage.  Il pourra également le partager avec d'autres utilisateurs.
Ce partage permettra à d'autres utilisateurs de piocher dans les idées de chacun.
La finalité pourra être, si l'utilisateur le souhaite, de donner son avis via l'ajout de commentaires au cours du voyage.

## Versions :

Ruby - 2.5.1

Rails - 5.2.4

DB - PostgreSQL

Framework - Ruby on Rails

## Pour commencer :
Pour faire fonctionner ce projet localement, télécharger ce repository à partir d'un fichier a.zip ou en le clonant.

### Installation :
```bash
bundle install
```
```bash
yarn install
```
```bash
rails db:create
```
```bash
rails db:migrate
```
```bash
rails db:seed
```
```bash
rails server
```
### Démarrage :
Une fois le server connecté, rendez-vous sur   ```http://localhost:3000/```
Vous pourrez naviguer à travers les voyages déjà créés ou bien vous inscrire pour créer votre propre plan de route.

## Comment tester l'application? 

1) Jeter un oeil aux voyages de la page d'accueil (ça peut donner des idées)
2) Cliquer sur l’un des voyages: On voit les itinéraires par jour, par semaine, les photos, les notes et aussi une carte !
2) Créer son compte utilisateur et personnaliser son profil (nom d'utilisateur, avatar)
3) Planifier son premier voyage : choisir sa destination (Remplissage automatique grâce à algolia), ses dates et c'est parti !
4) Uploader une photo pour son voyage (le site en propose une par défaut grâce à Pixabay)
5) Planifier ses évènements (activités, déplacements, ...), et rassembler toutes les infos dans des notes
6) Visualiser toutes les villes de son itinéraire sur une carte
7) Imprimer tout son voyage et recevoir des récaps journaliers des activités prévues par mail
8) S'inspirer des voyages des autres utilisateurs en copiant certains de leurs évènements


### Vous devriez recevoir un email:  
- à votre inscription au site
- pour tout problème d'inscription ou de mot de passe oublié
- récapitulatif du programme de la journée chaque jour de son voyage

## Version en ligne :

https://bon-voyage-app.herokuapp.com/

## Auteurs :
[Athénais DUPUY](https://github.com/AtheDev)

[Emilie DUFAU](https://github.com/EmilieDufau)

[Eva AFRIANA](https://github.com/evafriana)

[Jérémy DELMAS](https://github.com/delmasdev)

[Sofia CHAKIR](https://github.com/sofiachakir)