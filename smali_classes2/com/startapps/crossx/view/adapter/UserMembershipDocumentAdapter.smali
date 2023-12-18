.class public Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserMembershipDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserMembershipDocument;",
        ">;"
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/UserMembershipDocument;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 5

    .line 37
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;

    .line 38
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserMembershipDocument;

    .line 43
    iget p3, p2, Lcom/startapps/crossx/model/UserMembershipDocument;->signed:I

    const v0, 0x7f1200bd

    const v1, 0x7f0600b0

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    const v3, 0x7f0600b1

    if-eq p3, v2, :cond_1

    const/4 v4, 0x2

    if-eq p3, v4, :cond_0

    goto :goto_1

    :cond_0
    const v0, 0x7f1200bc

    goto :goto_0

    :cond_1
    const v0, 0x7f1200be

    :goto_0
    move v1, v3

    .line 62
    :cond_2
    :goto_1
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->status:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/GradientDrawable;

    .line 63
    invoke-virtual {p0}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 65
    iget p3, p2, Lcom/startapps/crossx/model/UserMembershipDocument;->signed:I

    const-string v1, "dd/MM/yyyy"

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    if-ne p3, v2, :cond_3

    iget-object p2, p2, Lcom/startapps/crossx/model/UserMembershipDocument;->signedDate:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object p2, p2, Lcom/startapps/crossx/model/UserMembershipDocument;->createdAt:Ljava/lang/String;

    :goto_2
    invoke-static {p2, v3, v1}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 66
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->date:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;->statusLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 27
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter$ViewHolderUserMembershipDocument;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipDocumentAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00b2

    return v0
.end method
