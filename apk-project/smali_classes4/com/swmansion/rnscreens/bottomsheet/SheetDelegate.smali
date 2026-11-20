.class public final Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;
.super Ljava/lang/Object;
.source "SheetDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$Companion;,
        Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;,
        Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;,
        Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;,
        Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSheetDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SheetDelegate.kt\ncom/swmansion/rnscreens/bottomsheet/SheetDelegate\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,586:1\n1#2:587\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 b2\u00020\u00012\u00020\u0002:\u0004_`abB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010%\u001a\u00020&H\u0002J\u0018\u0010\'\u001a\u00020(2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0016J\u0008\u0010-\u001a\u00020(H\u0002J\u0008\u0010.\u001a\u00020(H\u0002J\u0008\u0010/\u001a\u00020(H\u0002J\u0010\u00100\u001a\u00020(2\u0006\u00101\u001a\u00020\u000fH\u0002J\u001b\u00102\u001a\u00020(2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001eH\u0000\u00a2\u0006\u0002\u00084J5\u00105\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001e2\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001e2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u00106\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u00087J\u0015\u00108\u001a\u00020\u000f2\u0006\u00109\u001a\u00020\u000fH\u0000\u00a2\u0006\u0002\u0008:J\u0018\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020&2\u0006\u0010>\u001a\u00020<H\u0016J\u0010\u0010?\u001a\u00020\n2\u0006\u0010@\u001a\u00020\u000fH\u0002J\u000f\u0010A\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0002\u0010BJ\u000f\u0010C\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0002\u0010BJ\u0015\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0000\u00a2\u0006\u0002\u0008HJ\u0015\u0010I\u001a\u00020E2\u0006\u0010F\u001a\u00020GH\u0000\u00a2\u0006\u0002\u0008JJ \u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020N2\u0006\u0010O\u001a\u00020N2\u0006\u0010P\u001a\u00020QH\u0002J\u0008\u0010R\u001a\u00020LH\u0002J\u0010\u0010S\u001a\u00020L2\u0006\u0010T\u001a\u00020UH\u0002J\u0010\u0010V\u001a\u00020(2\u0006\u0010W\u001a\u00020NH\u0002J\u0015\u0010X\u001a\u00020(2\u0006\u0010>\u001a\u00020<H\u0000\u00a2\u0006\u0002\u0008YJ \u0010Z\u001a\u00020(2\u0006\u0010[\u001a\u00020\\2\u0006\u0010]\u001a\u00020\n2\u0006\u0010^\u001a\u00020\"H\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R$\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f@BX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0014R\u0012\u0010\u0019\u001a\u00060\u001aR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00060\u001cR\u00020\u0000X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u001e8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0014\u0010!\u001a\u00020\"8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$\u00a8\u0006c"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;",
        "Landroidx/lifecycle/LifecycleEventObserver;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "screen",
        "Lcom/swmansion/rnscreens/Screen;",
        "<init>",
        "(Lcom/swmansion/rnscreens/Screen;)V",
        "getScreen",
        "()Lcom/swmansion/rnscreens/Screen;",
        "isKeyboardVisible",
        "",
        "keyboardState",
        "Lcom/swmansion/rnscreens/KeyboardState;",
        "isSheetAnimationInProgress",
        "lastTopInset",
        "",
        "lastKeyboardBottomOffset",
        "value",
        "lastStableDetentIndex",
        "getLastStableDetentIndex",
        "()I",
        "lastStableState",
        "getLastStableState$annotations",
        "()V",
        "getLastStableState",
        "sheetStateObserver",
        "Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;",
        "keyboardHandlerCallback",
        "Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;",
        "sheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "getSheetBehavior",
        "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "stackFragment",
        "Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "getStackFragment",
        "()Lcom/swmansion/rnscreens/ScreenStackFragment;",
        "requireDecorView",
        "Landroid/view/View;",
        "onStateChanged",
        "",
        "source",
        "Landroidx/lifecycle/LifecycleOwner;",
        "event",
        "Landroidx/lifecycle/Lifecycle$Event;",
        "handleHostFragmentOnStart",
        "handleHostFragmentOnResume",
        "handleHostFragmentOnPause",
        "onSheetStateChanged",
        "newState",
        "updateBottomSheetMetrics",
        "behavior",
        "updateBottomSheetMetrics$react_native_screens_release",
        "configureBottomSheetBehaviour",
        "selectedDetentIndex",
        "configureBottomSheetBehaviour$react_native_screens_release",
        "computeSheetOffsetYWithIMEPresent",
        "keyboardHeight",
        "computeSheetOffsetYWithIMEPresent$react_native_screens_release",
        "onApplyWindowInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "v",
        "insets",
        "shouldDismissSheetInState",
        "state",
        "tryResolveSafeAreaSpaceForSheet",
        "()Ljava/lang/Integer;",
        "tryResolveContainerHeight",
        "createSheetEnterAnimator",
        "Landroid/animation/Animator;",
        "sheetAnimationContext",
        "Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;",
        "createSheetEnterAnimator$react_native_screens_release",
        "createSheetExitAnimator",
        "createSheetExitAnimator$react_native_screens_release",
        "createDimmingViewAlphaAnimator",
        "Landroid/animation/ValueAnimator;",
        "from",
        "",
        "to",
        "dimmingDelegate",
        "Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;",
        "createSheetSlideInAnimator",
        "createSheetSlideOutAnimator",
        "coordinatorLayout",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
        "updateSheetTranslationY",
        "baseTranslationY",
        "handleKeyboardInsetsProgress",
        "handleKeyboardInsetsProgress$react_native_screens_release",
        "attachCommonListeners",
        "animatorSet",
        "Landroid/animation/AnimatorSet;",
        "isEnter",
        "screenStackFragment",
        "KeyboardHandler",
        "SheetStateObserver",
        "SheetAnimationContext",
        "Companion",
        "react-native-screens_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$Companion;

