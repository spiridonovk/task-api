require 'rails_helper'

RSpec.describe Api::V1::ProjectsController, type: :request do
  include_examples 'Create data'

  describe 'GET #index' do
    before { get '/api/v1/projects' }
    it 'return code 200' do
      expect(response).to have_http_status(200)
    end
    it 'response type is json' do
      expect(response.content_type).to eq('application/json')
    end
    it 'content' do
      expect(response.body).to eq([{
        id: 3,
        name: 'Event',
        task_size: 0
      },
                                   {
                                     id: 1,
                                     name: 'New_year',
                                     task_size: 2
                                   }, {
                                     id: 2,
                                     name: 'Party',
                                     task_size: 1
                                   }].to_json)
    end
  end

  describe 'GET #sort_by_tasks' do
    before { get '/api/v1/projects/sort_by_tasks' }
    it 'return code 200' do
      expect(response).to have_http_status(200)
    end
    it 'response type is json' do
      expect(response.content_type).to eq('application/json')
    end
    it 'content' do
      expect(response.body).to eq([{
        id: 1,
        name: 'New_year',
        task_size: 2
      }, {
        id: 2,
        name: 'Party',
        task_size: 1
      },
                                   { id: 3,
                                     name: 'Event',
                                     task_size: 0 }].to_json)
    end
  end

  describe 'GET #include' do
    before { get '/api/v1/projects/include' }
    it 'return code 200' do
      expect(response).to have_http_status(200)
    end
    it 'response type is json' do
      expect(response.content_type).to eq('application/json')
    end
    it 'content' do
      expect(response.body).to eq([{
        id: 1,
        name: 'New_year',
        task_size: 2
      }, {
        id: 2,
        name: 'Party',
        task_size: 1
      }].to_json)
    end
  end
end
