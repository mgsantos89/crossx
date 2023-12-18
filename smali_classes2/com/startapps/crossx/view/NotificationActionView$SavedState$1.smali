.class Lcom/startapps/crossx/view/NotificationActionView$SavedState$1;
.super Ljava/lang/Object;
.source "NotificationActionView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/NotificationActionView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/startapps/crossx/view/NotificationActionView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/startapps/crossx/view/NotificationActionView$SavedState;
    .locals 1

    .line 244
    new-instance v0, Lcom/startapps/crossx/view/NotificationActionView$SavedState;

    invoke-direct {v0, p1}, Lcom/startapps/crossx/view/NotificationActionView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/startapps/crossx/view/NotificationActionView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/startapps/crossx/view/NotificationActionView$SavedState;
    .locals 0

    .line 249
    new-array p1, p1, [Lcom/startapps/crossx/view/NotificationActionView$SavedState;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/startapps/crossx/view/NotificationActionView$SavedState$1;->newArray(I)[Lcom/startapps/crossx/view/NotificationActionView$SavedState;

    move-result-object p1

    return-object p1
.end method
