.class public Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;
.super Landroid/os/Binder;
.source "ChronometerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/controller/service/ChronometerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "INotificationListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/controller/service/ChronometerService;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/controller/service/ChronometerService;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/startapps/crossx/controller/service/ChronometerService;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService$INotificationListenerWrapper;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    return-object v0
.end method
