---
title: "Donations List Website: tutorial and request for feedback"
author: Issa Rice
date: 2018-08-18
---

# Introduction

[Donations List Website](https://donations.vipulnaik.com/) (DLW) is a website that tracks
the public or explicitly shared donations of individuals
(mostly in the effective altruism and rationality communities),
private foundations, and other entities.
The website is created and maintained by [Vipul Naik](http://effective-altruism.com/user/vipulnaik/),
with [contributions](https://contractwork.vipulnaik.com/venue.php?venue=Donations+list+website)
from me (Issa Rice).

The aim of this post is to introduce DLW to the world and gather some feedback.
DLW has been in active development since [January 2017](https://github.com/vipulnaik/donations/commit/34ab85f9336c48231f0ec0258f7556df953fdb81),
and is planned for launch by the end of December 2019.
At the moment DLW is in a pre-release state, where Vipul and I are adding
both data and features to the site.

The first half of this post gives a tutorial of DLW, focusing especially on
the features of the site that are not obvious to casual inspection.
The second half of this post is a request for feedback;
Vipul and I are interested in using the feedback to help us decide where to
focus our efforts for future development.

# Tutorial

This section is a tutorial of the main features of Donations List Website
(DLW), with a focus on the parts that are probably non-obvious to casual users.

## Donor page

Each donor tracked by DLW has a donor page.
An example is the [donor page for the Open Philanthropy
Project](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project).

For Open Philanthropy Project in particular, there is a [table of disclosures](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project#donorDonationAmountsByDisclosuresAndYear) (from before it stopped announcing disclosures).

## Donee page

Each donee tracked by DLW has a donee page.
An example is the [donee page for
LessWrong 2.0](https://donations.vipulnaik.com/donee.php?donee=LessWrong+2.0).

Some entities are both a donor and a donee, in which case there will be separate pages
for each role:

* https://donations.vipulnaik.com/donor.php?donor=Berkeley+Existential+Risk+Initiative
* https://donations.vipulnaik.com/donee.php?donee=Berkeley+Existential+Risk+Initiative

## Donor–donee page

It is sometimes interesting to look at a specific donor–donee pair and see all the donations made by the donor to the donee, their relationship, a list of documents that mention both of them, and so on.
For this, DLW has a donor–donee page for each such pair.
An example of this is the page for
[Open Philanthropy Project donations made to the Machine Intelligence Research Institute](https://donations.vipulnaik.com/donorDonee.php?donor=Open+Philanthropy+Project&donee=Machine+Intelligence+Research+Institute).

## Influencer page

The influencer page looks at the amount of money influenced (a.k.a. the "money moved") by an entity.
This is tracked separately from donations, so it is possible to compare the
amount of money moved that is *claimed* with the amount of money moved that is
actually accounted for.
The only entity for which we currently track money moved information is GiveWell.
You can see amount accounted vs amount of influence claimed in the [money moved table](https://donations.vipulnaik.com/influencer.php?influencer=GiveWell#influencerMoneyMovedList).

https://donations.vipulnaik.com/influencer.php?influencer=Chloe+Cockburn

## cause area filter
## Display parameter on main page

The main page of DLW has an optional parameter called `display` that changes
the kind and amount of donations listed.
Currently, the possible values are:

* [`individual-scale`](https://donations.vipulnaik.com/?display=individual-scale),
  which displays donations made by individuals (in other words, excluding
  donations made by private foundations and other group entities).
* [`full`](https://donations.vipulnaik.com/?display=full),
  which displays all donations tracked by DLW.
* [empty value](https://donations.vipulnaik.com/) (the default), which restricts
  donations to the top 30 donors, donees, and cause areas.

## About page

https://donations.vipulnaik.com/about/

# Request for feedback

This section is an official request for feedback from readers of this forum.

## Did you already know about DLW? Do you use it for anything?


I will talk a little about my own experience using DLW.
I've found it useful for...

* doing PW/OW work
* doing some experimental data exploration (example: indirect flow of money from Open Phil to MIRI, by combining DLW with OW)

## Potential new features - what are your thoughts?
### More foundation giving data
### More individual giving data
### Aggregation of info on things like giver's dilemma

I think something that would be interesting for me, as part of DLW or as a
standalone thing, would be to more systematically look at the considerations
donors make, like now-vs-later, which population ethics to use, donor
coordination/giver's dilemma, single-donee vs diversification, use of DAF, size
of average donation (out of total wealth), fund-yourself vs fund-others, what
entities they see as "equal" in terms of wellbeing (all animals? all humans?
all people with certain IQ or ability?), etc.

I want to answer questions like "Where and how do people who give consideration
to the giver's dilemma donate?"

### better classification of cause areas
### (list some other stuff)
## What other features do you want?

# Appendix: history of DLW

(maybe include this part)

site structure inspired by https://contractwork.vipulnaik.com/ and Wikipedia Views
