.class Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;
.super Ljava/lang/Object;
.source "PersonalRecordActivity.java"

# interfaces
.implements Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->showListCategorie(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

.field final synthetic val$btSetCategorie:Landroid/widget/Button;

.field final synthetic val$categories:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;Landroid/widget/Button;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 637
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    iput-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;->val$btSetCategorie:Landroid/widget/Button;

    iput-object p3, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;->val$categories:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    .line 640
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;->this$0:Lcom/startapps/crossx/view/activity/PersonalRecordActivity;

    add-int/lit8 p2, p3, 0x1

    invoke-static {p1, p2}, Lcom/startapps/crossx/view/activity/PersonalRecordActivity;->-$$Nest$fputcategoryID(Lcom/startapps/crossx/view/activity/PersonalRecordActivity;I)V

    .line 641
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;->val$btSetCategorie:Landroid/widget/Button;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PersonalRecordActivity$6;->val$categories:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
