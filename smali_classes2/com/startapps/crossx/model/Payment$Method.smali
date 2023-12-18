.class public Lcom/startapps/crossx/model/Payment$Method;
.super Ljava/lang/Object;
.source "Payment.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startapps/crossx/model/Payment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Method"
.end annotation


# instance fields
.field public id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field final synthetic this$0:Lcom/startapps/crossx/model/Payment;


# direct methods
.method public constructor <init>(Lcom/startapps/crossx/model/Payment;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/startapps/crossx/model/Payment$Method;->this$0:Lcom/startapps/crossx/model/Payment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
