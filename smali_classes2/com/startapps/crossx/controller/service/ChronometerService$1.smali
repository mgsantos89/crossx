.class Lcom/startapps/crossx/controller/service/ChronometerService$1;
.super Ljava/lang/Object;
.source "ChronometerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/controller/service/ChronometerService;->startCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/controller/service/ChronometerService;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/controller/service/ChronometerService;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/startapps/crossx/controller/service/ChronometerService$1;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService$1;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-static {v0}, Lcom/startapps/crossx/controller/service/ChronometerService;->-$$Nest$fgetcount(Lcom/startapps/crossx/controller/service/ChronometerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/startapps/crossx/controller/service/ChronometerService;->-$$Nest$fputcount(Lcom/startapps/crossx/controller/service/ChronometerService;I)V

    .line 66
    iget-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService$1;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-static {v0}, Lcom/startapps/crossx/controller/service/ChronometerService;->-$$Nest$fgetchronometerServiceListener(Lcom/startapps/crossx/controller/service/ChronometerService;)Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService$1;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-static {v0}, Lcom/startapps/crossx/controller/service/ChronometerService;->-$$Nest$fgetchronometerServiceListener(Lcom/startapps/crossx/controller/service/ChronometerService;)Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/startapps/crossx/Interfaces/OnChronometerServiceListener;->onTickTimer()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/service/ChronometerService$1;->this$0:Lcom/startapps/crossx/controller/service/ChronometerService;

    invoke-static {v0}, Lcom/startapps/crossx/controller/service/ChronometerService;->-$$Nest$fgethandler(Lcom/startapps/crossx/controller/service/ChronometerService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
