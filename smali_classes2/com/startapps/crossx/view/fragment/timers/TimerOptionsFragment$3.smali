.class Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$3;
.super Ljava/lang/Object;
.source "TimerOptionsFragment.java"

# interfaces
.implements Lcom/startapps/crossx/view/widget/picker/StringPickerDialog$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->showPickerTimerDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$3;->this$0:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;)V
    .locals 1

    .line 220
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/controller/utils/Preference;->saveTimerDelay(I)V

    return-void
.end method
