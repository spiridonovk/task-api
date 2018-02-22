require 'rails_helper'

RSpec.describe Api::V1::TasksController, type: :request do
  include_examples 'Create data'

  describe 'GET /tasks/statuses' do
    before { get '/api/v1/tasks/statuses' }
    it 'return code 200' do
      expect(response).to have_http_status(200)
    end
    it 'response type is json' do
      expect(response.content_type).to eq('application/json')
    end
    it 'content' do
      expect(response.body).to eq(%w[
        done start
      ].to_json)
    end
  end
  describe 'GET /tasks/first_letter' do
    before { get '/api/v1/tasks/first_letter' }
    it 'return code 200' do
      expect(response).to have_http_status(200)
    end
    it 'response type is json' do
      expect(response.content_type).to eq('application/json')
    end
    it 'content' do
      expect(response.body).to eq([{
        id: 1,
        name: 'Report',
        project_name: 'New_year'
      },
                                   {
                                     id: 2,
                                     name: 'Search',
                                     project_name: 'New_year'
                                   }].to_json)
    end
  end

  describe 'GET /tasks/double' do
    before { get '/api/v1/tasks/double' }
    it 'return code 200' do
      expect(response).to have_http_status(200)
    end
    it 'response type is json' do
      expect(response.content_type).to eq('application/json')
    end
    it 'content' do
      expect(response.body).to eq([{
        id: 2,
        name: 'Search',
        project_name: 'New_year'
      },
                                   {
                                     id: 4,
                                     name: 'Search'

                                   }].to_json)
    end
  end
end
