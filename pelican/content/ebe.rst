ebe - Integrated Development Environment
########################################

:date: 2015-1-27 19:00
:modified: 2015-1-27 18:22
:tags: ebe, ide, assembly, C, C++, Fortran, Windows, Linux, OS X
:author: Ray Seyfarth
:summary: Home page for Ray Seyfarth
:category: ebe
:save_as: ebe.html

Ebe is an integrated development designed to support Assembly
Language.  After teaching assembly language one semester where the
students and I depended on using gdb for debugging, I wanted a better
solution.  I tried ddd and a few IDEs, but they all suffered from
the fact that yasm doesn't provide data type information to gdb.  I
started trying to write a debugger in python and decided dbe was a nice
name for a debugger.  Since dbe had a source code window which
supported nearly all that was needed in an editor, it became apparent
that dbe was almost a development environment.  So I decided to
expand it to be an IDE and I had to pick a name for a development
environment.  The name ebe was too hard to resist since it already
means extraterrestrial biological entity.  But just to satisfy my
sense of fairness, I can claim that is stands for easy beginner
environment.  This also explains the alien icon.  I drew the
alien icon based on what I have read of little green men.  I
hope I haven't made an icon too much like something someone has
trademarked.

What can ebe do?
================
In a nutshell ebe supports program development in C, C++, Fortran and
Assembly.  It was designed to support Assembly and I needed to be
able to build programs with C functions, so C and C++ were
important.  Adding Fortran was easy, so why not?  The Qt
version of ebe runs on Linux, OS X and Windows.

How do you get ebe?
===================
You can get ebe from http://qtebe.sourceforge.net. 
There are installation packages for Ubuntu, Slackware and Windows. 
At this time support for OS X consists of instructions on how
to download the source code and compile ebe.

How do you get help with ebe?
=============================
There is a tutorial_ which should be enough to get started.
There are also tooltips and help inside the program.
Looking through the menus will give some ideas and will show
some keyboard shortcuts.

.. _tutorial: tutorial.html

How do you report problems with ebe?
====================================
You can use the `ticket system`_ on the ebe sourceforge site to report
problems with ebe.
You can also email me as ray.seyfarth@gmail.com.

.. _`ticket system`: http://sourceforge.net/p/qtebe/tickets/
