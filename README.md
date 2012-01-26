#wp-thememanager

A Windows Phone library that allows for overriding the theme to be Dark, Light, Inverted, etc.


For Windows Phone 7.5 (this library targets the Windows Phone 7.1 SDK)

## How to use

Just call `ThemeManager.ToLightTheme()` or `ThemeManager.ToDarkTheme()` or `ThemeManager.InvertTheme`.

Although this isn't designed to handle custom themes, branding scenarios, etc., it wouldn't be too hard to add that support and I'd be interested in a simple, lightweight pull request in that case.

The applied resources only affect mostly chrome colors, foreground, background, but not the accent color.

For more information check out http://www.jeff.wilcox.name/phonethememanager

## Credits

Implementation created by Jeff Wilcox

## NuGet

A built assembly is also available on NuGet, PhoneThemeManager.

## License

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Changelog

1.0:

* Initial implementation
