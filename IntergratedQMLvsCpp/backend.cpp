#include "backend.h"
#include<QDebug>
#include<iostream>
using namespace std;
BackEnd::BackEnd(QObject *parent)
    : QObject{parent}
     //,m_someVar("123")
{
    m_someVar="123";
}

void BackEnd::callMe()
{
 cout<<"I'm being called!";
 qDebug()<<"I'm being called!";
}

void BackEnd::setSomeVar(QString newVar)
{
   if(m_someVar != newVar)
   {
       m_someVar = newVar;
       emit someVarChanged();
   }
}

QString BackEnd::someVar()
{
    return m_someVar;
}
