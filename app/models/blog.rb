class Blog < ApplicationRecord
  has_many :entries, dependent: :destroy
  validates :title, presence: true
  validates :title, uniqueness: true
  scope :title_sarch, -> (title) { where('title like :title', title: "%#{title}%")}
  scope :notfound_scope, -> { where(title: "100000").first } # scopeは、戻り値がnilになった場合その条件を無かったことにする。
  def self.notfound_method # クラスメソッドで定義したこの子は、nilでもそのままnilを返す。
    where(title: "100000").first
  end
end
