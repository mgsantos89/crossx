.class final Lretrofit/RequestBuilderAction$FieldMap;
.super Lretrofit/RequestBuilderAction;
.source "RequestBuilderAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/RequestBuilderAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FieldMap"
.end annotation


# instance fields
.field private final encoded:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lretrofit/RequestBuilderAction;-><init>()V

    .line 173
    iput-boolean p1, p0, Lretrofit/RequestBuilderAction$FieldMap;->encoded:Z

    return-void
.end method


# virtual methods
.method perform(Lretrofit/RequestBuilder;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 179
    :cond_0
    check-cast p2, Ljava/util/Map;

    .line 180
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lretrofit/RequestBuilderAction$FieldMap;->encoded:Z

    invoke-virtual {p1, v1, v0, v2}, Lretrofit/RequestBuilder;->addFormField(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 183
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Field map contained null key."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method
