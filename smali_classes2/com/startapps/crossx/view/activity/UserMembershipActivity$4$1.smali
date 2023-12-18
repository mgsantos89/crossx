.class Lcom/startapps/crossx/view/activity/UserMembershipActivity$4$1;
.super Ljava/lang/Object;
.source "UserMembershipActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->onSuccess(Lretrofit/Response;Lretrofit/Retrofit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4$1;->this$1:Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 303
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4$1;->this$1:Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/UserMembershipActivity$4;->this$0:Lcom/startapps/crossx/view/activity/UserMembershipActivity;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/activity/UserMembershipActivity;->finish()V

    return-void
.end method
