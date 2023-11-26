# 親クラス
class Mentor
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  def job
    puts "#{self.name} です。私は現役のITプロフェッショナルです。"
  end

end

# 子クラス
class RailsMentor < Mentor
  #attr_accessor :name #クラス定義で継承できる変数ですので、同名の継承先のクラスには記載不要

  def initialize(name)
    self.name = name
  end

  # jobメソッドをオーバーライド
  def job
    puts "#{self.name} です。私はRubyとRailsでWebアプリケーションを作ります。"
  end
end

# インスタンスの生成と、変数への代入
kirameki = Mentor.new('煌木')
akaide = RailsMentor.new('赤出')


# インスタンスの使用
print kirameki.job
print akaide.job