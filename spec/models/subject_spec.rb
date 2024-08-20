require "rails_helper"

RSpec.describe Subject, type: :model do
  context "When creating a subject" do
    let(:subject_instance) { build(:subject) }

    it "is vaild with all attributes" do
      expect(subject_instance).to be_valid
    end
  end
end
