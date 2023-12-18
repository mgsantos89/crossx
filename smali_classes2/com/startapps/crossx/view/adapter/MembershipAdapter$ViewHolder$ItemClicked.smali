.class Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;
.super Ljava/lang/Object;
.source "MembershipAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClicked"
.end annotation


# instance fields
.field memberships:Lcom/startapps/crossx/model/Membership;

.field final synthetic this$1:Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;Lcom/startapps/crossx/model/Membership;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;->this$1:Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;->memberships:Lcom/startapps/crossx/model/Membership;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;->this$1:Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;

    iget-object v0, v0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/MembershipAdapter;

    invoke-static {v0}, Lcom/startapps/crossx/view/adapter/MembershipAdapter;->-$$Nest$fgetmembershipAdapterClickListener(Lcom/startapps/crossx/view/adapter/MembershipAdapter;)Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/startapps/crossx/view/adapter/MembershipAdapter$ViewHolder$ItemClicked;->memberships:Lcom/startapps/crossx/model/Membership;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0a00b7

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/startapps/crossx/view/adapter/MembershipAdapter$MembershipAdapterClickListener;->onItemClick(Lcom/startapps/crossx/model/Membership;Z)V

    return-void
.end method
