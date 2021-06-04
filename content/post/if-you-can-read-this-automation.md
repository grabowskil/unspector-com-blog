---
title: "GitHub actions as CI"
date: 2021-06-04T07:38:50+02:00
draft: false
toc: false
image: ""
tags: [programming, organisation]
categories: []
---

# If you can read this my GitHub actions are working
<!--more-->
The last few days I explored GitHub actions to automate deployment and publishing of this blog.

Some things I learned:
* GitHub makes it considerably harder to launch reasonably privileged docker containers to execute actions than Gitlab
* If you commit to using GitHub's "actions marketplace" instead of trying to create everything yourself from scratch, it works surprisingly smooth
* Built-in logging ist much more structured, than Gitlab's
* When GitHub's marketplace doesn't have, what you are looking for, you can work around this with simple shell scripts, if this doesn't help, you are out of luck

GitHub actions definitely hints at the upcoming low code future, where the hard work has been done by someone else and you just put the pieces together.
