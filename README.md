# Tradsim

A Ruby Gem for translation between Traditional Chinese and Simplified Chinese. The Gem includes a mapping dictionary so it doesn't get the translation from a web service. It can translate Traditional Chinese, Simplified Chinese or a mixed string into either Traditional Chinese or Simplified Chinese. Also, you can let the Gem determine whether the supplied string is in Traditional Chinese or not.

## Installation

    gem install tradsim

## Usage

To use tradsim,
		
		require 'tradsim'

To translate Traditional Chinese text to Simplified Chinese,

		Tradsim::to_sim("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳")

You will get

		"转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"

Similarly, to translate Simplified Chinese text to Traditional Chinese,

		Tradsim::to_trad("转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳")

You will get

		"轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"

 ---

Both `to_sim` and `to_trad` works as expected even if the text supplied contain both Traditional and Simplified Chinese Characters. Therefore,

		Tradsim::to_sim("轉街過巷 就如滑過浪潮 听天说地 仍然剩我心跳")

will yield

		"转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"		

 ---

If you are sure about the current text is Traditional Chinese or not, but just want to toggle between them,

		Tradsim::toggle("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳")

will yield

		"转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"

And `Tradsim::toggle` will translate the string back to Traditional Chinese if you supply a Simplified one.

 ---

Finally, the method `Tradsim::guess` will give you a rough guess on whether the text is Traditional Chinese or not. Possible value from `Tradsim::guess` are `:traditional` , `:simplified` , and `:unknown`. For example,

		Tradsim::guess("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳")

will yield
		
		:traditional
