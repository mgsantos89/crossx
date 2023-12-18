.class public Lcom/startapps/crossx/model/MembershipModel$LimitDetail;
.super Ljava/lang/Object;
.source "MembershipModel.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/MembershipModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LimitDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;
    }
.end annotation


# instance fields
.field public count:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "count"
    .end annotation
.end field

.field public descriptions:Lcom/startapps/crossx/model/MembershipModel$LimitDetail$Descriptions;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "descriptions"
    .end annotation
.end field

.field public limitBy:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "limit_by"
    .end annotation
.end field

.field public limitType:Lcom/startapps/crossx/model/MembershipModel$LimitType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapps/crossx/model/MembershipModel;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/MembershipModel;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/startapps/crossx/model/MembershipModel$LimitDetail;->this$0:Lcom/startapps/crossx/model/MembershipModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
