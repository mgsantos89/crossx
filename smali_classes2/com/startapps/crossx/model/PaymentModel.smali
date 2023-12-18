.class public Lcom/startapps/crossx/model/PaymentModel;
.super Ljava/lang/Object;
.source "PaymentModel.java"


# instance fields
.field public dueDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "due_date"
    .end annotation
.end field

.field public productType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_type"
    .end annotation
.end field

.field public products:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "products"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startapps/crossx/model/Product;",
            ">;"
        }
    .end annotation
.end field

.field public remainingValue:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remaining_value"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpirationDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/startapps/crossx/model/PaymentModel;->dueDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/startapps/crossx/controller/utils/DateUtility;->getDateFull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f120117

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
