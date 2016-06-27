# Created by: Joe Maloney <jmaloney@ixsystems.com>
# $FreeBSD$

PORTNAME=	trueos-utils
PORTVERSION=	%%CHGVERSION%%
CATEGORIES=	sysutils

MAINTAINER=	jmaloney@ixsystems.com
COMMENT=	TrueOS Shell Utilities

LICENSE=	BSD2CLAUSE

RUN_DEPENDS=    sipcalc:${PORTSDIR}/net-mgmt/sipcalc \
                eject:${PORTSDIR}/sysutils/eject \
                unzip:${PORTSDIR}/archivers/unzip

WRKSRC_SUBDIR=  src-sh/trueos-utils
USE_QT5=        core network buildtools qmake
USES=           pkgconfig python:3.2+ tar:xz
MAKE_ARGS=      PREFIX=${STAGEDIR}${PREFIX}
MAKE_JOBS_UNSAFE=yes

CONFLICTS=      pcbsd-utils*

USE_GITHUB=	yes
GH_ACCOUNT=	trueos
GH_PROJECT=	trueos-utils
GH_TAGNAME=	%%GHTAG%%

.include <bsd.port.mk>
