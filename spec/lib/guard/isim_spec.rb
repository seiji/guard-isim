require 'spec_helper'

describe Guard::Isim do
  let(:runner) {Guard::Isim::Runner}
  subject { Guard::Isim.new }

  describe "#initialize" do
  end

  describe "#stop" do
    it "quit the simulator" do
      runner.should_receive(:quit)
      subject.stop
    end
  end
  
  describe "#run_on_changes" do
    it "reload browser" do
      runner.should_receive(:reload)
      subject.run_on_changes(['foo'])
    end
  end
end
