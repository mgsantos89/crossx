.class public Lcom/startapps/crossx/model/UserMembership$CheckinsCount;
.super Ljava/lang/Object;
.source "UserMembership.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/UserMembership;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckinsCount"
.end annotation


# instance fields
.field public perLimit:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "per_limit"
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapps/crossx/model/UserMembership;

.field public total:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "total"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/UserMembership;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/startapps/crossx/model/UserMembership$CheckinsCount;->this$0:Lcom/startapps/crossx/model/UserMembership;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
