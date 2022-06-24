#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include"backend.h"
#include<QQmlContext>
int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    BackEnd backEnd;
    //qmlRegisterType<BackEnd>("Monty",1,0,"BackEnd");
    // package's name, major version number,minor version num,component's name using in qlm code
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

   QQmlContext *rootContext = engine.rootContext();
   rootContext->setContextProperty("classA",&backEnd);// use this one

    return app.exec();
}
