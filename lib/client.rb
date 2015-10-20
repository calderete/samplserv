require "httparty"
require "pry"

class SamplParty
  include HTTParty
  base_uri "http://localhost:4567"

  def better(options={})
    SamplParty.post("/better", :body => options)
  end

  def stop(options={})
    SamplParty.get("/stop", :body => options)
  end

  def after(options={})
  	SamplParty.post("/after", :body => options)
  end

  def faster(options={})
  	SamplParty.post("/faster", :body => options)
  end

  def doit(options={})
  	SamplParty.post("/doit", :body => options)
  end

  def harder(options={})
  	SamplParty.post("/harder", :body => options)
  end

  def hour(options={})
  	SamplParty.post("/hour", :body => options)
  end

  def makeit(options={})
  	SamplParty.post("/makeit", :body => options)
  end

  def morethan(options={})
  	SamplParty.post("/morethan", :body => options)
  end

  def never(options={})
  	SamplParty.post("/never", :body => options)
  end

  def our(options={})
  	SamplParty.post("/our", :body => options)
  end

  def over(options={})
  	SamplParty.post("/over", :body => options)
  end

  def stronger(options={})
  	SamplParty.post("/stronger", :body => options)
  end

  def workis(options={})
  	SamplParty.post("/workis", :body => options)
  end

  def beat
  	SamplParty.post("/beat")
  end

end




@party = SamplParty.new
def a
	@party.harder
end

def s 
	@party.better
end

def d
	@party.faster
end

def f
	@party.stronger
end

def g
	@party.workis
end

def h
	@party.over
end

binding.pry











