#ifndef NETWORKMANAGER_H
#define NETWORKMANAGER_H

#include <QObject>
#include <QNetworkAccessManager>
#include <QVariant>

class NetworkManager : public QObject
{
    Q_OBJECT
    QNetworkAccessManager manager;
public:
    explicit NetworkManager(QObject *parent = nullptr);

signals:
    void loginSuccess(QString imageSource, QString title, QString subtitle);

public slots:
    void login(QVariant username, QVariant password);

private slots:
    void requestFinished(QNetworkReply *reply);
};

#endif // NETWORKMANAGER_H
