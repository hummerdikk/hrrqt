#ifndef DEBUGWINDOW_H
#define DEBUGWINDOW_H

#include <QDialog>

namespace Ui {
class DebugWindow;
}

class DebugWindow : public QDialog
{
    Q_OBJECT

public:
    explicit DebugWindow(QWidget *parent = 0);
    ~DebugWindow();
    void setDebugVideo(QImage &image);

private:
    Ui::DebugWindow *ui;
};

#endif // DEBUGWINDOW_H
