.class public Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;
.super Ljava/lang/Object;
.source "ViewStubPlaceholder.java"

# interfaces
.implements Lcom/startapps/crossx/controller/utils/PlaceholdersManager$Placeholder;


# instance fields
.field private view:Landroid/view/View;

.field private viewStub:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1, p2}, Lcom/startapps/crossx/controller/utils/PlaceholderUtils;->findChildOrBust(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    .line 16
    instance-of p2, p1, Landroid/view/ViewStub;

    if-eqz p2, :cond_0

    .line 17
    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->viewStub:Landroid/view/ViewStub;

    goto :goto_0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->view:Landroid/view/View;

    :goto_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->viewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->view:Landroid/view/View;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->view:Landroid/view/View;

    return-object v0
.end method

.method public isViewInflated()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/startapps/crossx/controller/utils/ViewStubPlaceholder;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
