.class final Lretrofit/RequestBuilderAction$Body;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Body"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lretrofit/RequestBuilderAction;"
    }
.end annotation


# instance fields
.field private final converter:Lretrofit/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit/Converter<",
            "TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit/Converter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/Converter<",
            "TT;",
            "Lcom/squareup/okhttp/RequestBody;",
            ">;)V"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 264
    iput-object p1, p0, Lretrofit/RequestBuilderAction$Body;->converter:Lretrofit/Converter;

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 274
    :try_start_0
    iget-object v0, p0, Lretrofit/RequestBuilderAction$Body;->converter:Lretrofit/Converter;

    invoke-interface {v0, p2}, Lretrofit/Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/RequestBody;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    invoke-virtual {p1, v0}, Lretrofit/RequestBuilder;->setBody(Lcom/squareup/okhttp/RequestBody;)V

    return-void

    .line 276
    :catch_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to convert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " to RequestBody"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 269
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Body parameter value must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
