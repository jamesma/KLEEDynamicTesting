#
# gnupg -- gnu privacy guard
# This is a template.  The dist target uses it to create the real file.
#
%define version 1.0.5
%define name gnupg
Summary: GNU Utility for data encryption and digital signatures
Summary(it): Utility GNU per la sicurezza nelle comunicazioni e nell'archiviazione dei dati.
Summary(cs): GNU n�stroj pro �ifrovanou komunikaci a bezpe�n� ukl�d�n� dat
Summary(fr): Utilitaire GNU de chiffrement et d'authentification des communications et des donn�es
Summary(pl): Narzedzie GNU do szyfrowania i podpisywania danych
Vendor: GNU Privacy Guard Project
Name: %{name}
Version: %{version}
Release: 1
Copyright: GPL
Group: Applications/Cryptography
Group(cs): Aplikace/�ifrov�n�
Group(fr): Applications/Cryptographie
Group(it): Applicazioni/Crittografia
Source: ftp://ftp.gnupg.org/pub/gcrypt/%{name}-%{version}.tar.gz
URL: http://www.gnupg.org
Provides: gpg openpgp
BuildRoot: /tmp/rpmbuild_%{name}

%changelog
* Wed Sep 06 2000 Fabio Coatti <cova@ferrara.linux.it>
- Added Polish description and summary (Kindly provided by  
  Lukasz Stelmach <stelmacl@ee.pw.edu.pl>)
  
* Thu Jul 13 2000 Fabio Coatti <cova@ferrara.linux.it>
- Added a * to catch all formats for man pages (plain, gz, bz2...)    

* Mon May 01 2000 Fabio Coatti <cova@ferrara.linux.it>
- Some corrections in French description, thanks to Ga�l Qu�ri
  <gqueri@mail.dotcom.fr>; Some corrections to Italian descriptions.

* Tue Apr 25 2000 Fabio Coatti <cova@ferrara.linux.it>
- Removed the no longer needed patch for man page by Keith Owens

* Wed Mar 1 2000 Petr Kri�tof <Petr@Kristof.CZ> 
- Czech descriptions added; some fixes and updates.

* Sat Jan 15 2000 Keith Owens <kaos@ocs.com.au>
- Add missing man page as separate patch instead of updating the tar file.

* Mon Dec 27 1999 Fabio Coatti <cova@ferrara.linux.it> 
- Upgraded for 1.0.1 (added missing gpg.1 man page)

* Sat May 29 1999 Fabio Coatti <cova@ferrara.linux.it>
- Some corrections in French description, thanks to Ga�l Qu�ri <gqueri@mail.dotcom.fr>  

* Mon May 17 1999 Fabio Coatti <cova@felix.unife.it>
- Added French description, provided by 
  Christophe Labouisse <labouiss@cybercable.fr>

* Thu May 06 1999 Fabio Coatti <cova@felix.unife.it> 
- Upgraded for 0.9.6 (removed gpgm)

* Tue Jan 12 1999 Fabio Coatti <cova@felix.unife.it>
- LINGUAS variable is now unset in configure to ensure that all languages will be built. (Thanks to Luca Olivetti <luca@luca.ddns.org>)
 
* Sat Jan 02 1999 Fabio Coatti <cova@felix.unife.it>
- Added pl language file.
- Included g10/pubring.asc in documentation files.

* Sat Dec 19 1998 Fabio Coatti <cova@felix.unife.it>
- Modified the spec file provided by Caskey L. Dickson <caskey-at-technocage.com>
- Now it can be built also by non-root. Installation has to be done as
  root, gpg is suid.
- Added some changes by  Ross Golder <rossigee@bigfoot.com>
- Updates for version 0.4.5 of GnuPG (.mo files)

%description
GnuPG (GNU Privacy Guard) is a GNU utility for encrypting data and
creating digital signatures. GnuPG has advanced key management
capabilities and is compliant with the proposed OpenPGP Internet
standard described in RFC2440. Since GnuPG doesn't use any patented
algorithm, it is not compatible with any version of PGP2 (PGP2.x uses
only IDEA, patented worldwide, and RSA, which is patented in the US
until 9/20/00).

