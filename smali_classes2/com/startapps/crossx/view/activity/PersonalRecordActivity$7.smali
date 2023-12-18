.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;
.super Ljava/lang/Object;
.source "PersonalRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->inflateView(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

.field final synthetic val$dialog:Lcom/afollestad/materialdialogs/MaterialDialog;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Lcom/afollestad/materialdialogs/MaterialDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 741
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;->val$dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 744
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->hideKeyboard()V

    .line 745
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$7;->val$dialog:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    return-void
.end method
