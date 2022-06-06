#ifndef TDIALOG_H
#define TDIALOG_H

#include <QListWidgetItem>
#include <QAbstractButton>
#include <QDialog>
#include <QMediaPlayer>

namespace Ui {
    class AlarmSndPick;
}

class AlarmSndPick : public QDialog
{
    Q_OBJECT

public:
    explicit AlarmSndPick(QWidget *parent = 0);
    ~AlarmSndPick();
    QString selected;

public slots:
    void stopSound();

private:
    Ui::AlarmSndPick *ui;
    QMediaPlayer player;

private slots:
    void on_moreButton_portrait_clicked(QAbstractButton* button);
    void on_moreButton_landscape_clicked(QAbstractButton* button);
    void on_listWidget_itemActivated(QListWidgetItem* item);
    void orientationChanged();
    virtual void reject();

};

#endif // ALARMSNDPICK_H
