---
title: "Headless and asynchronous"
date: 2021-05-25T07:05:11+02:00
draft: false
toc: false
image: ""
tags: [programming, CMS, featured]
categories: []
---

# Since everyone receives the same html, why are CMS so complicated?
<!--more-->
*Disclaimer: this blog based on hugo, one of the described modern static-site-generators and is hosted on github pages.*

In the last few decades CMS have become more complicated as requirements have become more complex. Before transitioning into the cloud (and obfuscating their architecture somewhat) a lot of CMS were built in a classical client-server structure.

The CMS helps its users to create and manage their content in a user-friendly way (sometimes even wysiwyg-like) and stores the content in a database. The content gets retrieved from this DB and rendered into html, which is served by a server (often bundled with the CMS). The site's visitors receive the html from this server (or a connected cache or CDN).

Since most CMS aren't used to build a platform, but to deliver static content, in most cases every visitor receives exactly the same html. Still CMS, DB and server run 24/7 to deliver this html. This means paying a hoster 24/7 to keep the lights on and for the hoster to keep performance overhead on hand, since CMS, DB and server don't always have a predictable resource usage.

One strategy to reduce these mutual overhead costs are "headless" CMS, which unbundle the server and keep the CMS and its database separate from the processes to retrieve, render, and serve the content. But this leads to new friction at the interfaces between headless CMS and server, which needs to be compensated during development and setup.

Customer's who don't want to account for development projects and need uniform costs between periods for a predictable service may choose a cloud hosted website builder. This hides complicated systems from users, visitors, and customers, but doesn't change the underlying architecture, which's shortcomings will still be paid by customers as part of the periodic fees.

While WordPress, Drupal, Ghost, and many more optimize their resource consumption, they still need volatile DB's and still bundle a server or rely on servers provided by their environment. During the 2010's a new wave of so called static-site-generators stepped on the scene, which utilize node-based applications to render and flatten html, css, and js from templates. The catch: This html isn't generated remotely by a server, but locally by the development environment. Therefore neither customers or hosters need to provide the resources on demand, but the resource-intensive task of rendering the html can be done by every cheap laptop the developer has at hand.<br />
With smartphones becoming more powerful every year and iPads becoming more laptop-like (and even more powerful than many laptops and smartphones) I believe rendering html on the go isn't too far off, either.

This html can be used with nearly any hoster and it turns out, hosting static content is so cheap, sites like github do it for free. And even independent hosting becomes exponentially cheaper if only storage is needed and cpu-performance and memory can be somewhat neglected.

Static-site-generators aren't a new idea. Though synergy with concepts from headless CMS and new render-pipelines, which have been implemented in node.js and are easily available as pre-packaged npm-modules make them much more attractive and on par with CMS using server-side-rendering today. In reality a lot of modern CMS are using the same render-pipelines just synchronous at time of request on a remote server and not asynchronous in a local environment.
