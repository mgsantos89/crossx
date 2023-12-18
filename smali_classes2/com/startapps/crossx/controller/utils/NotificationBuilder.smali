.class public Lcom/startapps/crossx/controller/utils/NotificationBuilder;
.super Ljava/lang/Object;
.source "NotificationBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildNotification(Landroid/content/Context;Lcom/startapps/crossx/model/Notification;Lcom/google/firebase/messaging/RemoteMessage$Notification;)V
    .locals 7

    const-string v0, "build Notification()"

    .line 52
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/startapps/crossx/model/Notification;->title:Ljava/lang/String;

    .line 54
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/startapps/crossx/model/Notification;->message:Ljava/lang/String;

    .line 55
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/startapps/crossx/view/activity/HomeActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_notification"

    .line 56
    invoke-virtual {v5, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getBody()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/google/firebase/messaging/RemoteMessage$Notification;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->getTypeByString(Ljava/lang/String;)Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;

    move-result-object v6

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/startapps/crossx/controller/utils/NotificationBuilder;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;)V

    return-void
.end method

.method private static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;)V
    .locals 2

    const-string v0, "NotificatonBuilder create()"

    .line 23
    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/Logger;->d(Ljava/lang/String;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x2000000

    invoke-static {p0, v0, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p0, v0, p4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 34
    :goto_0
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p5}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->getIconResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 36
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 37
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    invoke-virtual {p5}, Lcom/startapps/crossx/model/enuns/NotificationTitleEnum;->getColorRes()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x1

    .line 39
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 40
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 41
    new-instance p1, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p1, 0x2

    .line 43
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p2

    .line 44
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    new-array p1, p1, [J

    .line 45
    fill-array-data p1, :array_0

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setVibrate([J)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "notification"

    .line 47
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 48
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_0
    .array-data 8
        0x1f4
        0x1f4
    .end array-data
.end method
