.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;
.super Ljava/lang/Object;
.source "PersonalRecordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->inflateComponents(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;Lcom/startapps/crossx/model/PersonalRecordsDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

.field final synthetic val$btSetCategorie:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/Button;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 514
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;->val$btSetCategorie:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 517
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iget-object v0, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$3;->val$btSetCategorie:Landroid/widget/Button;

    invoke-static {p1, v0}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$mshowListCategorie(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/Button;)V

    return-void
.end method
