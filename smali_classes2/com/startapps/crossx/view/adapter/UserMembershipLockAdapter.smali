.class public Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;
.super Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;
.source "UserMembershipLockAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startapps/crossx/view/adapter/FasterArrayAdapter<",
        "Lcom/startapps/crossx/model/UserMembershipLockModel;",
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
            "Lcom/startapps/crossx/model/UserMembershipLockModel;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/startapps/crossx/view/adapter/FasterArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 22
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected fillHolder(Ljava/lang/Object;ILandroid/view/ViewGroup;)V
    .locals 4

    .line 37
    check-cast p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;

    .line 38
    invoke-virtual {p0, p2}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/startapps/crossx/model/UserMembershipLockModel;

    .line 40
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->daysCount:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/startapps/crossx/model/UserMembershipLockModel;->days:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p3, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateFrom:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "De: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/startapps/crossx/model/UserMembershipLockModel;->dateFrom:Ljava/lang/String;

    const-string/jumbo v2, "yyyy-MM-dd"

    const-string v3, "dd/MM/yyyy"

    invoke-static {v1, v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p1, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;->dateTo:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "At\u00e9: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/startapps/crossx/model/UserMembershipLockModel;->dateTo:Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lcom/startapps/crossx/controller/utils/DateUtility;->formatStringDate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    .line 27
    new-instance v0, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;

    invoke-direct {v0, p0, p1}, Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter$ViewHolderUserMembershipLock;-><init>(Lcom/startapps/crossx/view/adapter/UserMembershipLockAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method protected layoutResourceForItem()I
    .locals 1

    const v0, 0x7f0d00b3

    return v0
.end method
