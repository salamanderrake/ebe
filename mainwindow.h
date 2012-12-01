#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QString>
#include <QEvent>
#include "datawindow.h"
#include "sourcewindow.h"
#include "registerwindow.h"
#include "floatwindow.h"
#include "terminalwindow.h"
#include "consolewindow.h"
#include "projectwindow.h"
#include "settings.h"

QT_BEGIN_NAMESPACE
class QAction;
class QMenu;
class QTextEdit;
class QDockWidget;
QT_END_NAMESPACE


class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent=0);
    void saveSettings();

public slots:
    void restoreMainWindow();

private slots:
    void increaseFont();
    void decreaseFont();
    void displayHelp();
    void setTooltipsVisible(bool);
    void quit();


private:
    void createMenus();
    void createStatusBar();
    void createDockWindows();
    void helpAction ( QMenu *menu, QString s, QString file );
    void keyPressEvent ( QKeyEvent *event );
    QAction *addToggle ( QMenu *menu, QString text, QObject *object,
                     const char *slot, bool checked );
    bool eventFilter ( QObject *object, QEvent *event );

    bool tooltipsVisible;
    DataWindow *data;
    SourceWindow *source;
    RegisterWindow *registerWindow;
    FloatWindow *floatWindow;
    ProjectWindow *project;
    TerminalWindow *terminal;
    ConsoleWindow *console;
    Settings *settings;

    QDockWidget *dataDock;
    QDockWidget *registerDock;
    QDockWidget *floatDock;
    QDockWidget *projectDock;
    QDockWidget *terminalDock;
    QDockWidget *consoleDock;

    QAction *dataVisible;
    QAction *registerVisible;
    QAction *floatVisible;
    QAction *projectVisible;
    QAction *terminalVisible;
    QAction *consoleVisible;

    void setFontSize();
    int fontSize;

    QMenu *fileMenu;
    QMenu *templateMenu;
    QMenu *editMenu;
    QMenu *viewMenu;
    QMenu *moveMenu;
    QMenu *fontMenu;
    QMenu *helpMenu;
};

#endif
