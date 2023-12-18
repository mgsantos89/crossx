.class Lcom/startapps/crossx/view/activity/PostActivity$2;
.super Ljava/lang/Object;
.source "PostActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startapps/crossx/view/activity/PostActivity;->setupScroll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/startapps/crossx/view/activity/PostActivity;


# direct methods
.method constructor <init>(Lcom/startapps/crossx/view/activity/PostActivity;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity$2;->this$0:Lcom/startapps/crossx/view/activity/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 214
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x42

    const/4 p3, 0x0

    if-ne p1, p2, :cond_0

    .line 215
    iget-object p1, p0, Lcom/startapps/crossx/view/activity/PostActivity$2;->this$0:Lcom/startapps/crossx/view/activity/PostActivity;

    iget-object p1, p1, Lcom/startapps/crossx/view/activity/PostActivity;->scroll:Landroid/widget/ScrollView;

    iget-object p2, p0, Lcom/startapps/crossx/view/activity/PostActivity$2;->this$0:Lcom/startapps/crossx/view/activity/PostActivity;

    iget-object p2, p2, Lcom/startapps/crossx/view/activity/PostActivity;->textPost:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getBottom()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    :cond_0
    return p3
.end method
