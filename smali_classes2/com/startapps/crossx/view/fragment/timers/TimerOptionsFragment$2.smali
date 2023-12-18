.class Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;
.super Ljava/lang/Object;
.source "TimerOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->inflateView(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

.field final synthetic val$countDown:Landroid/widget/EditText;

.field final synthetic val$dialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;Landroid/widget/EditText;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

    iput-object p2, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;->val$countDown:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;->val$dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;->val$countDown:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "0"

    .line 200
    :cond_0
    invoke-static {}, Lcom/startapps/crossx/controller/utils/Preference;->getInstance()Lcom/startapps/crossx/controller/utils/Preference;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/startapps/crossx/controller/utils/Preference;->saveTimerDelay(I)V

    .line 201
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;->this$0:Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment;->hideKeyboard()V

    .line 202
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/timers/TimerOptionsFragment$2;->val$dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method
