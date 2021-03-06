require 'rails_helper'

describe Article do
  describe 'validations' do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe 'associations' do
    it { should have_many :comments }
  end

  describe 'max length title' do
    it { should validate_length_of(:title).is_at_most(140).with_long_message('140 characters is the maximum allowed') }
  end

  describe 'max length text' do
    it { should validate_length_of(:text).is_at_most(4000).with_long_message('4000 characters is the maximum allowed') }
  end


  describe '#subject' do
    it 'return the article title' do
      # создаем объект article хитрым способом
      article = create(:article, title: 'Lorem Insum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Insum'
    end
  end

  describe '#last_comment' do
    it 'return the last comment' do
      # создаем статью, но в этот раз с комментариями
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end