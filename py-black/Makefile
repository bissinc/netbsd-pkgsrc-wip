# $NetBSD$

DISTNAME=	black-19.10b0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	textproc devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=b/black/}

MAINTAINER=	root@zta.lk
HOMEPAGE=	https://black.readthedocs.io/
COMMENT=	Uncompromising Python code formatter
LICENSE=	mit

WRKSRC=		${WRKDIR}/black-19.10b0
USE_LANGUAGES=	# none

BUILD_DEPENDS+=	${PYPKGPREFIX}-setuptools_scm-[0-9]*:../../devel/py-setuptools_scm
DEPENDS+=	${PYPKGPREFIX}-click>=6.5:../../devel/py-click
DEPENDS+=	${PYPKGPREFIX}-pathspec>=0.6<1:../../devel/py-pathspec
DEPENDS+=	${PYPKGPREFIX}-attrs>=18.1.0:../../devel/py-attrs
DEPENDS+=	${PYPKGPREFIX}-appdirs-[0-9]*:../../devel/py-appdirs
DEPENDS+=	${PYPKGPREFIX}-toml>=0.9.4:../../textproc/py-toml
DEPENDS+=	${PYPKGPREFIX}-typed-ast>=1.4.0:../../devel/py-typed-ast
DEPENDS+=	${PYPKGPREFIX}-regex-[0-9]*:../../textproc/py-regex
# only for blackd:
DEPENDS+=	${PYPKGPREFIX}-aiohttp>=3.3.2:../../www/py-aiohttp
DEPENDS+=	${PYPKGPREFIX}-aiohttp-cors-[0-9]*:../../www/py-aiohttp-cors

PYTHON_VERSIONS_INCOMPATIBLE=	27 # py-aiohttp

post-install:
	cd ${DESTDIR}${PREFIX}/bin && for b in black blackd; \
          do ${MV} $$b $$b-${PYVERSSUFFIX}; \
        done

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
