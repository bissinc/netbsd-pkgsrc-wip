# $Id: Makefile,v 1.110 2003/04/20 15:16:12 xtraeme Exp $
# $NetBSD: Makefile,v 1.110 2003/04/20 15:16:12 xtraeme Exp $

COMMENT=	WIP pkgsrc packages

SUBDIR+=	PPower4
SUBDIR+=	SDL_mm
SUBDIR+=	adodb
SUBDIR+=	allegro
SUBDIR+=	aolserver
SUBDIR+=	ap-bandwidth
SUBDIR+=	autoproject
SUBDIR+=	billardgl
SUBDIR+=	bugzilla
SUBDIR+=	byacc
SUBDIR+=	celestia
SUBDIR+=	chksniff
SUBDIR+=	cjk-latex
SUBDIR+=	cjk-latex-chinese
SUBDIR+=	cjk-latex-japanese
SUBDIR+=	cjk-latex-korean
SUBDIR+=	cvsd
SUBDIR+=	dancer-ircd
SUBDIR+=	devhelp
SUBDIR+=	dircproxy
SUBDIR+=	directfb
SUBDIR+=	dovecot
SUBDIR+=	drweb
SUBDIR+=	emirror
SUBDIR+=	ezbounce
SUBDIR+=	fluxconf
SUBDIR+=	gdrdao
SUBDIR+=	geeklog
SUBDIR+=	gkrellm2
SUBDIR+=	gkrellm2-flynn
SUBDIR+=	gkrellm2-launch
SUBDIR+=	gkrellm2-leds
SUBDIR+=	gkrellm2-multiping
SUBDIR+=	gkrellm2-server
SUBDIR+=	gkrellm2-share
SUBDIR+=	gkrellm2-snmp
SUBDIR+=	gkrellm2-volume
SUBDIR+=	gkrellm2-xmms
SUBDIR+=	gnomeicu
SUBDIR+=	golem
SUBDIR+=	gstreamer
SUBDIR+=	gstreamer-player
SUBDIR+=	gstreamer-plugins
SUBDIR+=	gtetrinet2
SUBDIR+=	gtk-sharp
SUBDIR+=	gtkglarea2
SUBDIR+=	gtranslator
SUBDIR+=	honeyd-arpd
SUBDIR+=	httrack
SUBDIR+=	ices
SUBDIR+=	ickle
SUBDIR+=	idled
SUBDIR+=	ike-scan
SUBDIR+=	ion-devel
SUBDIR+=	ion-dock
SUBDIR+=	jdk-openjit
SUBDIR+=	jdk12
SUBDIR+=	jdk12-openjit
SUBDIR+=	jdk13
SUBDIR+=	jdk13-openjit
SUBDIR+=	jpgraph
SUBDIR+=	liquidwar
SUBDIR+=	lpe
SUBDIR+=	mailfilter
SUBDIR+=	mcats
SUBDIR+=	mcats-iodbc
SUBDIR+=	mopac
SUBDIR+=	mtf
SUBDIR+=	nagios-base
SUBDIR+=	nagios-plugin-ldap
SUBDIR+=	nagios-plugin-mysql
SUBDIR+=	nagios-plugin-pgsql
SUBDIR+=	nagios-plugin-snmp
SUBDIR+=	nagios-plugins
SUBDIR+=	navigatrix
SUBDIR+=	nvtv
SUBDIR+=	p5-Chart
SUBDIR+=	p5-HTTP-GHTTP
SUBDIR+=	p5-Net-Jabber
SUBDIR+=	p5-Unicode-String
SUBDIR+=	p5-XML-Stream
SUBDIR+=	perltidy
SUBDIR+=	phplot
SUBDIR+=	pixieplus
SUBDIR+=	poedit
SUBDIR+=	ppp
SUBDIR+=	pts
SUBDIR+=	puf
SUBDIR+=	py-ORBit
SUBDIR+=	py-OpenGL
SUBDIR+=	py-PgSQL
SUBDIR+=	py-csv
SUBDIR+=	py-gnome2
SUBDIR+=	py-gnosis-utils
SUBDIR+=	py-gtk2
SUBDIR+=	py-spreadmodule
SUBDIR+=	scm
SUBDIR+=	shoutcast
SUBDIR+=	streamripper
SUBDIR+=	tex-foiltex
SUBDIR+=	totem
SUBDIR+=	tsclient
SUBDIR+=	umix
SUBDIR+=	vim-gtk2
SUBDIR+=	vixie-cron
SUBDIR+=	vmsbackup
SUBDIR+=	xawtv
SUBDIR+=	xevil

.include "../mk/bsd.pkg.subdir.mk"
