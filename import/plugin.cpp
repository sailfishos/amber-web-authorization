/****************************************************************************
**
** BSD 3-Clause License.  See LICENSE for full text.
** Copyright (c) 2021 Open Mobile Platform LLC.
** All rights reserved.
**
****************************************************************************/

#include "plugin.h"
#include "oauth1.h"
#include "oauth2.h"
#include "redirectlistener.h"

#include <QtQml>

namespace Amber {

namespace Web {

namespace Authorization {

void AmberWebAuthorizationPlugin::registerTypes(const char *uri)
{
    Q_ASSERT(uri == QLatin1String("Amber.Web.Authorization"));

    qmlRegisterType<Amber::Web::Authorization::OAuth1>("Amber.Web.Authorization", 1, 0, "OAuth1");
    qmlRegisterType<Amber::Web::Authorization::OAuth2>("Amber.Web.Authorization", 1, 0, "OAuth2");
    qmlRegisterType<Amber::Web::Authorization::RedirectListener>("Amber.Web.Authorization", 1, 0, "RedirectListener");
    qmlRegisterUncreatableType<Amber::Web::Authorization::Error>("Amber.Web.Authorization", 1, 0, "Error",
            QStringLiteral("You cannot construct an OAuth error object in QML"));

    qRegisterMetaType<Amber::Web::Authorization::Error>("Amber::Web::Authorization::Error");
}

void AmberWebAuthorizationPlugin::initializeEngine(QQmlEngine *engine, const char *uri)
{
    Q_ASSERT(uri == QLatin1String("Amber.Web.Authorization"));

    AppTranslator *engineeringEnglish = new AppTranslator(engine);
    AppTranslator *translator = new AppTranslator(engine);
    engineeringEnglish->load("amber_web_authorization_eng_en", "/usr/share/translations");
    translator->load(QLocale(), "amber_web_authorization", "-", "/usr/share/translations");
}

} // namespace Authorization

} // namespace Web

} // namespace Amber

