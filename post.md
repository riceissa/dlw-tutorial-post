---
title: "Donations List Website: tutorial and request for feedback"
author: Issa Rice
date: 2018-08-20
---

# Introduction

[Donations List Website](https://donations.vipulnaik.com/) (DLW) is a website that tracks
the public or explicitly shared donations of individuals
(mostly in the effective altruism and rationality communities),
private foundations, and other entities.
The website was created and is maintained by [Vipul Naik](http://effective-altruism.com/user/vipulnaik/),
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

## Main page

The [main page](https://donations.vipulnaik.com) of DLW shows information
aggregated from all donations tracked by the site.
The main page has the path starting with `/` or `/index.php`.

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

## Donor page

Each donor tracked by DLW has a donor page.
Donor pages have the path starting with `/donor.php`.
An example is the [donor page for the Open Philanthropy
Project](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project).

For Open Philanthropy Project in particular, there is a [table of disclosures](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project#donorDonationAmountsByDisclosuresAndYear) (from before it stopped announcing disclosures).

## Donee page

Each donee tracked by DLW has a donee page.
Donee pages have the path starting with `/donee.php`.
An example is the [donee page for
LessWrong 2.0](https://donations.vipulnaik.com/donee.php?donee=LessWrong+2.0).

Some entities are both a donor and a donee, in which case there will be separate pages
for each role:

* https://donations.vipulnaik.com/donor.php?donor=Berkeley+Existential+Risk+Initiative
* https://donations.vipulnaik.com/donee.php?donee=Berkeley+Existential+Risk+Initiative

## Donor–donee page

It is sometimes interesting to look at a specific donor–donee pair and see all the donations made by the donor to the donee, their relationship, a list of documents that mention both of them, and so on.
For this, DLW has a donor–donee page for each such pair.
Donor–donee pages have the path starting with `/donorDonee.php`.
An example of this is the page for
[Open Philanthropy Project donations made to the Machine Intelligence Research Institute](https://donations.vipulnaik.com/donorDonee.php?donor=Open+Philanthropy+Project&donee=Machine+Intelligence+Research+Institute).

## Influencer page

The influencer page looks at the amount of money influenced (a.k.a. the "money moved") by an entity.
This is tracked separately from donations, so it is possible to compare the
amount of money moved that is *claimed* with the amount of money moved that is
*actually accounted for*.
Influencer pages have the path starting with `/influencer.php`.
The only entity for which we currently track money moved information is GiveWell.
You can see amount accounted vs amount of influence claimed in the [money moved table](https://donations.vipulnaik.com/influencer.php?influencer=GiveWell#influencerMoneyMovedList).

Even for non-GiveWell entities, influencer pages exist. An example is
[Chloe Cockburn](https://donations.vipulnaik.com/influencer.php?influencer=Chloe+Cockburn).
In these cases, there is no comparison between the "money moved claimed" and
"money moved accounted for", because we have not entered any data for the "money moved claimed".
However, it is still possible to see a list of all donations that were influenced.

## Cause area filter

Most pages on DLW accept an optional cause area parameter called `cause_area_filter`.
Using this parameter filters the donations to show only those with a matching
cause area.

To give some examples:

* [Open Philanthropy Project's AI safety donations](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project&cause_area_filter=AI+safety) (note the `cause_area_filter=AI+safety` in the URL)
* [AI safety donations in general](https://donations.vipulnaik.com/?cause_area_filter=AI+safety)
  (note the `cause_area_filter=AI+safety` in the URL)
* influencer example?
* Since the cause areas used on DLW track sub-cause areas as well, it is possible to use it a little
  like a search feature. For example, using [`cause_area_filter=chicken` on Open Philanthropy Project
  donations](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project&cause_area_filter=chicken)
  shows all donations that have the string "chicken" somewhere in the cause area.
* The cause area filter supports [regular expressions](https://en.wikipedia.org/wiki/Regular_expression),
  so for example you can search for [all Open Philanthropy Project donations with cause area containing "AI safety" or "chicken"](https://donations.vipulnaik.com/donor.php?donor=Open+Philanthropy+Project&cause_area_filter=AI+safety|chicken).
  (This example is a bit silly and I'm not aware of a better example.)

Donee pages don't have this option, because most donees only work within a single cause area.

## About page

The [about page](https://donations.vipulnaik.com/about/) discusses how DLW is built and
reliability concerns for the data.

# Request for feedback

This section is an official request for feedback from readers of this forum.
Vipul and I want to make DLW as useful as possible to people who think about
effective giving, flow of money in the non-profit world, real-world decision making,
and other topics. To help us decide what improvements to prioritize, we would like
to hear from you what excites you most about DLW, what you could see yourself
using it for, what improvements would make you use it more, and so on.

Below, we provide some structure for feedback. We would appreciate feedback as (1) comments
on this post, or (2) submissions to [this Google Form]() (TODO: add link).
The differences between the two are that
the Google Form has fields for each question (more structure),
can be submitted anonymously, and responses will not be shared publicly.

## Did you already know about DLW? Do you use it for anything?

To start off, we are curious to get a feel for whether people have already discovered
DLW (on their own) and whether they use it for anything.

As an example response, I will talk a little about my own experience using DLW.
I've found it useful for...

* doing PW/OW work
* seeing some donations i've been curious about aggregated.
* doing some experimental data exploration (example: indirect flow of money from Open Phil to MIRI, by combining DLW with OW)

## Potential improvements – what are your thoughts?

This subsection lists some potential improvements we've thought of.

### More foundation giving data

Currently, DLW tracks the giving data of foundations including the
Bill and Melinda Gates Foundation, Arnold Foundation, Hewlett Foundation,
Good Ventures/Open Philanthropy Project, and Ford Foundation.
However, there are many more foundations whose donations we could track.

### More individual giving data

### More data about things related to the effective altruism or rationality communities

DLW already has an emphasis on these communities, but there's still more that can be added.

### More money moved data

Currently we have only entered claimed money moved data for GiveWell.
But there are some other ones like... examples?

### Systematically track considerations that donors make

Donors concenred with effective giving have many considerations as they
think through their decision. These include:

* Giving now vs later
* Donor coordination and giver's dilemma
* Donating to a single charity vs multiple charities
* How to weigh local knowledge vs analyses published by others
* How much weight to place on cost-effectiveness calculations vs less quantitative forms of modeling and reasoning
* Using a donor-advised fund
* Size of average donation (relative to total wealth)
* Which population ethics to use
* Which worldviews to use, and what entities they see as "equal" (all animals? all humans?
all people with certain IQ or ability?)

Currently, the reasoning above the above is scattered across many different blog posts, comments, articles, and so forth.
It is difficult to answer questions like "Where and how do people who give consideration
to the giver's dilemma donate?" and "Where do people who share my population ethics and worldview donate?"

### Better classification of cause areas

Although donations on DLW are usually tagged with a cause area, so far this has
been done in a somewhat ad hoc manner, so there are some problems like:

* The same cause area being phrased in different ways
* The cause area hierarchy being a mess

I did some work on this previously in a cause prioritization context
(see entries for [cause area classification](https://causeprioritization.org/Cause_area_classification)
and [list of classifications of philanthropy](https://causeprioritization.org/List_of_classifications_of_philanthropy)
on the [Cause Prioritization Wiki](https://causeprioritization.org/)),
but this sort of work is also valuable for better classifying donations.

### More timely inclusion of giving data (of existing donors/donees)

Even after we add donation data for a donor or donee, new donations
are made over time, so there is a question of how often DLW should update
donation data for existing donors and donees.
Currently the updating schedule is somewhat arbitrary.

We have a [series of steps](https://github.com/vipulnaik/donations/blob/master/data-update-playbook.md)
for updating existing data for donors and donees.

### More complete inclusion of giving data (of existing donors/donees)

Occasionally a subset of made by an entity is easy to access, while the rest are not.
An example of this is the Gates Foundation, where donations tracked through the
[International Aid Transparency Initiative](https://en.wikipedia.org/wiki/International_Aid_Transparency_Initiative)
are easy to process, but where the rest of the donations are difficult to process at the
grant level.

### More documents

### More graphs

Generally we try to add graphs for each table displayed, but there are some exceptions
like the donee page.

### More summarization of existing data

donor intersection pages, donee intersection pages, etc.

https://github.com/vipulnaik/donations/issues/71

## What other features do you want?

We are interested in hearing ideas other than the ones we listed.

# Acknowledgments

Thanks to Vipul Naik for feedback on this post and for funding my work on it.

# Appendix: history of DLW

(maybe include this part)

site structure inspired by https://contractwork.vipulnaik.com/ and Wikipedia Views
