Update and RealTimeBattle
#########################
:date: 2013-09-10 17:00
:author: tim
:tags: news

We've not been great about updating this but the group is still very much alive
and meeting twice a month. We keep seeing new faces and gaining new regulars,
which is awesome.

One of the things we've been working on as of late is working with a program
called `RealTimeBattle <http://realtimebattle.sourceforge.net/>`_ which is a
simulator where you have "tanks" controlled by programs which battle eachother
on virtual battle fields. One of the cool things about RealTimeBattle is that
it isn't just Python - anything that can read from stdout and write to stdin
can be used to control a tank.

Eventually, we're hoping to have a tournament between submitted tanks but we're
still working out good ways to control the tanks.

One of the problems we've hit is that RealTimeBattle is relatively inactive and
unless you're running a Debian derivative (`there is a Debian package available
<http://packages.debian.org/unstable/main/realtimebattle>`_) it's not trivial to
build or install.

To help make this process easier, I've made a `live image <http://en.wikipedia.org/wiki/Live_CD>`_
that already has RealTimeBattle, some editors and python utilities pre-installed.
These images are based on `Fedora 19 <http://fedoraproject.org/>`_ and use the
`XFCE <http://www.xfce.org/>`_ desktop environment. All you have to do is download
the image and either run it in a virtual machine or `prepare it to boot on your
computer <http://fedoraproject.org/wiki/How_to_create_and_use_Live_USB>`_

These images are very much a work in progress and feedback would be very much
appreciated. The only way these images will get better is through testing and
finding out if anything is missing!

The signatures are all done with `my GPG key <http://pgp.mit.edu:11371/pks/lookup?op=get&search=0xA1FF95F89D9C6F26>`_
and also have sha256 checksums.

32 bit image
============
 * `i386 iso <https://pysprings.org/rtblive/livecd-pysprings-rtblive-19.2-i386.iso>`_
 * `sha256 checksum <https://pysprings.org/rtblive/livecd-pysprings-rtblive-19.2-CHECKSUM>`_
 * `i386 iso gpg signature <https://pysprings.org/rtblive/livecd-pysprings-rtblive-19.2-i386.iso.asc>`_

64 bit image
============
 * `x86_64 iso <https://pysprings.org/rtblive/livecd-pysprings-rtblive-19.2-x86_64.iso>`_
 * `sha256 checksum <https://pysprings.org/rtblive/livecd-pysprings-rtblive-19.2-CHECKSUM>`_
 * `x86_64 iso gpg signature <https://pysprings.org/rtblive/livecd-pysprings-rtblive-19.2-x86_64.iso.asc>`_

