.class public Lcom/startapps/crossx/view/adapter/NotificationAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/NotificationModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/NotificationModel;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 1

    .line 31
    check-cast p1, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;

    .line 32
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/NotificationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/NotificationModel;

    .line 34
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->getMessage()Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p2}, Lcom/startapps/crossx/model/NotificationModel;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;->getDate()Landroid/widget/TextView;

    move-result-object p1

    .line 37
    invoke-virtual {p2}, Lcom/startapps/crossx/model/NotificationModel;->getDate()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "yyyy-MM-dd HH:mm:ss"

    invoke-static {p2, p3}, Lcom/startapps/crossx/controller/utils/DateUtility;->stringForDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object p2

    .line 38
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p3

    .line 36
    invoke-static {p2, p3}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDuration(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "dia"

    const-string v0, "d"

    .line 39
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "hora"

    const-string v0, "h"

    .line 40
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 35
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 45
    new-instance v0, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/NotificationAdapter$ViewHolderRanking;-><init>(Lcom/startapps/crossx/view/adapter/NotificationAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00aa

    return v0
.end method
