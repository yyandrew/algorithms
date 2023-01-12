# frozen_string_literal: true

require_relative '../validate_brackets.rb'

RSpec.describe ValidateBracket do
  describe '#is_valid?' do
    it ')(}{ is false' do
      expect(ValidateBracket.new(')(}{').is_valid?).to be_falsy
    end

    it '(){} is true' do
      expect(ValidateBracket.new('(){}').is_valid?).to be_truthy
    end

    it '({()} is false' do
      expect(ValidateBracket.new('({()}').is_valid?).to be_falsy
    end

    it '({()}) is true' do
      expect(ValidateBracket.new('({()})').is_valid?).to be_truthy
    end

    it '}) is false' do
      expect(ValidateBracket.new('})').is_valid?).to be_falsy
    end
  end
end

