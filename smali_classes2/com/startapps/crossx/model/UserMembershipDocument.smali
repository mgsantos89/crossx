.class public Lcom/startapps/crossx/model/UserMembershipDocument;
.super Ljava/lang/Object;
.source "UserMembershipDocument.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public createdAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created_at"
    .end annotation
.end field

.field public file:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file"
    .end annotation
.end field

.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public signed:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signed"
    .end annotation
.end field

.field public signedDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signed_date"
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
