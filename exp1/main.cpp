#include<QApplication>
#include<QLabel>
int main(int argc,char*argv[]){
    QApplication app(argc,argv);
    QLabel *label = new QLabel("Hello World");
    label->show();
    label->setWindowTitle("My App");
    label->resize(400,400);
    return app.exec();
}
