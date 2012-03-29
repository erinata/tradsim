# encoding: UTF-8

require 'tradsim'

describe "tradsim" do
  it "should translate Traditional Chinese to Simiplified Chinese" do
  	Tradsim::to_sim("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳").should == "转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"
  end

  it "should translate Simiplified Chinese to Traditional Chinese" do
  	Tradsim::to_trad("转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳").should == "轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"
  end

  it "should translate a mixed string to Traditional Chinese" do
  	Tradsim::to_trad("转街过巷 就如滑过浪潮 聽天說地 仍然剩我心跳").should == "轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"
  end

  it "should translate a mixed string to Simiplified Chinese" do
    Tradsim::to_sim("轉街過巷 就如滑過浪潮 听天说地 仍然剩我心跳").should == "转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"
  end

  it "should guess correctly on a Traditional Chinese String" do
    Tradsim::guess("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳").should == :traditional
  end

  it "should guess correctly on a Simiplified Chinese String" do
    Tradsim::guess("转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳").should == :simplified
  end

  it "should translate correctly on a Traditional Chinese String based on guess" do
    Tradsim::toggle("轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳").should == "转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳"
  end

  it "should translate correctly on a Traditional Chinese String based on guess" do
    Tradsim::toggle("转街过巷 就如滑过浪潮 听天说地 仍然剩我心跳").should == "轉街過巷 就如滑過浪潮 聽天說地 仍然剩我心跳"
  end

  it "should yield the original string if the spplied string is an English string" do
    Tradsim::to_trad("Though i'm acting cool, when i'm feeling blue, Just to show you that i'm true with you, while i never want it too.").should == "Though i'm acting cool, when i'm feeling blue, Just to show you that i'm true with you, while i never want it too."
  end

	it "should translate to Traditional Chinese correctly when the string is mixed with Chinese and English" do
  	Tradsim::to_trad("转街过巷 Though i'm acting cool 就如滑过浪潮 when i'm feeling blue 听天说地 仍然剩我心跳").should == "轉街過巷 Though i'm acting cool 就如滑過浪潮 when i'm feeling blue 聽天說地 仍然剩我心跳"
  end

	it "should translate to Simiplified Chinese correctly when the string is mixed with Chinese and English" do
		Tradsim::to_sim("轉街過巷 Though i'm acting cool 就如滑過浪潮 when i'm feeling blue 聽天說地 仍然剩我心跳").should == "转街过巷 Though i'm acting cool 就如滑过浪潮 when i'm feeling blue 听天说地 仍然剩我心跳"
  end

  it "should translate to Traditional Chinese correctly when the string is mixed with Chinese and English" do
  	Tradsim::to_trad("a转a街a过a巷a a就a如a滑a过a浪a潮a a听a天a说a地a a仍a然a剩a我a心a跳a").should == "a轉a街a過a巷a a就a如a滑a過a浪a潮a a聽a天a說a地a a仍a然a剩a我a心a跳a"
  end

	it "should translate to Simiplified Chinese correctly when the string is mixed with Chinese and English" do
		Tradsim::to_sim("a轉a街a過a巷a a就a如a滑a過a浪a潮a a聽a天a說a地a a仍a然a剩a我a心a跳a").should == "a转a街a过a巷a a就a如a滑a过a浪a潮a a听a天a说a地a a仍a然a剩a我a心a跳a"
  end

end