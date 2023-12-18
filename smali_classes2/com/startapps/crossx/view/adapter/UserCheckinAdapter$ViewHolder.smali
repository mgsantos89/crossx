.class public Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;
.super Lcom/startapps/crossx/model/holder/AbstractHolder;
.source "UserCheckinAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public ageUser:Landroid/widget/TextView;

.field public canceled:Landroid/widget/TextView;

.field public checkin:Landroid/widget/TextView;

.field public gympass:Landroid/widget/TextView;

.field public headerUser:Landroid/view/View;

.field public imageView:Landroid/widget/ImageView;

.field public nameUser:Landroid/widget/TextView;

.field public noshow:Landroid/widget/TextView;

.field public reserved:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

.field public waiting:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;Landroid/view/View;)V
    .locals 3

    .line 122
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->this$0:Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;

    .line 123
    invoke-direct {p0, p2}, Lcom/startapps/crossx/model/holder/AbstractHolder;-><init>(Landroid/view/View;)V

    .line 125
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->nameUser:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->ageUser:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 127
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->checkin:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->gympass:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->noshow:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/drivemode/android/typeface/TypefaceHelper;->getInstance()Lcom/drivemode/android/typeface/TypefaceHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->reserved:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/drivemode/android/typeface/TypefaceHelper;->setTypeface(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAgeUser()Landroid/widget/TextView;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->ageUser:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCanceled()Landroid/widget/TextView;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->canceled:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCheckin()Landroid/widget/TextView;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->checkin:Landroid/widget/TextView;

    return-object v0
.end method

.method public getGympass()Landroid/widget/TextView;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->gympass:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHeaderUser()Landroid/view/View;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->headerUser:Landroid/view/View;

    return-object v0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameUser()Landroid/widget/TextView;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->nameUser:Landroid/widget/TextView;

    return-object v0
.end method

.method public getNoshow()Landroid/widget/TextView;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->noshow:Landroid/widget/TextView;

    return-object v0
.end method

.method public getReserved()Landroid/widget/TextView;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->reserved:Landroid/widget/TextView;

    return-object v0
.end method

.method public getWaiting()Landroid/widget/TextView;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->waiting:Landroid/widget/TextView;

    return-object v0
.end method

.method public setAgeUser(Landroid/widget/TextView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->ageUser:Landroid/widget/TextView;

    return-void
.end method

.method public setCanceled(Landroid/widget/TextView;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->canceled:Landroid/widget/TextView;

    return-void
.end method

.method public setCheckin(Landroid/widget/TextView;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->checkin:Landroid/widget/TextView;

    return-void
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setNameUser(Landroid/widget/TextView;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->nameUser:Landroid/widget/TextView;

    return-void
.end method

.method public setNoshow(Landroid/widget/TextView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->noshow:Landroid/widget/TextView;

    return-void
.end method

.method public setReserved(Landroid/widget/TextView;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/startapps/crossx/view/adapter/UserCheckinAdapter$ViewHolder;->reserved:Landroid/widget/TextView;

    return-void
.end method
