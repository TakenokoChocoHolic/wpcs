require 'spec_helper'

describe ContestsController do

  # TODO
  # check time
  describe 'GET /index' do

    it 'should respond failure' do
      get :index
      expect(response).not_to be_success
    end

    describe 'when contestant logged in' do

      include_examples 'login contestant'

      it 'should respond success' do
        get :index
        expect(response).to be_success
      end
    end
  end

  describe 'GET /show/:wupc' do

    before do
      @contest = build(:contest)
      @contest.save!
    end

    after do
      @contest.destroy
    end

    it 'should respond failure' do
      get :show, id: @contest
      expect(response).not_to be_success
    end

    describe 'when contestant logged in and attended the contest' do

      include_examples 'login contestant'

      before do
        contestant.attend(@contest)
      end

      it 'should respond success' do
        get :show, id: @contest
        expect(response).to be_success
      end

    end

  end

end
