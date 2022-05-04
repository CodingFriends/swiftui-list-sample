# swiftui-list-sample
Sample project to test performance of lists in SwiftUI

The sample code loads a list of the 10,000 most frequent english words and displays them in a list.

## Performance of List

The app has a two views that can be switched using the sidebar (Mac) or the start view (iPhone).  
Switching between the views makes SwiftUI reload the list.

It is obvious that the list on the Mac takes several seconds to load wheras it is pretty much instant on the iPhone.

Read the discussion on the performance issue on [Stackoverflow](https://stackoverflow.com/questions/72070486/bad-performance-of-large-swiftui-lists-on-macos).


## Contribution

If you have a solution to speed up the list loading, feel free to make a PR or create an Issue with description.


## License
This code can be used under the [Unlicense](https://unlicense.org).

```
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or
distribute this software, either in source code form or as a compiled
binary, for any purpose, commercial or non-commercial, and by any
means.

In jurisdictions that recognize copyright laws, the author or authors
of this software dedicate any and all copyright interest in the
software to the public domain. We make this dedication for the benefit
of the public at large and to the detriment of our heirs and
successors. We intend this dedication to be an overt act of
relinquishment in perpetuity of all present and future rights to this
software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <https://unlicense.org>
```
