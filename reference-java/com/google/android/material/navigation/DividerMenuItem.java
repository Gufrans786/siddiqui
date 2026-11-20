package com.google.android.material.navigation;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

class DividerMenuItem implements MenuItem {
    @Override
    public boolean collapseActionView() {
        return false;
    }

    @Override
    public boolean expandActionView() {
        return false;
    }

    @Override
    public ActionProvider getActionProvider() {
        return null;
    }

    @Override
    public View getActionView() {
        return null;
    }

    @Override
    public char getAlphabeticShortcut() {
        return (char) 0;
    }

    @Override
    public int getGroupId() {
        return 0;
    }

    @Override
    public Drawable getIcon() {
        return null;
    }

    @Override
    public Intent getIntent() {
        return null;
    }

    @Override
    public int getItemId() {
        return 0;
    }

    @Override
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override
    public char getNumericShortcut() {
        return (char) 0;
    }

    @Override
    public int getOrder() {
        return 0;
    }

    @Override
    public SubMenu getSubMenu() {
        return null;
    }

    @Override
    public CharSequence getTitle() {
        return null;
    }

    @Override
    public CharSequence getTitleCondensed() {
        return null;
    }

    @Override
    public boolean hasSubMenu() {
        return false;
    }

    @Override
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override
    public boolean isCheckable() {
        return false;
    }

    @Override
    public boolean isChecked() {
        return false;
    }

    @Override
    public boolean isEnabled() {
        return false;
    }

    @Override
    public boolean isVisible() {
        return false;
    }

    @Override
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        return null;
    }

    @Override
    public MenuItem setActionView(int i) {
        return null;
    }

    @Override
    public MenuItem setActionView(View view) {
        return null;
    }

    @Override
    public MenuItem setAlphabeticShortcut(char c) {
        return null;
    }

    @Override
    public MenuItem setCheckable(boolean z) {
        return null;
    }

    @Override
    public MenuItem setChecked(boolean z) {
        return null;
    }

    @Override
    public MenuItem setEnabled(boolean z) {
        return null;
    }

    @Override
    public MenuItem setIcon(int i) {
        return null;
    }

    @Override
    public MenuItem setIcon(Drawable drawable) {
        return null;
    }

    @Override
    public MenuItem setIntent(Intent intent) {
        return null;
    }

    @Override
    public MenuItem setNumericShortcut(char c) {
        return null;
    }

    @Override
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        return null;
    }

    @Override
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return null;
    }

    @Override
    public MenuItem setShortcut(char c, char c2) {
        return null;
    }

    @Override
    public void setShowAsAction(int i) {
    }

    @Override
    public MenuItem setShowAsActionFlags(int i) {
        return null;
    }

    @Override
    public MenuItem setTitle(int i) {
        return null;
    }

    @Override
    public MenuItem setTitle(CharSequence charSequence) {
        return null;
    }

    @Override
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        return null;
    }

    @Override
    public MenuItem setVisible(boolean z) {
        return null;
    }

    DividerMenuItem() {
    }
}
