package com.google.android.material.color.utilities;

import com.facebook.react.modules.appstate.AppStateModule;
import java.util.function.Function;

public final class MaterialDynamicColors {
    private final boolean isExtendedFidelity;

    public MaterialDynamicColors() {
        this.isExtendedFidelity = false;
    }

    public MaterialDynamicColors(boolean z) {
        this.isExtendedFidelity = z;
    }

    public DynamicColor highestSurface(DynamicScheme dynamicScheme) {
        return dynamicScheme.isDark ? surfaceBright() : surfaceDim();
    }

    public DynamicColor primaryPaletteKeyColor() {
        return DynamicColor.fromPalette("primary_palette_key_color", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).primaryPalette.getKeyColor().getTone());
            }
        });
    }

    public DynamicColor secondaryPaletteKeyColor() {
        return DynamicColor.fromPalette("secondary_palette_key_color", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).secondaryPalette.getKeyColor().getTone());
            }
        });
    }

    public DynamicColor tertiaryPaletteKeyColor() {
        return DynamicColor.fromPalette("tertiary_palette_key_color", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).tertiaryPalette.getKeyColor().getTone());
            }
        });
    }

    public DynamicColor neutralPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_palette_key_color", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).neutralPalette.getKeyColor().getTone());
            }
        });
    }

    public DynamicColor neutralVariantPaletteKeyColor() {
        return DynamicColor.fromPalette("neutral_variant_palette_key_color", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).neutralVariantPalette.getKeyColor().getTone());
            }
        });
    }

    public DynamicColor background() {
        return new DynamicColor(AppStateModule.APP_STATE_BACKGROUND, new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 6.0d : 98.0d);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onBackground() {
        return new DynamicColor("on_background", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 90.0d : 10.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m588x24678954((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 3.0d, 4.5d, 7.0d), null);
    }

    DynamicColor m588x24678954(DynamicScheme dynamicScheme) {
        return background();
    }

    public DynamicColor surface() {
        return new DynamicColor("surface", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 6.0d : 98.0d);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceDim() {
        return new DynamicColor("surface_dim", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                return Double.valueOf(dynamicScheme.isDark ? 6.0d : new ContrastCurve(87.0d, 87.0d, 80.0d, 75.0d).get(dynamicScheme.contrastLevel));
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceBright() {
        return new DynamicColor("surface_bright", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                return Double.valueOf(dynamicScheme.isDark ? new ContrastCurve(24.0d, 24.0d, 29.0d, 34.0d).get(dynamicScheme.contrastLevel) : 98.0d);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerLowest() {
        return new DynamicColor("surface_container_lowest", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                DynamicScheme dynamicScheme = (DynamicScheme) obj;
                return Double.valueOf(dynamicScheme.isDark ? new ContrastCurve(4.0d, 4.0d, 2.0d, 0.0d).get(dynamicScheme.contrastLevel) : 100.0d);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor surfaceContainerLow() {
        return new DynamicColor("surface_container_low", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$surfaceContainerLow$24((DynamicScheme) obj);
            }
        }, true, null, null, null, null);
    }

    static Double lambda$surfaceContainerLow$24(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(10.0d, 10.0d, 11.0d, 12.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(96.0d, 96.0d, 96.0d, 95.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor surfaceContainer() {
        return new DynamicColor("surface_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$surfaceContainer$26((DynamicScheme) obj);
            }
        }, true, null, null, null, null);
    }

    static Double lambda$surfaceContainer$26(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(12.0d, 12.0d, 16.0d, 20.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(94.0d, 94.0d, 92.0d, 90.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor surfaceContainerHigh() {
        return new DynamicColor("surface_container_high", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$surfaceContainerHigh$28((DynamicScheme) obj);
            }
        }, true, null, null, null, null);
    }

    static Double lambda$surfaceContainerHigh$28(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(17.0d, 17.0d, 21.0d, 25.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(92.0d, 92.0d, 88.0d, 85.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor surfaceContainerHighest() {
        return new DynamicColor("surface_container_highest", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$surfaceContainerHighest$30((DynamicScheme) obj);
            }
        }, true, null, null, null, null);
    }

    static Double lambda$surfaceContainerHighest$30(DynamicScheme dynamicScheme) {
        double d;
        if (dynamicScheme.isDark) {
            d = new ContrastCurve(22.0d, 22.0d, 26.0d, 30.0d).get(dynamicScheme.contrastLevel);
        } else {
            d = new ContrastCurve(90.0d, 90.0d, 84.0d, 80.0d).get(dynamicScheme.contrastLevel);
        }
        return Double.valueOf(d);
    }

    public DynamicColor onSurface() {
        return new DynamicColor("on_surface", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 90.0d : 10.0d);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    public DynamicColor surfaceVariant() {
        return new DynamicColor("surface_variant", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 90.0d);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor onSurfaceVariant() {
        return new DynamicColor("on_surface_variant", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 30.0d);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    public DynamicColor inverseSurface() {
        return new DynamicColor("inverse_surface", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 90.0d : 20.0d);
            }
        }, false, null, null, null, null);
    }

    public DynamicColor inverseOnSurface() {
        return new DynamicColor("inverse_on_surface", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 20.0d : 95.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m586xcbcaf83d((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    DynamicColor m586xcbcaf83d(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    public DynamicColor outline() {
        return new DynamicColor("outline", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 60.0d : 50.0d);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.5d, 3.0d, 4.5d, 7.0d), null);
    }

    public DynamicColor outlineVariant() {
        return new DynamicColor("outline_variant", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 80.0d);
            }
        }, false, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), null);
    }

    public DynamicColor shadow() {
        return new DynamicColor("shadow", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(0.0d);
            }
        }, false, null, null, null, null);
    }

    public DynamicColor scrim() {
        return new DynamicColor("scrim", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(0.0d);
            }
        }, false, null, null, null, null);
    }

    public DynamicColor surfaceTint() {
        return new DynamicColor("surface_tint", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 40.0d);
            }
        }, true, null, null, null, null);
    }

    public DynamicColor primary() {
        return new DynamicColor("primary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$primary$53((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m612x39203b5((DynamicScheme) obj);
            }
        });
    }

    static Double lambda$primary$53(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 100.0d : 0.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    ToneDeltaPair m612x39203b5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onPrimary() {
        return new DynamicColor("on_primary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onPrimary$56((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m591x16f20f37((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    static Double lambda$onPrimary$56(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    DynamicColor m591x16f20f37(DynamicScheme dynamicScheme) {
        return primary();
    }

    public DynamicColor primaryContainer() {
        return new DynamicColor("primary_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m613x9fd70f23((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m614x8277b1b9((DynamicScheme) obj);
            }
        });
    }

    Double m613x9fd70f23(DynamicScheme dynamicScheme) {
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.sourceColorHct.getTone());
        }
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 85.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    ToneDeltaPair m614x8277b1b9(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryContainer(), primary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onPrimaryContainer() {
        return new DynamicColor("on_primary_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m592x617ce7dc((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m593x3d3e639d((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    Double m592x617ce7dc(DynamicScheme dynamicScheme) {
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(primaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 0.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    DynamicColor m593x3d3e639d(DynamicScheme dynamicScheme) {
        return primaryContainer();
    }

    public DynamicColor inversePrimary() {
        return new DynamicColor("inverse_primary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 40.0d : 80.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m587x6f94cccc((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), null);
    }

    DynamicColor m587x6f94cccc(DynamicScheme dynamicScheme) {
        return inverseSurface();
    }

    public DynamicColor secondary() {
        return new DynamicColor("secondary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 40.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m617x991d7367((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m617x991d7367(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onSecondary() {
        return new DynamicColor("on_secondary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onSecondary$71((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m598x1ad791fe((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    static Double lambda$onSecondary$71(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 100.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    DynamicColor m598x1ad791fe(DynamicScheme dynamicScheme) {
        return secondary();
    }

    public DynamicColor secondaryContainer() {
        return new DynamicColor("secondary_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m618x6c9b544e((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m619x485cd00f((DynamicScheme) obj);
            }
        });
    }

    Double m618x6c9b544e(DynamicScheme dynamicScheme) {
        double d = dynamicScheme.isDark ? 30.0d : 90.0d;
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 30.0d : 85.0d);
        }
        if (!isFidelity(dynamicScheme)) {
            return Double.valueOf(d);
        }
        return Double.valueOf(findDesiredChromaByTone(dynamicScheme.secondaryPalette.getHue(), dynamicScheme.secondaryPalette.getChroma(), d, !dynamicScheme.isDark));
    }

    ToneDeltaPair m619x485cd00f(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryContainer(), secondary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onSecondaryContainer() {
        return new DynamicColor("on_secondary_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m599x4fcce1f2((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m600x2b8e5db3((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    Double m599x4fcce1f2(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
        }
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(secondaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    DynamicColor m600x2b8e5db3(DynamicScheme dynamicScheme) {
        return secondaryContainer();
    }

    public DynamicColor tertiary() {
        return new DynamicColor("tertiary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$tertiary$80((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m622x1f6aa165((DynamicScheme) obj);
            }
        });
    }

    static Double lambda$tertiary$80(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 25.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 80.0d : 40.0d);
    }

    ToneDeltaPair m622x1f6aa165(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onTertiary() {
        return new DynamicColor("on_tertiary", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onTertiary$83((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m605x36068449((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    static Double lambda$onTertiary$83(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 10.0d : 90.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 20.0d : 100.0d);
    }

    DynamicColor m605x36068449(DynamicScheme dynamicScheme) {
        return tertiary();
    }

    public DynamicColor tertiaryContainer() {
        return new DynamicColor("tertiary_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m623x59bc65e7((DynamicScheme) obj);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m624x357de1a8((DynamicScheme) obj);
            }
        });
    }

    Double m623x59bc65e7(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 60.0d : 49.0d);
        }
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DislikeAnalyzer.fixIfDisliked(dynamicScheme.tertiaryPalette.getHct(dynamicScheme.sourceColorHct.getTone())).getTone());
        }
        return Double.valueOf(dynamicScheme.isDark ? 30.0d : 90.0d);
    }

    ToneDeltaPair m624x357de1a8(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryContainer(), tertiary(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onTertiaryContainer() {
        return new DynamicColor("on_tertiary_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m606xb5c66ea9((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m607x9867113f((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    Double m606xb5c66ea9(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 0.0d : 100.0d);
        }
        if (isFidelity(dynamicScheme)) {
            return Double.valueOf(DynamicColor.foregroundTone(tertiaryContainer().tone.apply(dynamicScheme).doubleValue(), 4.5d));
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    DynamicColor m607x9867113f(DynamicScheme dynamicScheme) {
        return tertiaryContainer();
    }

    public DynamicColor error() {
        return new DynamicColor("error", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 40.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(3.0d, 4.5d, 7.0d, 7.0d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m584x590ec46a((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m584x590ec46a(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onError() {
        return new DynamicColor("on_error", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 20.0d : 100.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m589xb6a5d3ac((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    DynamicColor m589xb6a5d3ac(DynamicScheme dynamicScheme) {
        return error();
    }

    public DynamicColor errorContainer() {
        return new DynamicColor("error_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 90.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m585x33346ee5((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m585x33346ee5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(errorContainer(), error(), 10.0d, TonePolarity.NEARER, false);
    }

    public DynamicColor onErrorContainer() {
        return new DynamicColor("on_error_container", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).errorPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return MaterialDynamicColors.lambda$onErrorContainer$101((DynamicScheme) obj);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m590x2dffdbdb((DynamicScheme) obj);
            }
        }, null, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    static Double lambda$onErrorContainer$101(DynamicScheme dynamicScheme) {
        if (isMonochrome(dynamicScheme)) {
            return Double.valueOf(dynamicScheme.isDark ? 90.0d : 10.0d);
        }
        return Double.valueOf(dynamicScheme.isDark ? 90.0d : 30.0d);
    }

    DynamicColor m590x2dffdbdb(DynamicScheme dynamicScheme) {
        return errorContainer();
    }

    public DynamicColor primaryFixed() {
        return new DynamicColor("primary_fixed", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 40.0d : 90.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m615xcb141198((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m615xcb141198(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor primaryFixedDim() {
        return new DynamicColor("primary_fixed_dim", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 30.0d : 80.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m616x8f195ac5((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m616x8f195ac5(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(primaryFixed(), primaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onPrimaryFixed() {
        return new DynamicColor("on_primary_fixed", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 100.0d : 10.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m594x702e4bf2((DynamicScheme) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m595x4befc7b3((DynamicScheme) obj);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    DynamicColor m594x702e4bf2(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    DynamicColor m595x4befc7b3(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    public DynamicColor onPrimaryFixedVariant() {
        return new DynamicColor("on_primary_fixed_variant", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 90.0d : 30.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m596x19d0bbbf((DynamicScheme) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m597xf5923780((DynamicScheme) obj);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    DynamicColor m596x19d0bbbf(DynamicScheme dynamicScheme) {
        return primaryFixedDim();
    }

    DynamicColor m597xf5923780(DynamicScheme dynamicScheme) {
        return primaryFixed();
    }

    public DynamicColor secondaryFixed() {
        return new DynamicColor("secondary_fixed", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 80.0d : 90.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m620x75ece309((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m620x75ece309(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor secondaryFixedDim() {
        return new DynamicColor("secondary_fixed_dim", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 70.0d : 80.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m621x801c242f((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m621x801c242f(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(secondaryFixed(), secondaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onSecondaryFixed() {
        return new DynamicColor("on_secondary_fixed", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(10.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m601xf72fd9a3((DynamicScheme) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m602xd2f15564((DynamicScheme) obj);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    DynamicColor m601xf72fd9a3(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    DynamicColor m602xd2f15564(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    public DynamicColor onSecondaryFixedVariant() {
        return new DynamicColor("on_secondary_fixed_variant", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).secondaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 25.0d : 30.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m603x26187114((DynamicScheme) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m604x8b913aa((DynamicScheme) obj);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    DynamicColor m603x26187114(DynamicScheme dynamicScheme) {
        return secondaryFixedDim();
    }

    DynamicColor m604x8b913aa(DynamicScheme dynamicScheme) {
        return secondaryFixed();
    }

    public DynamicColor tertiaryFixed() {
        return new DynamicColor("tertiary_fixed", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 40.0d : 90.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m625x59237289((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m625x59237289(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor tertiaryFixedDim() {
        return new DynamicColor("tertiary_fixed_dim", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 30.0d : 80.0d);
            }
        }, true, new MaterialDynamicColors$$ExternalSyntheticLambda162(this), null, new ContrastCurve(1.0d, 1.0d, 3.0d, 4.5d), new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m626x24c02d4a((DynamicScheme) obj);
            }
        });
    }

    ToneDeltaPair m626x24c02d4a(DynamicScheme dynamicScheme) {
        return new ToneDeltaPair(tertiaryFixed(), tertiaryFixedDim(), 10.0d, TonePolarity.LIGHTER, true);
    }

    public DynamicColor onTertiaryFixed() {
        return new DynamicColor("on_tertiary_fixed", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 100.0d : 10.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m608xfe3fcbf0((DynamicScheme) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m609xe0e06e86((DynamicScheme) obj);
            }
        }, new ContrastCurve(4.5d, 7.0d, 11.0d, 21.0d), null);
    }

    DynamicColor m608xfe3fcbf0(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    DynamicColor m609xe0e06e86(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    public DynamicColor onTertiaryFixedVariant() {
        return new DynamicColor("on_tertiary_fixed_variant", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).tertiaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(MaterialDynamicColors.isMonochrome((DynamicScheme) obj) ? 90.0d : 30.0d);
            }
        }, false, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m610x702fc122((DynamicScheme) obj);
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return this.f$0.m611x4bf13ce3((DynamicScheme) obj);
            }
        }, new ContrastCurve(3.0d, 4.5d, 7.0d, 11.0d), null);
    }

    DynamicColor m610x702fc122(DynamicScheme dynamicScheme) {
        return tertiaryFixedDim();
    }

    DynamicColor m611x4bf13ce3(DynamicScheme dynamicScheme) {
        return tertiaryFixed();
    }

    public DynamicColor controlActivated() {
        return DynamicColor.fromPalette("control_activated", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).primaryPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 90.0d);
            }
        });
    }

    public DynamicColor controlNormal() {
        return DynamicColor.fromPalette("control_normal", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 80.0d : 30.0d);
            }
        });
    }

    public DynamicColor controlHighlight() {
        return new DynamicColor("control_highlight", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 100.0d : 0.0d);
            }
        }, false, null, null, null, null, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 0.2d : 0.12d);
            }
        });
    }

    public DynamicColor textPrimaryInverse() {
        return DynamicColor.fromPalette("text_primary_inverse", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }
        });
    }

    public DynamicColor textSecondaryAndTertiaryInverse() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralVariantPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 30.0d : 80.0d);
            }
        });
    }

    public DynamicColor textPrimaryInverseDisableOnly() {
        return DynamicColor.fromPalette("text_primary_inverse_disable_only", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }
        });
    }

    public DynamicColor textSecondaryAndTertiaryInverseDisabled() {
        return DynamicColor.fromPalette("text_secondary_and_tertiary_inverse_disabled", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }
        });
    }

    public DynamicColor textHintInverse() {
        return DynamicColor.fromPalette("text_hint_inverse", new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((DynamicScheme) obj).neutralPalette;
            }
        }, new Function() {
            @Override
            public final Object apply(Object obj) {
                return Double.valueOf(((DynamicScheme) obj).isDark ? 10.0d : 90.0d);
            }
        });
    }

    private boolean isFidelity(DynamicScheme dynamicScheme) {
        return !(!this.isExtendedFidelity || dynamicScheme.variant == Variant.MONOCHROME || dynamicScheme.variant == Variant.NEUTRAL) || dynamicScheme.variant == Variant.FIDELITY || dynamicScheme.variant == Variant.CONTENT;
    }

    private static boolean isMonochrome(DynamicScheme dynamicScheme) {
        return dynamicScheme.variant == Variant.MONOCHROME;
    }

    static double findDesiredChromaByTone(double d, double d2, double d3, boolean z) {
        Hct hctFrom = Hct.from(d, d2, d3);
        if (hctFrom.getChroma() < d2) {
            double chroma = hctFrom.getChroma();
            while (hctFrom.getChroma() < d2) {
                d3 += z ? -1.0d : 1.0d;
                Hct hctFrom2 = Hct.from(d, d2, d3);
                if (chroma > hctFrom2.getChroma() || Math.abs(hctFrom2.getChroma() - d2) < 0.4d) {
                    return d3;
                }
                if (Math.abs(hctFrom2.getChroma() - d2) < Math.abs(hctFrom.getChroma() - d2)) {
                    hctFrom = hctFrom2;
                }
                chroma = Math.max(chroma, hctFrom2.getChroma());
            }
        }
        return d3;
    }
}
