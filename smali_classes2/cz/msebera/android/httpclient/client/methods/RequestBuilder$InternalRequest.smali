.class Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;
.super Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz/msebera/android/httpclient/client/methods/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalRequest"
.end annotation


# instance fields
.field private final method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcz/msebera/android/httpclient/client/methods/HttpRequestBase;-><init>()V

    .line 325
    iput-object p1, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lcz/msebera/android/httpclient/client/methods/RequestBuilder$InternalRequest;->method:Ljava/lang/String;

    return-object v0
.end method
