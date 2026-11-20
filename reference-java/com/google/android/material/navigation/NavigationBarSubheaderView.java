package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.core.widget.TextViewCompat;
import com.google.android.material.R;

public class NavigationBarSubheaderView extends FrameLayout implements NavigationBarMenuItemView {
    private boolean expanded;
    private MenuItemImpl itemData;
    boolean onlyShowWhenExpanded;
    private final TextView subheaderLabel;
    private ColorStateList textColor;

    @Override
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override
    public void setCheckable(boolean z) {
    }

    @Override
    public void setChecked(boolean z) {
    }

    @Override
    public void setEnabled(boolean z) {
    }

    @Override
    public void setIcon(Drawable drawable) {
    }

    @Override
    public void setShortcut(boolean z, char c) {
    }

    @Override
    public void setTitle(CharSequence charSequence) {
    }

    @Override
    public boolean showsIcon() {
        return false;
    }

    NavigationBarSubheaderView(Context context) {
        super(context);
        LayoutInflater.from(context).inflate(R.layout.m3_navigation_menu_subheader, (ViewGroup) this, true);
        this.subheaderLabel = (TextView) findViewById(R.id.navigation_menu_subheader_label);
    }

    @Override
    public void initialize(MenuItemImpl menuItemImpl, int i) {
        this.itemData = menuItemImpl;
        menuItemImpl.setCheckable(false);
        this.subheaderLabel.setText(menuItemImpl.getTitle());
        updateVisibility();
    }

    public void setTextAppearance(int i) {
        TextViewCompat.setTextAppearance(this.subheaderLabel, i);
        ColorStateList colorStateList = this.textColor;
        if (colorStateList != null) {
            this.subheaderLabel.setTextColor(colorStateList);
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.textColor = colorStateList;
        if (colorStateList != null) {
            this.subheaderLabel.setTextColor(colorStateList);
        }
    }

    @Override
    public MenuItemImpl getItemData() {
        return this.itemData;
    }

    @Override
    public void setExpanded(boolean z) {
        this.expanded = z;
        updateVisibility();
    }

    @Override
    public boolean isExpanded() {
        return this.expanded;
    }

    @Override
    public void setOnlyShowWhenExpanded(boolean z) {
        this.onlyShowWhenExpanded = z;
        updateVisibility();
    }

    @Override
    public boolean isOnlyVisibleWhenExpanded() {
        return this.onlyShowWhenExpanded;
    }

    private void updateVisibility() {
        MenuItemImpl menuItemImpl = this.itemData;
        if (menuItemImpl != null) {
            setVisibility((!menuItemImpl.isVisible() || (!this.expanded && this.onlyShowWhenExpanded)) ? 8 : 0);
        }
    }
}
