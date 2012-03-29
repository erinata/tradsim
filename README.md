# Tradsim

A Ruby gem for translation between Traditional Chinese and Simplified Chinese. The gem includes a mapping dictionary so it doesn't get the translation from a web service. It can translate Traditional Chinese, Simplified Chinese or a mixed string into Traditional Chinese or Simplified Chinese. Also, you can let the gem to determine whether the supplied string is in Traditional Chinese or not.

## Installation

    gem install tradsim

## Usage

To use tradsim,
		
		require 'tradsim'

To translate Traditional Chinese text to Simplified Chinese

		Tradsim::to_sim("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳")

You will get

		"转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"

Similarly, to translate Simplified Chinese text to Traditional Chinese

		Tradsim::to_trad("转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳")

You will get

		"轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"

Both `to_sim` and `to_trad` works as expected even if the text supplied contain both Traditional and Simplified Chinese Characters. Therefore

		Tradsim::to_sim("轉街過巷 就如滑過浪潮 听天说地 仍然剩我心跳")

will yield

		"转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"		

If you are sure about the current text is Traditional Chinese or not, but just want to toggle between them,

		Tradsim::toggle("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳")

will yield

		"转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"

But `toggle` will translate the string back to Traditional Chinese if you supply a Simplified one.

Finally, `guess` will give you a rough guess on whether the text is Traditional Chinese or not. Possible value from `guess` are `:traditional` , `:simplified` , and `:unknown`. For example,

		Tradsim::guess("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳")

will yield
		
		:traditional



## License


Copyright (C) 2012 Tom Lam

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
