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
end