.field public static final TAG:Ljava/lang/String; = "SheetDelegate"


# instance fields
.field private isKeyboardVisible:Z

.field private isSheetAnimationInProgress:Z

.field private final keyboardHandlerCallback:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

.field private keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

.field private lastKeyboardBottomOffset:I

.field private lastStableDetentIndex:I

.field private lastStableState:I

.field private lastTopInset:I

.field private final screen:Lcom/swmansion/rnscreens/Screen;

.field private final sheetStateObserver:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;


# direct methods
.method public static synthetic $r8$lambda$EjEgggbSPvmXR6YiuaQK59ECKoM(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createDimmingViewAlphaAnimator$lambda$23$lambda$22(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IWA8w1mTUUqKuIHcQfGoBoa8Q3M(Ljava/lang/Number;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createSheetSlideInAnimator$lambda$25(Ljava/lang/Number;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SUNFBYiWe1i9I9TVcTilmTq-cQQ(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createSheetSlideInAnimator$lambda$27$lambda$26(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iMC7NZluKm6ylLHGuumOHkF2rKI(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createSheetSlideOutAnimator$lambda$29$lambda$28(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zjU-I02rzOegL4kSpD79nnHXTqE(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Ljava/lang/Number;)F
    .locals 0

    invoke-static {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createSheetSlideInAnimator$lambda$24(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Ljava/lang/Number;)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->Companion:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/swmansion/rnscreens/Screen;)V
    .locals 2

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    .line 36
    sget-object v0, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast v0, Lcom/swmansion/rnscreens/KeyboardState;

    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    .line 43
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableDetentIndex:I

    .line 48
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->sheetStateFromIndex$react_native_screens_release(I)I

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableState:I

    .line 53
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;-><init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->sheetStateObserver:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;

    .line 54
    new-instance v1, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;-><init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V

    iput-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardHandlerCallback:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

    .line 67
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/swmansion/rnscreens/ScreenStackFragment;

    .line 68
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/LifecycleObserver;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 70
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "[RNScreens] Sheet delegate accepts screen with initialized sheet behaviour only."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic access$onSheetStateChanged(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->onSheetStateChanged(I)V

    return-void
.end method

.method public static final synthetic access$setSheetAnimationInProgress$p(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->isSheetAnimationInProgress:Z

    return-void
.end method

.method private final attachCommonListeners(Landroid/animation/AnimatorSet;ZLcom/swmansion/rnscreens/ScreenStackFragment;)V
    .locals 3

    .line 503
    new-instance v0, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;

    .line 504
    check-cast p3, Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;

    .line 505
    new-instance v1, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;

    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-direct {v1, v2}, Lcom/swmansion/rnscreens/events/ScreenEventEmitter;-><init>(Lcom/swmansion/rnscreens/Screen;)V

    if-eqz p2, :cond_0

    .line 507
    sget-object p2, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->ENTER:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    goto :goto_0

    .line 509
    :cond_0
    sget-object p2, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;->EXIT:Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;

    .line 503
    :goto_0
    invoke-direct {v0, p3, v1, p2}, Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate;-><init>(Lcom/swmansion/rnscreens/ScreenStackFragmentWrapper;Lcom/swmansion/rnscreens/events/ScreenEventEmitter;Lcom/swmansion/rnscreens/events/ScreenAnimationDelegate$AnimationType;)V

    check-cast v0, Landroid/animation/Animator$AnimatorListener;

    .line 502
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    new-instance p2, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$attachCommonListeners$1;

    invoke-direct {p2, p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$attachCommonListeners$1;-><init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V

    check-cast p2, Landroid/animation/Animator$AnimatorListener;

    .line 514
    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public static synthetic configureBottomSheetBehaviour$react_native_screens_release$default(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;IILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 152
    sget-object p2, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast p2, Lcom/swmansion/rnscreens/KeyboardState;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 153
    iget p3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableDetentIndex:I

    .line 150
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->configureBottomSheetBehaviour$react_native_screens_release(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;I)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p0

    return-object p0
.end method

.method private final createDimmingViewAlphaAnimator(FFLcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    .line 449
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 450
    new-instance p2, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda3;

    invoke-direct {p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda3;-><init>(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 449
    const-string p2, "apply(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final createDimmingViewAlphaAnimator$lambda$23$lambda$22(Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 452
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getDimmingView$react_native_screens_release()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private final createSheetSlideInAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 458
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V

    .line 459
    new-instance v1, Lcom/swmansion/rnscreens/transition/ExternalBoundaryValuesEvaluator;

    new-instance v2, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/swmansion/rnscreens/transition/ExternalBoundaryValuesEvaluator;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 461
    check-cast v1, Landroid/animation/TypeEvaluator;

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda2;-><init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final createSheetSlideInAnimator$lambda$24(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Ljava/lang/Number;)F
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private static final createSheetSlideInAnimator$lambda$25(Ljava/lang/Number;)Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    .line 459
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static final createSheetSlideInAnimator$lambda$27$lambda$26(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->updateSheetTranslationY(F)V

    return-void
.end method

.method private final createSheetSlideOutAnimator(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 467
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getTranslationY()F

    move-result v0

    sub-float/2addr p1, v0

    const/4 v0, 0x2

    .line 469
    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 470
    new-instance v0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$$ExternalSyntheticLambda4;-><init>(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 469
    const-string v0, "apply(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private static final createSheetSlideOutAnimator$lambda$29$lambda$28(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->updateSheetTranslationY(F)V

    return-void
.end method

.method public static synthetic getLastStableState$annotations()V
    .locals 0

    return-void
.end method

.method private final getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    return-object v0
.end method

.method private final getStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.swmansion.rnscreens.ScreenStackFragment"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/swmansion/rnscreens/ScreenStackFragment;

    return-object v0
.end method

.method private final handleHostFragmentOnPause()V
    .locals 2

    .line 96
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    move-object v1, p0

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->removeOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private final handleHostFragmentOnResume()V
    .locals 2

    .line 92
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    move-object v1, p0

    check-cast v1, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->addOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private final handleHostFragmentOnStart()V
    .locals 2

    .line 88
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->requireDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->registerOnView(Landroid/view/View;)Z

    return-void
.end method

.method private final onSheetStateChanged(I)V
    .locals 3

    .line 100
    sget-object v0, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->INSTANCE:Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtils;->isStateStable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iput p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableState:I

    .line 105
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->indexFromSheetState$react_native_screens_release(I)I

    move-result v1

    .line 104
    iput v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableDetentIndex:I

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    iget v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableDetentIndex:I

    invoke-virtual {v1, v2, v0}, Lcom/swmansion/rnscreens/Screen;->onSheetDetentChanged$react_native_screens_release(IZ)V

    .line 112
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->shouldDismissSheetInState(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->getStackFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/ScreenStackFragment;->dismissSelf$react_native_screens_release()V

    :cond_1
    return-void
.end method

.method private final requireDecorView()Landroid/view/View;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "getDecorView(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] Attempt to access activity on detached context"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final shouldDismissSheetInState(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final tryResolveContainerHeight()Ljava/lang/Integer;
    .locals 4

    .line 384
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getContainer()Lcom/swmansion/rnscreens/ScreenContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getReactContext()Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Lcom/facebook/react/uimanager/ThemedReactContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 390
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 388
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 392
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 394
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    .line 395
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ThemedReactContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_3

    .line 396
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 397
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 398
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 399
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v3
.end method

.method private final tryResolveSafeAreaSpaceForSheet()Ljava/lang/Integer;
    .locals 2

    .line 376
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveContainerHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastTopInset:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final updateSheetTranslationY(F)V
    .locals 2

    .line 477
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastKeyboardBottomOffset:I

    .line 478
    invoke-virtual {p0, v0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->computeSheetOffsetYWithIMEPresent$react_native_screens_release(I)I

    move-result v0

    int-to-float v0, v0

    .line 480
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    sub-float/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/swmansion/rnscreens/Screen;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public final computeSheetOffsetYWithIMEPresent$react_native_screens_release(I)I
    .locals 8

    .line 298
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetShouldOverflowTopInset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveContainerHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveSafeAreaSpaceForSheet()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 303
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-static {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->isSheetFitToContents(Lcom/swmansion/rnscreens/Screen;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getContentWrapper()Lcom/swmansion/rnscreens/ScreenContentWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContentWrapper;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 305
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    .line 306
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 309
    :cond_2
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    .line 311
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->highest$react_native_screens_release()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lkotlin/ranges/RangesKt;->coerceIn(DDD)D

    move-result-wide v1

    .line 312
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 313
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v1

    .line 315
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1

    .line 299
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "[RNScreens] Failed to find window height during bottom sheet behaviour configuration"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final configureBottomSheetBehaviour$react_native_screens_release(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;I)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;",
            "Lcom/swmansion/rnscreens/KeyboardState;",
            "I)",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;"
        }
    .end annotation

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyboardState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetShouldOverflowTopInset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveContainerHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveSafeAreaSpaceForSheet()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_13

    const/4 v1, 0x1

    .line 161
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 162
    invoke-virtual {p1, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setDraggable(Z)V

    .line 166
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->sheetStateObserver:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetStateObserver;

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {p1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 168
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getFooter()Lcom/swmansion/rnscreens/ScreenFooter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/swmansion/rnscreens/ScreenFooter;->registerWithSheetBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 171
    :cond_1
    instance-of v2, p2, Lcom/swmansion/rnscreens/KeyboardNotVisible;

    const/4 v3, 0x0

    const-string v4, ". Expected at most 3."

    const-string v5, "[RNScreens] Invalid detent count "

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-eqz v2, :cond_6

    .line 172
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result p2

    if-eq p2, v1, :cond_4

    if-eq p2, v6, :cond_3

    if-ne p2, v7, :cond_2

    .line 197
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->sheetStateFromIndex$react_native_screens_release(I)I

    move-result p2

    .line 200
    iget-object p3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p3}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->firstHeight$react_native_screens_release(I)I

    move-result p3

    .line 201
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->halfExpandedRatio$react_native_screens_release()F

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeight$react_native_screens_release(I)I

    move-result v2

    .line 203
    iget-object v3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v4, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastTopInset:I

    invoke-virtual {v3, v0, v4}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->expandedOffsetFromTop$react_native_screens_release(II)I

    move-result v0

    .line 197
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 200
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 201
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 203
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v3, p1

    .line 195
    invoke-static/range {v3 .. v8}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useThreeDetents(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    return-object p1

    .line 206
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 206
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 187
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->sheetStateFromIndex$react_native_screens_release(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 190
    iget-object p3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p3}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->firstHeight$react_native_screens_release(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 191
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeight$react_native_screens_release(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 185
    invoke-static {v0, p2, p3, p1}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useTwoDetents(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    return-object p1

    :cond_4
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 176
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-static {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->isSheetFitToContents(Lcom/swmansion/rnscreens/Screen;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 177
    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p1

    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeightForFitToContents$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;)I

    move-result p1

    goto :goto_1

    .line 179
    :cond_5
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeight$react_native_screens_release(I)I

    move-result p1

    .line 181
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {v0, p1, v3, v6, p2}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useSingleDetent$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0

    :cond_6
    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    .line 212
    instance-of p3, p2, Lcom/swmansion/rnscreens/KeyboardVisible;

    if-eqz p3, :cond_d

    .line 213
    check-cast p2, Lcom/swmansion/rnscreens/KeyboardVisible;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/KeyboardVisible;->getHeight()I

    move-result p1

    if-eqz p1, :cond_7

    move v3, v1

    .line 215
    :cond_7
    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p1

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result p1

    if-eq p1, v1, :cond_c

    if-eq p1, v6, :cond_a

    if-ne p1, v7, :cond_9

    if-eqz v3, :cond_8

    .line 237
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v6, 0x1e

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 236
    invoke-static/range {v0 .. v7}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useThreeDetents$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_2

    :cond_8
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 240
    invoke-static/range {v0 .. v7}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useThreeDetents$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 242
    :goto_2
    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardHandlerCallback:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-object v0

    .line 245
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 246
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 245
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    if-eqz v3, :cond_b

    .line 225
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 224
    invoke-static/range {v0 .. v5}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useTwoDetents$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_3

    :cond_b
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 228
    invoke-static/range {v0 .. v5}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useTwoDetents$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 230
    :goto_3
    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardHandlerCallback:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-object v0

    .line 218
    :cond_c
    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardHandlerCallback:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

    check-cast p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    return-object v0

    .line 251
    :cond_d
    instance-of p2, p2, Lcom/swmansion/rnscreens/KeyboardDidHide;

    if-eqz p2, :cond_12

    .line 256
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardHandlerCallback:Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$KeyboardHandler;

    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 257
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result p2

    if-eq p2, v1, :cond_10

    if-eq p2, v6, :cond_f

    if-ne p2, v7, :cond_e

    .line 277
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->firstHeight$react_native_screens_release(I)I

    move-result p2

    .line 278
    iget-object p3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p3}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p3

    invoke-virtual {p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->halfExpandedRatio$react_native_screens_release()F

    move-result p3

    .line 279
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeight$react_native_screens_release(I)I

    move-result v1

    .line 280
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastTopInset:I

    invoke-virtual {v2, p1, v3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->expandedOffsetFromTop$react_native_screens_release(II)I

    move-result p1

    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 279
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 278
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 280
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 276
    invoke-static/range {v0 .. v7}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useThreeDetents$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    return-object p1

    .line 283
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 284
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 283
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 271
    :cond_f
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->firstHeight$react_native_screens_release(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 272
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeight$react_native_screens_release(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 270
    invoke-static/range {v0 .. v5}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useTwoDetents$default(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p1

    return-object p1

    .line 261
    :cond_10
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-static {p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->isSheetFitToContents(Lcom/swmansion/rnscreens/Screen;)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 262
    iget-object p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p1

    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p1, p2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeightForFitToContents$react_native_screens_release(Lcom/swmansion/rnscreens/Screen;)I

    move-result p1

    goto :goto_4

    .line 264
    :cond_11
    iget-object p2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {p2}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->maxAllowedHeight$react_native_screens_release(I)I

    move-result p1

    .line 266
    :goto_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1, v3}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->useSingleDetent(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Z)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-object v0

    .line 170
    :cond_12
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 156
    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "[RNScreens] Failed to find window height during bottom sheet behaviour configuration"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final createSheetEnterAnimator$react_native_screens_release(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;)Landroid/animation/Animator;
    .locals 6

    const-string/jumbo v0, "sheetAnimationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 409
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;->getDimmingDelegate()Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    move-result-object v1

    .line 410
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;->getFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    const/4 v2, 0x0

    .line 412
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getMaxAlpha$react_native_screens_release()F

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createDimmingViewAlphaAnimator(FFLcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 413
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createSheetSlideInAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 416
    check-cast v3, Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    .line 418
    iget-object v4, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/Screen;->getSheetInitialDetentIndex()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->willDimForDetentIndex(Lcom/swmansion/rnscreens/Screen;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 419
    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    const/4 v1, 0x1

    .line 421
    invoke-direct {p0, v0, v1, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->attachCommonListeners(Landroid/animation/AnimatorSet;ZLcom/swmansion/rnscreens/ScreenStackFragment;)V

    .line 423
    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method public final createSheetExitAnimator$react_native_screens_release(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;)Landroid/animation/Animator;
    .locals 5

    const-string/jumbo v0, "sheetAnimationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 429
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;->getCoordinatorLayout()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v1

    .line 430
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;->getDimmingDelegate()Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$SheetAnimationContext;->getFragment()Lcom/swmansion/rnscreens/ScreenStackFragment;

    move-result-object p1

    .line 434
    invoke-virtual {v2}, Lcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;->getDimmingView$react_native_screens_release()Lcom/swmansion/rnscreens/bottomsheet/DimmingView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/bottomsheet/DimmingView;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createDimmingViewAlphaAnimator(FFLcom/swmansion/rnscreens/bottomsheet/DimmingViewManager;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 435
    invoke-direct {p0, v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->createSheetSlideOutAnimator(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 437
    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    check-cast v1, Landroid/animation/Animator;

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v1, 0x0

    .line 439
    invoke-direct {p0, v0, v1, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->attachCommonListeners(Landroid/animation/AnimatorSet;ZLcom/swmansion/rnscreens/ScreenStackFragment;)V

    .line 441
    check-cast v0, Landroid/animation/Animator;

    return-object v0
.end method

.method public final getLastStableDetentIndex()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableDetentIndex:I

    return v0
.end method

.method public final getLastStableState()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastStableState:I

    return v0
.end method

.method public final getScreen()Lcom/swmansion/rnscreens/Screen;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    return-object v0
.end method

.method public final handleKeyboardInsetsProgress$react_native_screens_release(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iput p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastKeyboardBottomOffset:I

    .line 492
    iget-boolean p1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->isSheetAnimationInProgress:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 493
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->updateSheetTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 9

    const-string/jumbo v1, "v"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "insets"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v6

    .line 324
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v1

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    const-string v2, "getInsets(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v7

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v3

    invoke-virtual {p2, v3}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iget v2, v7, Landroidx/core/graphics/Insets;->top:I

    iget v3, v3, Landroidx/core/graphics/Insets;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastTopInset:I

    const/4 v8, 0x0

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    .line 334
    iput-boolean v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->isKeyboardVisible:Z

    .line 335
    new-instance v2, Lcom/swmansion/rnscreens/KeyboardVisible;

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-direct {v2, v1}, Lcom/swmansion/rnscreens/KeyboardVisible;-><init>(I)V

    check-cast v2, Lcom/swmansion/rnscreens/KeyboardState;

    iput-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    .line 336
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 337
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->configureBottomSheetBehaviour$react_native_screens_release$default(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;IILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_1

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 341
    iget-boolean v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->isKeyboardVisible:Z

    if-eqz v2, :cond_1

    .line 342
    sget-object v2, Lcom/swmansion/rnscreens/KeyboardDidHide;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardDidHide;

    check-cast v2, Lcom/swmansion/rnscreens/KeyboardState;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->configureBottomSheetBehaviour$react_native_screens_release$default(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;IILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    goto :goto_0

    .line 343
    :cond_1
    iget-object v2, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    sget-object v3, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 344
    sget-object v2, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast v2, Lcom/swmansion/rnscreens/KeyboardState;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->configureBottomSheetBehaviour$react_native_screens_release$default(Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Lcom/swmansion/rnscreens/KeyboardState;IILjava/lang/Object;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 348
    :cond_2
    :goto_0
    sget-object v1, Lcom/swmansion/rnscreens/KeyboardNotVisible;->INSTANCE:Lcom/swmansion/rnscreens/KeyboardNotVisible;

    check-cast v1, Lcom/swmansion/rnscreens/KeyboardState;

    iput-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->keyboardState:Lcom/swmansion/rnscreens/KeyboardState;

    .line 349
    iput-boolean v8, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->isKeyboardVisible:Z

    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 352
    iget v8, v7, Landroidx/core/graphics/Insets;->bottom:I

    .line 361
    :cond_4
    new-instance v1, Landroidx/core/view/WindowInsetsCompat$Builder;

    invoke-direct {v1, p2}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 363
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    .line 364
    iget v3, v7, Landroidx/core/graphics/Insets;->left:I

    iget v4, v7, Landroidx/core/graphics/Insets;->top:I

    iget v5, v7, Landroidx/core/graphics/Insets;->right:I

    invoke-static {v3, v4, v5, v8}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object v3

    .line 362
    invoke-virtual {v1, v2, v3}, Landroidx/core/view/WindowInsetsCompat$Builder;->setInsets(ILandroidx/core/graphics/Insets;)Landroidx/core/view/WindowInsetsCompat$Builder;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    const-string/jumbo v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    sget-object p1, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->handleHostFragmentOnPause()V

    return-void

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->handleHostFragmentOnResume()V

    return-void

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->handleHostFragmentOnStart()V

    return-void
.end method

.method public final updateBottomSheetMetrics$react_native_screens_release(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;)V"
        }
    .end annotation

    const-string v0, "behavior"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen;->getSheetShouldOverflowTopInset()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveContainerHeight()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->tryResolveSafeAreaSpaceForSheet()Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    .line 124
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-static {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->isSheetFitToContents(Lcom/swmansion/rnscreens/Screen;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 126
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getContentWrapper()Lcom/swmansion/rnscreens/ScreenContentWrapper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContentWrapper;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 132
    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetUtilsKt;->isLaidOutOrHasCachedLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    goto :goto_1

    :cond_2
    if-nez v1, :cond_4

    .line 135
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->highest$react_native_screens_release()D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->getCount$react_native_screens_release()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 143
    iget-object v1, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->screen:Lcom/swmansion/rnscreens/Screen;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/Screen;->getSheetDetents()Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/swmansion/rnscreens/bottomsheet/SheetDelegate;->lastTopInset:I

    invoke-virtual {v1, v0, v3}, Lcom/swmansion/rnscreens/bottomsheet/SheetDetents;->expandedOffsetFromTop$react_native_screens_release(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    :cond_3
    invoke-static {p1, v2, v3}, Lcom/swmansion/rnscreens/bottomsheet/BottomSheetBehaviorExtKt;->updateMetrics(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    return-void

    .line 124
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 119
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "[RNScreens] Failed to find window height during bottom sheet behaviour configuration"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
