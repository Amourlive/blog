require 'rails_helper'

describe Article do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe 'associations' do
    it { should have_many :comments }
  end

  describe '#subject' do
    it 'return the article title' do
      # создаем объект article хитрым способом
      article = create(:article, title: 'Lorem Insum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Insum'
    end
  end
end