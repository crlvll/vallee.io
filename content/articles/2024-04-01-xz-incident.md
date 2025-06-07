+++
categories = ["blog"]
genre = "blog"
date = 2024-04-01T15:00:19Z
description = "XZ, une librairie de compression des données utilisée pour les échanges sécurisés sur internet, a failli se faire pirater."
draft = false
image = ""
slug = "xz-incident"
tags = ["security", "open source", "it"]
title = "Une porte dérobée dans XZ: la grosse vulnérabilité d'internet"

+++

Week-end de Pâques 2024. Un événement qui passe inaperçu aux yeux de la plupart des gens secoue la communauté #infosec (les experts en sécurité informatique). Un accès caché a (presque) été ajouté à un outil qui gère les connexions sécurisées sur la plupart des serveurs de sites web ou applications.

Les conséquences auraient pu être dramatiques : Internet n’aurait plus été sécurisé — impossible de faire confiance à un site web, que ce soit votre banque ou l’accès à vos emails. Or, quasi _toute notre société_ est passée au numérique.

---

*Note : cet article est très largement inspiré du *toot* de Rémy sur Mastodon (https://piaille.fr/@rusty/112190942173039817), qu’on doit remercier pour son excellent travail de vulgarisation.*

---

### La sécurité d’Internet a failli tomber. Comment est-ce même possible ?

Au début des années 2000, Lasse Collin commence un « projet bénévole, de loisir », nommé XZ. Il s’agit d’une librairie de compression de données qui est utilisée dans un projet bien plus important, openSSH. Ce programme est utilisé comme outil d’accès sécurisé et crypté pour administrer les serveurs un peu partout sur Internet. Il est quasiment universel.
Dans un email de juin 2022, Collin explique qu’il n’a plus l’énergie pour s’occuper de XZ, à cause de « problèmes durables de santé mentale ».

- https://www.mail-archive.com/xz-devel@tukaani.org/msg00567.html.

Il cherche quelqu’un pour reprendre la maintenance de son projet.

Cette librairie importante est critique pour la sécurité d’Internet, et sa maintenance ne tient sur les épaules que d’un seul bénévole. On est en 2022, et cette personne est en train de craquer.

**C’est là tout le symbole de l’open source : sous-financé, déconsidéré par le tout public et pourtant utilisé partout.**

![](https://imgs.xkcd.com/comics/dependency_2x.png)
_Dependency_ par [XKCD](https://xkcd.com/2347/)

C’est alors qu’une personne nommée « Jia Tan » commence à proposer des modifications au projet XZ. Il n’est pas connu, sort du bois pour ainsi dire et devient de plus en plus important pour le projet XZ, jusqu’à devenir le mainteneur principal.

Le 7 janvier 2023, Jia Tan intègre lui-même son code dans XZ. Jusque là, c’est Lasse Collin qui vérifiait puis intégrait les modifications. À partir de ce moment, Jia Tan peut faire ce qu’il veut sans vérification.

Le 20 mars 2023, il modifie le mail de contact du projet pour mettre le sien à la place de celui de Lasse Collin.

- https://github.com/JiaT75/oss-fuzz/com.

Tout est en place. Comme un projet de longue haleine (pas loin de deux ans), patiemment et discrètement porté à maturation jusqu’à ce que, en février 2024, Jia Tan ajoute le code de la _backdoor_ dans XZ. Il envoie ensuite des messages aux mainteneurs des différentes distributions Linux pour leur demander d’intégrer la nouvelle version qui contient l’accès caché.

### Un grain de sable, un grain de hasard

29 mars 2024. Andres Freund est développeur chez Microsoft. Alors qu’il fait des tests sur un projet sur lequel il travaille (Postgres), il découvre que depuis qu’il a fait des mises à jour, la connexion sécurisée qu’il utilise (ssh) est _plus lente de 500 ms_.  
En remontant le fil pour comprendre ce qui se passe, il découvre que la petite librairie XZ, utilisée par ssh pour compresser les données, contient un accès caché. Il note son compte-rendu dans un forum et annonce sa trouvaille sur mastodon :

- https://mastodon.social/@AndresFreundTec/112180083704606941

Plus de deux ans de patience pour développer un plan qui cible une des infrastructures de sécurité les plus importantes d’Internet. Et qui n’a été découvert que _par chance_.

Le reste de l’histoire est encore à comprendre. Le compte GitHub de Jia Tan est suspendu, et les experts vont enquêter pour comprendre comment cela a été possible, et qui est cette personne. Il est possible que ce plan de grande ampleur ait été fomenté par un grand groupe de _hackers_, ou même un gouvernement.  
Impossible de le savoir pour l'instant.

### On peut dire que ce n’est pas passé loin

Le _comics_ de XKCD résume vraiment bien la situation. La plupart des outils que les infrastructures d'Internet utilisent sont issus de petits projets bénévoles, comme celui de M. Collin.

Heureusement, ils sont _open source_, ce qui permet de les auditer pour comprendre leur fonctionnement, éliminer les _bugs_ et améliorer les programmes. D'ailleurs, la _backdoor_ dans XZ n'était pas dans le code de la librairie, mais dans le _packaging_ destiné aux distributions, sans quoi il est possible qu'elle
aurait été découverte plus tôt.

Mais cet incident montre vraiment à la fois l'importance de ce modèle (le développement _libre_) et sa faiblesse. Il faut reconnaitre politiquement le côté essentiel de ces outils et les protéger, en assistant les développeurs qui font cela sur leur temps libre, par exemple.

---

Merci de me lire ! Pour réagir à cet article, poursuivons la discussion [sur Mastodon](https://tooting.ch/@arveed/).

Si vous souhaitez me suivre sans dépendre des réseaux sociaux, vous pouvez vous abonner à [ma newsletter](https://www.cyrilvallee.com/#/portal/signup) (sur mon site cyrilvallee.com) ou simplement au [flux RSS](https://arveed.com/index.xml) de ce site.

---

À lire aussi sur ce sujet : https://boehs.org/node/everything-i-know-about-the-xz-backdoor
