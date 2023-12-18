.class Lcom/startapps/crossx/view/activity/MembershipActivity$1;
.super Ljava/lang/Object;
.source "MembershipActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/MembershipActivity;->showError(Lcom/startapps/crossx/rest/error/CrossXError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/MembershipActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/MembershipActivity;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/MembershipActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 103
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/MembershipActivity$1;->this$0:Lcom/startapps/crossx/view/activity/MembershipActivity;

    invoke-static {p1}, Lcom/startapps/crossx/view/activity/MembershipActivity;->-$$Nest$fgetpresenter(Lcom/startapps/crossx/view/activity/MembershipActivity;)Lcom/startapps/crossx/classes/presenter/MembershipPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/startapps/crossx/classes/presenter/MembershipPresenter;->getAccessionList()V

    return-void
.end method
