.class public final Lretrofit/RxJavaCallAdapterFactory;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lretrofit/CallAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;,
        Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;,
        Lretrofit/RxJavaCallAdapterFactory$ResponseCallAdapter;,
        Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lretrofit/RxJavaCallAdapterFactory;
    .locals 1

    .line 36
    new-instance v0, Lretrofit/RxJavaCallAdapterFactory;

    invoke-direct {v0}, Lretrofit/RxJavaCallAdapterFactory;-><init>()V

    return-object v0
.end method

.method private getCallAdapter(Ljava/lang/reflect/Type;)Lretrofit/CallAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lretrofit/CallAdapter<",
            "Lrx/Observable<",
            "*>;>;"
        }
    .end annotation

    .line 65
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p1}, Lretrofit/Utils;->getSingleParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const-class v1, Lretrofit/Response;

    if-ne v0, v1, :cond_1

    .line 68
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p1}, Lretrofit/Utils;->getSingleParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 73
    new-instance v0, Lretrofit/RxJavaCallAdapterFactory$ResponseCallAdapter;

    invoke-direct {v0, p1}, Lretrofit/RxJavaCallAdapterFactory$ResponseCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Response must be parameterized as Response<Foo> or Response<? extends Foo>"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_1
    const-class v1, Lretrofit/Result;

    if-ne v0, v1, :cond_3

    .line 77
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_2

    .line 81
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {p1}, Lretrofit/Utils;->getSingleParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 82
    new-instance v0, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;

    invoke-direct {v0, p1}, Lretrofit/RxJavaCallAdapterFactory$ResultCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Result must be parameterized as Result<Foo> or Result<? extends Foo>"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_3
    new-instance v0, Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;

    invoke-direct {v0, p1}, Lretrofit/RxJavaCallAdapterFactory$SimpleCallAdapter;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit/Retrofit;)Lretrofit/CallAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit/Retrofit;",
            ")",
            "Lretrofit/CallAdapter<",
            "*>;"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Lretrofit/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-string p3, "rx.Single"

    .line 45
    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 46
    const-class v0, Lrx/Observable;

    if-eq p2, v0, :cond_0

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 49
    :cond_0
    instance-of p2, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez p2, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "Single"

    goto :goto_0

    :cond_1
    const-string p1, "Observable"

    .line 51
    :goto_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " return type must be parameterized as "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "<Foo> or "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "<? extends Foo>"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 55
    :cond_2
    invoke-direct {p0, p1}, Lretrofit/RxJavaCallAdapterFactory;->getCallAdapter(Ljava/lang/reflect/Type;)Lretrofit/CallAdapter;

    move-result-object p1

    if-eqz p3, :cond_3

    .line 59
    invoke-static {p1}, Lretrofit/SingleHelper;->makeSingle(Lretrofit/CallAdapter;)Lretrofit/CallAdapter;

    move-result-object p1

    :cond_3
    return-object p1
.end method
