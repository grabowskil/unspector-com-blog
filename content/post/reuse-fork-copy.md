---
title: "Reuse, Fork, Copy, Credit"
date: 2021-06-08T13:43:13+02:00
draft: false
toc: false
image: ""
tags: [programming, philosophy, organisation, featured]
categories: []
---

# When using other people's work, consider what added value you created
<!--more-->
Everybody stands on the shoulders of giants. Not one application would be written, without someone else writing the needed programming languages, operating systems and compilers. For every software to run, hardware and drivers are needed. When we think about crediting the giants on which shoulders we stand in software development, we often come around towards disclosing only what we are contractually obligated (if even that).

I think this approach to be unproductive.<br />
It hints at our own understanding of ownership in exploratory software development: We don't like, when someone doesn't give us credit for the work we have done. Therefore we don't like to credit people, who didn't participate. To reuse software like actively maintained open-source software or even just a snippet of code from GitHub or Stackoverflow we need to get a basic understanding of how this code works and how we need to integrate that code with our own. When we gained that understanding and subjugated the code, we may feel like this code belongs to us now. So we might try to give only minimal credit to its original creator, since we may perceive their participation (in our process of understanding) to be minimal.

The original creator may never know we reused their code, but our decision to give only minimal credit could turn out to be unhealthy. Inside we *know* we weren't able to write this piece of software all by ourselves. Why are we trying to maintain that image to the outside world? Being true to ourselves: Someone created all the architecture in place to provide us with the opportunity to create our piece of software. Nobody should expect we did everything on our own. To reuse code is not more "cheating" than reusing the operating system or the hardware it runs on.

When we reuse code without altering it, we should reuse it as a complete submodule (using source code) or linking to its place on the internet while building (using prebuild code) - and give credit.<br />
When we reuse code and our goals and the creator's vision don't align, we should fork it and make its ancestry obvious - and give credit.<br />
When we need to copy code, since we only need parts likge snippets or a specific version, at least we should give credit.

By giving credit and making the origin of reused code obvious, we are able to demonstrate that code we added adds value, which is much more fulfilling, than trying to hide what is obvious: We - too - stand on the shoulders of giants.
