.class Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe$1;
.super Ljava/lang/Object;
.source "RxJavaCallAdapterFactory.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;

.field final synthetic val$call:Lretrofit/Call;


# direct methods
.method constructor <init>(Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;Lretrofit/Call;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe$1;->this$0:Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe;

    iput-object p2, p0, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe$1;->val$call:Lretrofit/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .line 102
    iget-object v0, p0, Lretrofit/RxJavaCallAdapterFactory$CallOnSubscribe$1;->val$call:Lretrofit/Call;

    invoke-interface {v0}, Lretrofit/Call;->cancel()V

    return-void
.end method
