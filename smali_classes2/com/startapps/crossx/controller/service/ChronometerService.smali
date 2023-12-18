.class public Lcom/startapps/crossx/controller/service/ChronometerService;
.super Landroid/app/Service;
.source "ChronometerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ChronometerService"


# instance fields
.field private chronometerServiceListener:Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;

.field private count:I

.field private handler:Landroid/os/Handler;

.field private mWrapper:Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;


# direct methods
.method static bridge synthetic -$$Nest$fgetchronometerServiceListener(Lcom/startapps/crossx/controller/service/ChronometerService;)Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->chronometerServiceListener:Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcount(Lcom/startapps/crossx/controller/service/ChronometerService;)I
    .locals 0

    iget p0, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->count:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/startapps/crossx/controller/service/ChronometerService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputcount(Lcom/startapps/crossx/controller/service/ChronometerService;I)V
    .locals 0

    iput p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->count:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static serviceIsRunning(Landroid/content/Context;)Z
    .locals 2

    .line 100
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "is_running"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static setServiceIsRunning(Landroid/content/Context;Z)Z
    .locals 1

    .line 95
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "is_running"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method

.method private startCount()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/startapps/crossx/controller/service/ChronometerService$1;

    invoke-direct {v1, p0}, Lcom/startapps/crossx/controller/service/ChronometerService$1;-><init>(Lcom/startapps/crossx/controller/service/ChronometerService;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->count:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->mWrapper:Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;

    if-nez p1, :cond_0

    .line 88
    new-instance p1, Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;

    invoke-direct {p1, p0}, Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;-><init>(Lcom/startapps/crossx/controller/service/ChronometerService;)V

    iput-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->mWrapper:Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->mWrapper:Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "ChronometerService"

    const-string v1, "onCreate"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 34
    invoke-static {p0, v0}, Lcom/startapps/crossx/controller/service/ChronometerService;->setServiceIsRunning(Landroid/content/Context;Z)Z

    .line 35
    invoke-direct {p0}, Lcom/startapps/crossx/controller/service/ChronometerService;->startCount()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ChronometerService"

    const-string v1, "onDestroy"

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 40
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const-string p1, "ChronometerService"

    const-string v0, "onUnbind"

    .line 52
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 53
    iput-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->chronometerServiceListener:Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;

    const/4 p1, 0x1

    return p1
.end method

.method public setChronometerServiceListener(Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService;->chronometerServiceListener:Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;

    return-void
.end method
