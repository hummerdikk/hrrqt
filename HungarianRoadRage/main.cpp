#include "mainwindow.h"
#include <QApplication>

#include <QtGui>
#include <QGraphicsView>
#include "road.h"
#include "car.h"
//using namespace std;

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;

    /*QGraphicsView graphicView;
    QGraphicsScene *scene = new QGraphicsScene(0,0,Road::ROAD_WIDTH,Road::SCREEN_HEIGHT,&graphicView);
    graphicView.setScene(scene);
    Car* myCar = new Car;
    Road* myRoad = new Road(myCar);
    scene->addItem(myRoad);
    scene->addItem(myCar);
    myRoad->setFocus();
    graphicView.show();*/

    w.show();
    a.exec();
    return 0;
}
