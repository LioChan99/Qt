#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class BackEnd : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString someVar READ someVar WRITE setSomeVar NOTIFY someVarChanged)
public:
    explicit BackEnd(QObject *parent = nullptr);
    QString someVar();

signals:
    void someVarChanged();
public slots:
  Q_INVOKABLE  void callMe();
  Q_INVOKABLE void setSomeVar(QString);
private:
    QString m_someVar;
};

#endif // BACKEND_H
