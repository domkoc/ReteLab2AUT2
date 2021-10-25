#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "networkmanager.h"
#include <QQmlContext>

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    NetworkManager *myManager = new NetworkManager();
    QObject *page1 = engine.rootObjects()[0]->findChild<QObject*>("page1Object");
    QObject::connect(page1, SIGNAL(loginPressed(QVariant,QVariant)), myManager, SLOT(login(QVariant,QVariant)));
    engine.rootContext()->setContextProperty("networkManager", myManager);

    return app.exec();
}