%description -l it
GnuPG (GNU Privacy Guard) � una utility GNU per la cifratura di dati e
la creazione di firme digitali. Possiede una gestione avanzata delle
chiavi ed � conforme allo standard Internet OpenPGP, descritto nella
RFC 2440. Non utilizzando algoritmi brevettati, non � compatibile con
PGP2 (PGP2.x usa solo IDEA, coperto da brevetto mondiale, ed RSA,
brevettato negli USA con scadenza 20/09/2000). Questi algoritmi sono
utilizzabili da GnuPG tramite moduli esterni.

%description -l fr
GnuPG est un utilitaire GNU destin� � chiffrer des donn�es et � cr�er
des signatures �lectroniques. Il a des capacit�s avanc�es de gestion de
cl�s et il est conforme � la norme propos�e OpenPGP d�crite dans la
RFC2440. Comme GnuPG n'utilise pas d'algorithme brevet�, il n'est
compatible avec aucune version de PGP2 (PGP2.x ne sait utiliser que
l'IDEA brevet� dans le monde entier et RSA, brevet� aux �tats-Unis
jusqu'au 20 septembre 2000). 

%description -l cs
GnuPG je GNU n�stroj pro bezpe�nou komunikaci a ukl�d�n� dat. M��e b�t
pou�it na �ifrov�n� dat a vytv��en� digit�ln�ch podpis�. Obsahuje
funkce pro pokro�ilou spr�vu kl��� a vyhovuje navrhovan�mu OpenPGP
Internet standardu podle RFC2440. Byl vytvo�en jako kompletn�
n�hrada za PGP. Proto�e neobsahuje �ifrovac� algoritmy IDEA nebo RSA,
m��e b�t pou��v�n bez omezen�.
Proto�e GnuPG nepou��v� ��dn� patentovan� algoritmus, nem��e b�t �pln�
kompatibiln� s PGP verze 2. PGP 2.x pou��v� algoritmy IDEA (patentov�no
celosv�tov�) a RSA (patentov�no ve Spojen�ch st�tech do 20. z���
2000). Tyto algoritmy lze zav�st do GnuPG pomoc� extern�ch modul�.

%description -l pl
GnuPG (GNU Privacy Guard) jest nazedziem do szfrowania danych i tworzenia
cyfrowych podpis�w. GnuPG posiada zaawansowane mozliwosci obslugi kluczy
i jest zgodne z OpenPGP, proponowanym standardem internetowym opisanym
w RFC2440. Poniewaz GnuPG nie uzywa zadnych opatentowanych algorytm�w
nie jest wiec zgodne z jaka kolwiek wersja PGP2 (PGP2.x kozysta jedynie
z algorytm�w: IDEA, opatentowanego na calym swiecie, oraz RSA, kt�rego
patent na terenie Stan�w Zjednoczonych wygasa 20 wrzesnia 2000).         

%prep
rm -rf $RPM_BUILD_ROOT
rm -rf $RPM_BUILD_DIR/%{name}-%{version}

%setup

%build
if test -n "$LINGUAS"; then
 unset LINGUAS
fi    
CFLAGS="$RPM_OPT_FLAGS" ./configure --prefix=/usr --enable-shared
make

%install
make install-strip prefix=$RPM_BUILD_ROOT/usr

%files

%doc %attr (-,root,root) INSTALL
%doc %attr (-,root,root) AUTHORS
%doc %attr (-,root,root) COPYING
%doc %attr (-,root,root) ChangeLog
%doc %attr (-,root,root) NEWS
%doc %attr (-,root,root) README
%doc %attr (-,root,root) THANKS
%doc %attr (-,root,root) TODO   
%doc %attr (-,root,root) PROJECTS
%doc %attr (-,root,root) doc/DETAILS
%doc %attr (-,root,root) doc/FAQ
%doc %attr (-,root,root) doc/HACKING
%doc %attr (-,root,root) doc/OpenPGP
%doc %attr (-,root,root) g10/pubring.asc
%doc %attr (-,root,root) g10/OPTIONS

%attr (-,root,root) /usr/man/man1/gpg.1*
%attr (4755,root,root) /usr/bin/gpg

%attr (-,root,root) /usr/share/locale/*/*/%{name}.mo

%attr (-,root,root) /usr/lib/%{name}
%attr (-,root,root) /usr/share/%{name}

%clean
rm -rf $RPM_BUILD_ROOT
rm -rf $RPM_BUILD_DIR/%{name}-%{version}
