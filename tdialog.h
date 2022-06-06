#ifndef TDIALOG_H
#define TDIALOG_H

#include <QListWidgetItem>
#include <QAbstractButton>
#include <QDialog>
#include <QMediaPlayer>

namespace Ui {
    class TDialog;
}

class TDialog : public QDialog
{
    Q_OBJECT

public:
    explicit TDialog(QWidget *parent = 0);
    ~TDialog();
    QString selected;

public slots:
    void stopSound();

private:
    Ui::TDialog *ui;
    QMediaPlayer player;

private slots:
    void on_moreButton_portrait_clicked(QAbstractButton* button);
    void on_moreButton_landscape_clicked(QAbstractButton* button);
    void on_listWidget_itemActivated(QListWidgetItem* item);
    void orientationChanged();
    virtual void reject();

};

#endif // TDIALOG_H
