.class public Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;
.super Ljava/lang/Object;
.source "MembershipModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/MembershipModel$LimitDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Descriptions"
.end annotation


# instance fields
.field public counts:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "counts"
    .end annotation
.end field

.field final synthetic this$1:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/MembershipModel$LimitDetail;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;->this$1:Lcom/startapps/crossx/model/MembershipModel$LimitDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
