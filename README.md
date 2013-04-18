#wp-thememanager 

A Windows Phone library that allows for overriding the theme to be Dark, Light, Inverted, etc. as well as now enabling you to set a custom theme to override the default Phone brushes.

It also supports overriding the Accent color and brush for use in custom-branded applications. For fun, I've included the standard Mango accent brushes and a few of the custom ones (my Lumia 800 came from Germany and has a gray/'grau' color available, plus Nokia Blue, etc.). I'll accept any pull requests that add additional OEM colors if people think that would have any value in their applications at all.


For Windows Phone 7.5 (this library targets the Windows Phone 7.1 SDK)

# How to use

Just call `ThemeManager.ToLightTheme()` or `ThemeManager.ToDarkTheme()` or `ThemeManager.InvertTheme`.

Although this isn't designed to handle custom themes, branding scenarios, etc., it wouldn't be too hard to add that support and I'd be interested in a simple, lightweight pull request in that case.

The applied resources only affect mostly chrome colors, foreground, background, but not the accent color.

For more information check out http://www.jeff.wilcox.name/2012/01/phonethememanager/

# Custom Themes 

This allows you to style your app how you used to in 7.0, but taking the ThemeResources.xaml from `C:\Program Files (x86)\Microsoft SDKs\Windows Phone\v7.1\Design` (or just Program Files if on a x86 system) and change the colours to suit your app.

What makes the custom theme support cool is you can embed your altered ThemeResources.xaml as a MergedDictionary in your app.xaml, this allows you to see those changes at design time and use them easily in Blend.

To then set the custom theme, just call `ThemeManager.SetCustomTheme(rd, Theme.Light)` where rd is a `ResourceDictionary` version of your xaml. You also need to specify whether to override the Dark or Light theme, this is a fall back for if you have removed some of the colours from your Resource Dictionary.

**NOTE:** Do not put anything else in your modified ThemeResources.xaml that you will later need (if putting it in the MergedDictionary section) as part of the process is to remove the MergedDictionary once the theme has been set. For some reason if you don't the PhoneForegroundBrush doesn't stay set.

# Credits

Implementation created by Jeff Wilcox,
Custom Theme support added by Scott Lovegrove

## NuGet

A built assembly is also available on NuGet, PhoneThemeManager.

# NuGet Binary

The binary is super easy to use. With NuGet just add the PhoneThemeManager package reference.

# NuGet Source File

Instead of adding yet another assembly to your project, just add the single source file (or add it to your existing shared library, etc.) by using the PhoneThemeManager.Source package.

# License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Changelog

1.0:

* Initial implementation

1.1:

* Adds Accent Brush features and functionality. Use the `ThemeManager.SetAccentColor(...)` overrides.

1.2:

* Adds Custom Theme support. Use `ThemeManager.SetCustomTheme(...)`

1.3:

* Merged with fixes from others.

1.3.2:

* Fixes an issue with the light theme and setting to dark w.r.t. the system tray progress indicator
* Removes a throw when reapplying the theme.

1.3.3:

* Some colors/themes should only be present in Windows Phone 7.x as they were removed/changed in 8.0. Adds a logic check that was contributed.
