.class Lcom/startapps/crossx/view/fragment/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/fragment/ProfileFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/fragment/ProfileFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->onCLickPersonalRecordListener:Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/startapps/crossx/view/fragment/ProfileFragment$1;->this$0:Lcom/startapps/crossx/view/fragment/ProfileFragment;

    iget-object p1, p1, Lcom/startapps/crossx/view/fragment/ProfileFragment;->onCLickPersonalRecordListener:Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;

    invoke-interface {p1}, Lcom/startapps/crossx/Interfaces/OnCLickPersonalRecordListener;->OnCLickPersonalRecord()V

    :cond_0
    return-void
.end method
