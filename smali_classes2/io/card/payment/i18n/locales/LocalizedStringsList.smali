.class public Lio/card/payment/i18n/locales/LocalizedStringsList;
.super Ljava/lang/Object;
.source "LocalizedStringsList.java"


# static fields
.field public static final ALL_LOCALES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/card/payment/i18n/SupportedLocale<",
            "Lio/card/payment/i18n/StringKey;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/card/payment/i18n/locales/LocalizedStringsList;->ALL_LOCALES:Ljava/util/List;

    .line 17
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsAR;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsAR;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsDA;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsDA;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsDE;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsDE;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsEN;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsEN;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsEN_AU;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsEN_AU;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsEN_GB;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsEN_GB;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsES;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsES;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsES_MX;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsES_MX;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsFR;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsFR;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsHE;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsHE;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsIS;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsIS;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsIT;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsIT;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsJA;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsJA;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsKO;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsKO;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsMS;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsMS;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsNB;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsNB;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsNL;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsNL;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsPL;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsPL;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsPT;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsPT;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsPT_BR;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsPT_BR;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsRU;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsRU;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsSV;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsSV;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsTH;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsTH;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsTR;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsTR;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsZH_HANS;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsZH_HANS;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsZH_HANT;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsZH_HANT;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v1, Lio/card/payment/i18n/locales/LocalizedStringsZH_HANT_TW;

    invoke-direct {v1}, Lio/card/payment/i18n/locales/LocalizedStringsZH_HANT_TW;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
