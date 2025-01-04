---
categories: "blog"
date: 2025-01-04
description: " "
draft: false
image: " "
slug: "reflexions-ia"
tags: "blog"
title: "L'IA, bulle spéculative ?"
genre: "opinion"
---

Depuis un bon moment, je suis le développement des Grands Modèles de Langage (LLM). Je reste convaincu qu’il s’agit surtout d’une bulle spéculative, et donc dangereuse (en tant que telle). Néanmoins, suivant l’adage (connaître ton ennemi), je regarde de près, je note, je teste. Dans cet article, je garde un résumé de mes idées.

Le développement de l’IA nécessite un investissement massif financier et matériel. Il y a un coût d’utilisation auquel il faut rajouter celui associé à la phase d’entraînement. Pour le coût d’utilisation, on peut parler en FLOPS (*floating point operations per second* — opérations en virgule flottante par seconde), une unité de mesure de la performance d’un ordinateur, et en $ pour le coût total de leur entraînement.

https://www.oneusefulthing.org/p/scaling-the-state-of-play-in-ai

Un CPU moderne peut atteindre environ 1 TFLOPS, un GPU 100 TFLOPS. Par comparaison, le cerveau humain est estimé avoir une capacité de calcul de 10 à 1000 pétaflops (=1000 téraflops ou TFLOPS). Oui, la fourchette est large : on touche là à la difficulté d’évaluer l’intelligence humaine. Cette estimation a poussé George Holtz à compter les puissances d’IA en quantité de cerveau humain (réf. nécessaire : il me semble que c’était lors d’un interview, mais avouez que l’idée est intéressante).

Les modèles LLM actuels les plus performants (GPT-4, Gemini 1,5, Claude 3.5) requièrent environ 10^25 à 10^26 FLOPS (soit 10 000 milliards de TFLOPS, 10 000 milliards de CPU modernes), et ont un coût d’entraînement estimé à 100 millions de $.
Pour la prochaine génération, on parle de 1 milliard de dollars pour les entraîner, et 10^26 à 10^27 FLOPS.

Chaque nouvelle itération demande donc un effort encore plus colossal pour être développée et exploitée. En conséquence, elle requiert des ressources énergétiques et en $ qui sont totalement démesurées. Il me semble évident qu’on a besoin de régulation, ici, que ce soit du point de vue de leur développement comme de celui de leur usage.

Les IA actuelles d’usage général et entraînées avec 10^25 FLOPS sont considérées par l’UE comme ayant un potentiel de « risque systémique », ce qui veut dire que les gens qui les développent ou les exploitent doivent « évaluer et atténuer les risques, signaler les incidents graves, effectuer des tests à la pointe de la technologie et des évaluations de modèles, assurer la cybersécurité et fournir des informations sur la consommation énergétique de leurs modèles. »

https://jack-clark.net/2024/03/28/what-does-1025-versus-1026-mean/

Certaines sociétés font des déclarations d’intention visant à _montrer le bon exemple_, pour inciter leurs homologues à considérer le développement des IA d’un point de vue sécuritaire et éthique (et nous n’avons pas encore parlé du problème écologique), mais le milieu est tellement concurrentiel que l’on peut douter que les entreprises comme _Anthropic_ soient suivies dans cette voie.

https://www.anthropic.com/news/core-views-on-ai-safety

Les entreprises qui développent ces modèles ne sont pas près de s’arrêter, engouffrant des ressources et un argent monstrueux. Car jusque là, aucune de ces entreprises n’est rentable :
https://analyticsindiamag.com/ai-origins-evolution/openai-would-have-barely-survived-without-microsoft/
Elles ont besoin d’innover constamment, ne serait-ce que pour justifier l’investissement qui a été fait jusque là, en une course en avant sans fin. Ce qui laisse penser que cette période (le développement effréné, consommateur de ressources et écologiquement aberrant) n’est qu’une bulle spéculative qui laissera des dégâts énormes lorsqu’elle éclatera (comme toutes les bulles spéculatives).

Ces entreprises sont donc contraintes de toujours rajouter de la puissance pour améliorer les modèles (donc toujours plus d’argent et de ressources énergétiques) ; c’est une course en avant de *changement d’échelle* : plus d’énergie, de puissance de calcul et de données à exploiter.

Il existe pourtant une autre façon de changer l’échelle de leur efficacité, en agissant sur le nombre d’étapes que les LLMs doivent faire avant de donner une réponse (on sait que plus elles « pensent », plus leur réponse est juste/efficace).

https://www.oneusefulthing.org/p/scaling-the-state-of-play-in-ai

Je n’ai pas peur des soi-disant capacités créatives des LLMs (elles en sont loin). Je ne crois pas que ces modèles statistiques vont nous remplacer dans nos métiers (on devrait plutôt craindre les personnes qui pensent que c’est possible ; ce sont elles qui sont dangereuses pour nos métiers, qui seront tentées de nous remplacer par des IA).
Ce qui m’effraie, c’est l’éclatement de cette bulle financière, la quantité astronomique d’électricité consommée par les _datacenters_ utilisés, et la catastrophe écologique liée à leur développement. Ce n’est pas comme si l’on manquait de problématiques au niveau climat. Même s’il y a des avantages dans des domaines particuliers (en médecine, pour le code, pour la génération d’idées), je reste convaincu qu’il faut stopper la course en avant provoquée par la spéculation.
