#ifndef SOURCEEDIT_H
#define SOURCEEDIT_H

#include <QPlainTextEdit>
#include <QString>

QT_BEGIN_NAMESPACE
class QAction;
class QMenu;
class QLineEdit;
class QPushButton;
class QKeyEvent;
QT_END_NAMESPACE

class SourceEdit : public QPlainTextEdit
{
    Q_OBJECT

public:
    SourceEdit(QWidget *parent=0);

private slots:

private:
    void keyPressEvent(QKeyEvent *event);
};

#endif