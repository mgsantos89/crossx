.class public Lcom/startapps/crossx/rest/error/ResponseError;
.super Ljava/lang/Object;
.source "ResponseError.java"


# instance fields
.field private code:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
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
.method public code()I
    .locals 1

    .line 19
    iget v0, p0, Lcom/startapps/crossx/rest/error/ResponseError;->code:I

    return v0
.end method

.method public error()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/startapps/crossx/rest/error/ResponseError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/startapps/crossx/rest/error/ResponseError;->code:I

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/startapps/crossx/rest/error/ResponseError;->message:Ljava/lang/String;

    return-void
.end method
