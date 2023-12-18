.class Lcom/startapps/crossx/view/NotificationActionView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "NotificationActionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/view/NotificationActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/startapps/crossx/view/NotificationActionView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 239
    new-instance v0, Lcom/startapps/crossx/view/NotificationActionView$SavedState$1;

    invoke-direct {v0}, Lcom/startapps/crossx/view/NotificationActionView$SavedState$1;-><init>()V

    sput-object v0, Lcom/startapps/crossx/view/NotificationActionView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/startapps/crossx/view/NotificationActionView$SavedState;->count:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 223
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 235
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    iget p2, p0, Lcom/startapps/crossx/view/NotificationActionView$SavedState;->count:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
